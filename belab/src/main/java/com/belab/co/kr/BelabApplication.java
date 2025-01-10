package com.belab.co.kr;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.autoconfigure.security.servlet.SecurityAutoConfiguration;
import org.springframework.context.annotation.ComponentScan;

@SpringBootApplication(exclude = {SecurityAutoConfiguration.class})
@ComponentScan(basePackages = {"com.belab.co.kr", "com.belab.co.kr.config"})
public class BelabApplication {

    public static void main(String[] args) {
        SpringApplication.run(BelabApplication.class, args);
    }

}
