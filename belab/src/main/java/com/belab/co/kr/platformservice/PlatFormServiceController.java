package com.belab.co.kr.platformservice;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/platformservice")
public class PlatFormServiceController {

    @GetMapping("/main")
    public String mainService() {
        return "/platform/main";
    }

    @GetMapping("/msp")
    public String mspService() {
        return "/platform/msp";
    }

    @GetMapping("/hosting")
    public String dataService() {
        return "/platform/hosting";
    }

    @GetMapping("/kpaas")
    public String kpaasService() {
        return "/platform/kpaas";
    }


}
