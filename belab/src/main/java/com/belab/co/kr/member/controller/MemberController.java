package com.belab.co.kr.member.controller;
import com.belab.co.kr.member.service.MemberService;
import com.belab.co.kr.member.vo.MemberVO;
import jakarta.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

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
        MemberVO loginMember = memberService.login(memberVO);
        if (loginMember != null) {
            session.setAttribute("loggedInUser", loginMember);  // 로그인된 사용자 세션에 저장
            return "redirect:/main";  // 로그인 성공 후 메인 페이지로 이동
        }
        return "member/login";  // 실패 시 다시 로그인 페이지로 이동
    }

    // 로그아웃 처리
    @RequestMapping(value = "/logout", method = RequestMethod.GET)
    public String logout(HttpSession session) {
        session.invalidate();  // 세션 무효화
        return "redirect:/";  // 로그아웃 후 메인 페이지로 이동
    }
}