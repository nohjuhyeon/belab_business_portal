package com.belab.co.kr.config;

import com.belab.co.kr.interceptor.RedirectURLInterceptor;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.InterceptorRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;

@Configuration
public class WebConfig implements WebMvcConfigurer {

    @Autowired
    private RedirectURLInterceptor redirectURLInterceptor;

    @Override
    public void addInterceptors(InterceptorRegistry registry) {
        registry.addInterceptor(redirectURLInterceptor)
                .addPathPatterns("/**") // 모든 요청에 대해 인터셉터 적용
                .excludePathPatterns(
                        "/administrator/login",        // 로그인 페이지 제외
                        "/administrator/logout",       // 로그아웃 페이지 제외
                        "/static/**",           // 정적 리소스 제외
                        "/resources/**",        // 리소스 제외
                        "/css/**",              // CSS 파일 제외
                        "/js/**",               // JS 파일 제외
                        "/icons/**",               // JS 파일 제외
                        "/error",               // JS 파일 제외
                        "/images/**"            // 이미지 파일 제외
                );
    }
}
