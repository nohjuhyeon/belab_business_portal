package com.belab.co.kr;

import io.github.cdimascio.dotenv.Dotenv;
import io.github.cdimascio.dotenv.Dotenv;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.autoconfigure.security.servlet.SecurityAutoConfiguration;
import org.springframework.context.annotation.ComponentScan;

@SpringBootApplication(exclude = {SecurityAutoConfiguration.class})
@ComponentScan(basePackages = {"com.belab.co.kr", "com.belab.co.kr.config"})
public class BelabApplication {

    public static void main(String[] args) {
        Dotenv dotenv = Dotenv.configure().directory("./src/main/resources/").load();  // .env 파일 경로를 명시적으로 지정

        System.setProperty("MAIL_ID", dotenv.get("MAIL_ID"));
        System.setProperty("MAIL_PWD", dotenv.get("MAIL_PWD"));
        System.setProperty("MONGO_ID", dotenv.get("MONGO_ID"));
        System.setProperty("MONGODB_PW", dotenv.get("MONGODB_PW"));
        System.setProperty("MONGODB_CLUSTER_URL", dotenv.get("MONGODB_CLUSTER_URL"));
        System.setProperty("MONGODB_NAME", dotenv.get("MONGODB_NAME"));


        SpringApplication.run(BelabApplication.class, args);
    }

}
