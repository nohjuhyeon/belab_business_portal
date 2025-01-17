package com.belab.co.kr.contentservice;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/contentservice")
public class ConTentServiceController {

    @GetMapping("/main")
    public String mainService() {
        return "/content/main";
    }

    @GetMapping("/belog")
    public String belogService() {
        return "/content/belog";
    }

    @GetMapping("/bemon")
    public String bemonService() {
        return "/content/bemon";
    }

    @GetMapping("/bepet")
    public String bepetService() {
        return "/content/bepet";
    }

}