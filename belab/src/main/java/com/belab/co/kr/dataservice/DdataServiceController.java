package com.belab.co.kr.dataservice;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/dataservice")
public class DdataServiceController {

    @GetMapping("/main")
    public String dataService() {
        return "/dataservice/main";
    }

    @GetMapping("/db")
    public String dbService() {
        return "/dataservice/db";
    }

    @GetMapping("/web")
    public String webService() {
        return "/dataservice/web";
    }

    @GetMapping("/was")
    public String wasService() {
        return "/dataservice/was";
    }

    @GetMapping("/dataAnalsis")
    public String dataAnalsisService() {
        return "/dataservice/dataAnalsis";
    }

    @GetMapping("/dataHub")
    public String dataHubService() {
        return "/dataservice/dataHubPlatform";
    }
}
