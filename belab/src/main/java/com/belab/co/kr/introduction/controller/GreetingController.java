package com.belab.co.kr.introduction.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class GreetingController {
    @GetMapping("/Greeting")
    public String greeting() {
        // views/introduction/greeting.jsp를 가리킴
        return "/introduction/greeting";
    }
}
