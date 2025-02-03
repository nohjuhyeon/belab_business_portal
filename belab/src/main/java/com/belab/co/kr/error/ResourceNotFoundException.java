package com.belab.co.kr.error;

// ResourceNotFoundException 예외 클래스 정의
public class ResourceNotFoundException extends RuntimeException {

    // 기본 생성자
    public ResourceNotFoundException(String message) {
        super(message);
    }

    // 원인 예외를 포함한 생성자
    public ResourceNotFoundException(String message, Throwable cause) {
        super(message, cause);
    }
}
