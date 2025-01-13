package com.belab.co.kr.member.controller;

import com.belab.co.kr.member.service.MemberService;
import com.belab.co.kr.member.vo.MemberVO;
import jakarta.mail.MessagingException;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.bind.support.SessionStatus;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

@Controller
@RequestMapping("/member")  // 부모 URL 경로를 여기서 먼저 설정
@SessionAttributes("loggedInUser")
public class MemberController {
    Logger logger = LoggerFactory.getLogger(getClass());
    @Autowired
    private MemberService memberService;

    // 회원가입 페이지로 이동
    @RequestMapping(value = "/userjoin", method = RequestMethod.GET)
    public String signupForm() {
        return "/member/userjoin";  // views/member/signu
    }

    // 회원가입 처리
    @RequestMapping(value = "/userjoin", method = RequestMethod.POST)
    public String signup(MemberVO memberVO) {
        boolean isSuccess = memberService.signup(memberVO);
        if (isSuccess) {
            return "redirect:/member/login"; // 로그인 페이지로 리다이렉트
// 회원가입 성공 후 로그인 페이지로 이동
        }
        return "member/userjoin";  // 실패 시 다시 회원가입 페이지로 이동
    }

    // 로그인 페이지로 이동
    @RequestMapping(value = "/login", method = RequestMethod.GET)
    public String loginForm() {
        return "member/login";  // views/member/login.jsp로 이동
    }

    // 로그인 처리
// 로그인 처리
    @RequestMapping(value = "/login", method = RequestMethod.POST)
    public String login(MemberVO memberVO, HttpSession session, Model model,HttpServletRequest request) {
        // 로그인 처리: 이메일과 비밀번호로 사용자 정보 조회
        MemberVO loginMember = memberService.login(memberVO);

        // 로그인 성공 시
        if (loginMember != null) {
            // 로그인된 사용자 정보를 세션에 저장
            session.setAttribute("loggedInUser", loginMember);

            // 로그인 후 메인 페이지로 리다이렉트
            return "redirect:/main";
        }else{
            // 로그인 실패 시 error 페이지로 리다이렉트
            request.setAttribute("error", "로그인 실패: 이메일 또는 비밀번호가 잘못되었습니다.");
            return "redirect:/member/error";  // error 페이지로 이동
        }
    }

    /**
     * 로그아웃
     *
     * @param session
     * @return
     */

    /**
     * 로그아웃
     *
     * @param session
     * @return
     */
    @RequestMapping(value = "/logout", method = {RequestMethod.GET, RequestMethod.POST})
    public String logout(HttpSession session, HttpServletResponse response, SessionStatus sessionStatus) {
        // 로그아웃 시 로깅 추가
        System.out.println("로그아웃 요청 수신됨.");

        // @SessionAttributes로 관리되는 속성 제거
        sessionStatus.setComplete();

        // 세션 무효화
        session.invalidate();  // 세션 무효화
        System.out.println("세션 무효화 완료. 로그아웃 처리됨.");

        // 로그아웃 후 메인 페이지로 리다이렉트
        return "redirect:/";  // 로그아웃 후 홈 페이지로 리다이렉트
    }

    /***
     *  get 수정페이지
     * @param session
     * @return
     */

    @RequestMapping(value = "/modifyForm", method = RequestMethod.GET)
    public String editForm(HttpSession session) {
        MemberVO loggedInUser = (MemberVO) session.getAttribute("loggedInUser");
        if (loggedInUser != null) {
            return "/member/modifyForm";  // 회원 개인정보 수정 페이지로 이동
        }
        return "redirect:/member/login";  // 로그인 페이지로 리다이렉트
    }

    /**
     * 회원수정 기능
     *
     * @param memberVO
     * @param session
     * @return
     */
    @RequestMapping(value = "/modify", method = RequestMethod.POST)
    public String updateMember(MemberVO memberVO, HttpSession session, Model model) {
        // 회원 정보 갱신
        boolean isUpdated = memberService.updateMember(memberVO);

        if (isUpdated) {
            // 업데이트된 사용자 정보를 DB에서 다시 불러옵니다.
            MemberVO updatedUser = memberService.findMemberByEmail(memberVO.getEmail());

            // 갱신된 사용자 정보를 세션에 저장
            session.setAttribute("loggedInUser", updatedUser);

            // 갱신 후 마이페이지로 리다이렉트
            model.addAttribute("loggedInUser", updatedUser);  // 모델에 추가하여 새로 고침 시 반영됨
            // 갱신 후 마이페이지로 리다이렉트
            return "redirect:/mypage/intro";  // 수정된 이름을 마이페이지에서 반영
        } else {
            // 실패 시 오류 메시지 처리
            model.addAttribute("error", "회원 정보 수정에 실패했습니다.");
            return "redirect:/member/modifyForm";  // 수정 페이지로 돌아갑니다.
        }
    }

    @RequestMapping(value = "/validateForm", method = RequestMethod.GET)
    public String validateForm() {
        return "/member/validateForm";  // 비밀번호 입력 페이지로 이동
    }


    // 비밀번호 확인 API (비밀번호 유효성 검사)
    // 비밀번호 확인 후 /modifyForm으로 리다이렉트
    @RequestMapping(value = "/validatePassword", method = RequestMethod.POST)
    @ResponseBody
    public ResponseEntity<String> validatePassword(@RequestParam String password, HttpSession session) {
        MemberVO loggedInUser = (MemberVO) session.getAttribute("loggedInUser");

        // 비밀번호 검증
        boolean isPasswordValid = memberService.checkPassword(loggedInUser.getEmail(), password);

        if (isPasswordValid) {
            return ResponseEntity.ok("valid");  // 비밀번호가 맞으면 success를 반환

        } else {
            return ResponseEntity.status(400).body("invalid");  // 비밀번호가 틀리면 error 반환
        }
    }

    /**
     * 이메일 찾기
     *
     * @return
     */
    // 이메일 찾기
    @RequestMapping(value = "/findEmail", method = RequestMethod.GET)
    public String findEmailForm() {
        return "/member/findbyemail";
    }

    /**
     * email 찾기 기능
     *
     * @param username
     * @param hp
     * @return
     */

    @RequestMapping(value = "/findEmail", method = RequestMethod.POST)
    public String findEmail(@RequestParam String username, @RequestParam String hp, Model model) {
        // 이메일 찾기 서비스 호출
        String email = memberService.findEmailByUsernameAndHp(username, hp);

        if (email != null) {
            // 이메일 찾았으면 모델에 이메일을 추가
            model.addAttribute("email", email);
            return "/member/findEmailResult";  // 이메일 찾기 결과를 보여줄 JSP 페이지
        } else {
            // 회원 정보가 일치하지 않으면 오류 메시지
            model.addAttribute("error", "회원 정보가 일치하지 않습니다.");
            return "/member/findbyemail";  // 다시 폼 페이지로 돌아감
        }
    }

    // 비밀번호 찾기 페이지로 이동
    @RequestMapping(value = "/findPassword", method = RequestMethod.GET)
    public String findPasswordForm() {
        return "/member/findibypassword";  // 비밀번호 찾기 폼으로 이동
    }

    /***
     * 비밀번호 찾기 기능 처리
     * @param email 사용자 이메일
     * @return 처리 결과 메시지
     */
    @RequestMapping(value = "/findPassword", method = RequestMethod.POST)
    @ResponseBody
    public ResponseEntity<String> findPassword(@RequestParam String email) {
        try {
            // 새로운 임시 비밀번호 생성
            String newPassword = memberService.generateTempPassword(email);

            // 새 비밀번호를 데이터베이스에 업데이트
            boolean isUpdated = memberService.updatePasswordByEmail(email, newPassword);

            if (isUpdated) {
                // 이메일로 새 비밀번호 전송
                memberService.sendPasswordToEmail(email, newPassword);
                return ResponseEntity.ok("새로운 비밀번호가 이메일로 전송되었습니다.");
            } else {
                return ResponseEntity.status(400).body("이메일에 해당하는 회원이 존재하지 않습니다.");
            }
        } catch (MessagingException e) {
            // 이메일 전송 중 오류 발생
            return ResponseEntity.status(500).body("비밀번호 전송 중 오류가 발생했습니다.");
        }
    }

    @RequestMapping(value = "/delete", method = RequestMethod.POST)
    public String deleteMember(HttpSession session, SessionStatus sessionStatus, Model model) {
        MemberVO loggedInUser = (MemberVO) session.getAttribute("loggedInUser");

        if (loggedInUser != null) {
            String email = loggedInUser.getEmail();

            // 회원 삭제 처리
            boolean isDeleted = memberService.deleteMember(email);

            if (isDeleted) {
                // 세션 종료
                sessionStatus.setComplete();  // 세션 초기화

                // 탈퇴 완료 메시지 전달
                model.addAttribute("message", "회원탈퇴가 완료되었습니다.");
                return "redirect:/";  // 홈 페이지로 리다이렉트
            } else {
                // 삭제 실패 시 메시지 전달
                model.addAttribute("error", "회원 탈퇴에 실패했습니다.");
                return "redirect:/mypage/intro";  // 마이페이지로 리다이렉트
            }
        }

        return "redirect:/member/login";  // 로그인되지 않은 경우 로그인 페이지로 리다이렉트
    }
}