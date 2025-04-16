package com.belab.co.kr.mypage.controller;

import com.belab.co.kr.member.vo.MemberVO;
import jakarta.servlet.http.HttpSession;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/mypage")
public class MyPageController {

    @RequestMapping(value = "/intro")
    public String intro(HttpSession session, Model model) {
        // 세션에서 로그인된 사용자 정보 가져오기
        MemberVO loggedInUser = (MemberVO) session.getAttribute("loggedInUser");
        if (loggedInUser != null) {
            // 사용자 이름을 모델에 추가
            model.addAttribute("username", loggedInUser.getUsername());
            return "/mypage/mypage_intro";
        }
        return "redirect:/administrator/login"; // 로그인되지 않은 경우 로그인 페이지로 리다이렉트
    }
}
