package com.belab.co.kr.interceptor;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import org.springframework.stereotype.Component;
import org.springframework.web.servlet.HandlerInterceptor;

@Component
public class RedirectURLInterceptor implements HandlerInterceptor {

    @Override
    public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) throws Exception {
        // 현재 요청 URL 가져오기
        String currentURL = request.getRequestURI();

        // 쿼리 파라미터 포함 (필요 시)
        String queryString = request.getQueryString();
        if (queryString != null) {
            currentURL += "?" + queryString;
        }

        // 현재 URL을 세션에 저장 (로그인 페이지는 제외)
        if (!currentURL.contains("/member/login")) {
            request.getSession().setAttribute("redirectURL", currentURL);
        }

        return true; // 계속 요청 처리
    }
}
