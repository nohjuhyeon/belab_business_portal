//package com.belab.co.kr.error;
//
//import com.belab.co.kr.error.ResourceNotFoundException;
//import org.springframework.http.HttpStatus;
//import org.springframework.ui.Model;
//import org.springframework.web.bind.annotation.ControllerAdvice;
//import org.springframework.web.bind.annotation.ExceptionHandler;
//import org.springframework.web.bind.annotation.ResponseStatus;
//
//@ControllerAdvice
//public class GlobalExceptionHandler {
//
//    // 일반적인 예외 처리 (500 - INTERNAL_SERVER_ERROR)
//    @ExceptionHandler(Exception.class)
//    @ResponseStatus(HttpStatus.INTERNAL_SERVER_ERROR)
//    public String handleException(Exception e, Model model) {
//        model.addAttribute("error", e.getMessage());
//        return "/error/errorPage";  // error.html 파일로 전달
//    }
//
//    // ResourceNotFoundException 예외 처리 (404 - NOT_FOUND)
//    @ExceptionHandler(ResourceNotFoundException.class)
//    @ResponseStatus(HttpStatus.NOT_FOUND)
//    public String handleResourceNotFound(ResourceNotFoundException e, Model model) {
//        model.addAttribute("error", "리소스를 찾을 수 없습니다.");
//        return "/error/errorPage";  // error.html 파일로 전달
//    }
//
//    // 서버 오류 처리 (500 - INTERNAL_SERVER_ERROR) - 예외 타입을 좀 더 구체적으로 변경
//    @ExceptionHandler(RuntimeException.class) // 예외 타입을 좀 더 구체적으로 변경
//    @ResponseStatus(HttpStatus.INTERNAL_SERVER_ERROR)
//    public String handleServerError(RuntimeException e, Model model) {
//        model.addAttribute("error", "서버 오류가 발생했습니다.");
//        return "/error/errorPage";  // error.html 파일로 전달
//    }
//}
