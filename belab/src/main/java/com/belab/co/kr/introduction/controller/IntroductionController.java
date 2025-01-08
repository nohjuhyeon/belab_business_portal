package com.belab.co.kr.introduction.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@Controller
public class IntroductionController {
    @GetMapping("/Directions")
    public String directions() {
        // views/introduction/directions.jsp를 가리킴
        return "/introduction/directions";
    }

}