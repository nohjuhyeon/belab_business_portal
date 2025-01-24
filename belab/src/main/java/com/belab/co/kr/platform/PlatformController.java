package com.belab.co.kr.platform;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/platform")
public class PlatformController {

    @GetMapping("/main")
    public String platformService() {
        return "/platform/main";
    }

    @GetMapping("/data")
    public String dataService() {
        return "/platform/data";
    }

    @GetMapping("/ai")
    public String aiService() {
        return "/platform/ai";
    }

    @GetMapping("/cloud")
    public String cloudService() {
        return "/platform/cloud";
    }

}
