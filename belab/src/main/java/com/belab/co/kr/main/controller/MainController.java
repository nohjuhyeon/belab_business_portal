package com.belab.co.kr.main.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
@Controller
public class MainController {

    // 기본 메인 페이지 (루트 경로)
    @GetMapping("/")
    public String index() {
        return "main"; // main.jsp를 가리킵니다.
    }

    // /main 경로를 처리하는 메서드 추가
    @GetMapping("/main")
    public String mainPage() {
        return "main"; // main.jsp를 가리킵니다.
    }

    // /test 경로를 처리하는 메서드 추가
    @GetMapping("/test")
    public String testPage() {
        return "test"; // test.jsp를 가리킵니다.
    }


    @GetMapping("/errorpage")
    public String error() {
        return "errorPage"; // errorPage.jsp를 가리킵니다.
    }

}