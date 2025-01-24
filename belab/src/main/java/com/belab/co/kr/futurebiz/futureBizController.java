package com.belab.co.kr.futurebiz;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/futurebiz")
public class futureBizController {

    @GetMapping("/main")
    public String mainService() {
        return "/futurebiz/main";
    }

    @GetMapping("/belog")
    public String belogService() {
        return "/futurebiz/belog";
    }

    @GetMapping("/bemon")
    public String bemonService() {
        return "/futurebiz/bemon";
    }

    @GetMapping("/bepet")
    public String bepetService() {
        return "/futurebiz/bepet";
    }

    @GetMapping("/begreen")
    public String begreenService() {
        return "/futurebiz/begreen";
    }

    @GetMapping("/beschool")
    public String beschoolService() {
        return "/futurebiz/beschool";
    }

    @GetMapping("/beyota")
    public String beyotaService() {
        return "/futurebiz/beyota";
    }

    @GetMapping("/becare")
    public String becareService() {
        return "/futurebiz/becare";
    }

}