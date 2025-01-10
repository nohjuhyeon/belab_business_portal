package com.belab.co.kr.member.controller;
import com.belab.co.kr.member.service.MemberService;
import com.belab.co.kr.member.vo.MemberVO;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import org.apache.logging.log4j.Logger;
import org.mybatis.logging.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.bind.support.SessionStatus;
import org.springframework.web.servlet.ModelAndView;


@Controller
@RequestMapping("/member")  // 부모 URL 경로를 여기서 먼저 설정
@SessionAttributes("loggedInUser")
public class MemberController {

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
    @RequestMapping(value = "/login", method = RequestMethod.POST)
    public String login(MemberVO memberVO, HttpSession session) {
        // 로그인 처리: 이메일과 비밀번호로 사용자 정보 조회
        MemberVO loginMember = memberService.login(memberVO);

        // 로그인 성공 시
        if (loginMember != null) {
            // 로그인된 사용자 정보를 세션에 저장
            session.setAttribute("loggedInUser", loginMember);

            // 로그인 후 메인 페이지로 리다이렉트
            return "redirect:/main";
        }

        // 로그인 실패 시 로그인 페이지로 돌아가기
        return "redirect:/member/login?error=true";  // 로그인 실패 시 에러 파라미터를 추가하여 다시 로그인 페이지로 이동
    }

    /**
     * 로그아웃
     *
     * @param session
     * @return
     */

//    @RequestMapping(value = "/logout", method = {RequestMethod.GET, RequestMethod.POST})
//    public String logout(HttpSession session) {
//        // 로그아웃 시 로깅 추가
//        System.out.println("로그아웃 요청 수신됨.");
//
//        // 세션 무효화 전에 세션 속성을 확인
//        if (session.getAttribute("loggedInUser") != null) {
//            System.out.println("세션에 loggedInUser가 남아있습니다.");
//        } else {
//            System.out.println("세션에서 loggedInUser가 제거되었습니다.");
//        }
//
//        session.invalidate();  // 세션 무효화
//        System.out.println("세션 무효화 완료. 로그아웃 처리됨.");
//
//        return "redirect:/";  // 로그아웃 후 메인 페이지로 리다이렉트
//    }

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
}