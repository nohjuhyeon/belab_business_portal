package com.belab.co.kr.member.service;

import com.belab.co.kr.member.vo.MemberVO;
import jakarta.mail.MessagingException;

public interface MemberService {

    // 회원가입
    boolean signup(MemberVO memberVO);

    // 사용자 이름과 휴대폰 번호로 이메일 찾기 (이메일만 반환)
    String findEmailByUsernameAndHp(String username, String hp);

    // 비밀번호 찾기 (임시 비밀번호 생성)
    String generateTempPassword(String email);

    // 비밀번호 변경
    boolean updatePasswordByEmail(String email, String newPassword);

    // 개인정보 수정
    boolean updateMember(MemberVO memberVO);

    // 로그인
    MemberVO login(MemberVO memberVO);

    // 이메일로 회원 정보 조회
    MemberVO findMemberByEmail(String email);


    // 이메일로 유저 이름 조회
    MemberVO findUserNameByEmail(String email);

    // 비밀번호 검증
    boolean checkPassword(String email, String inputPassword);

    // 비밀번호 전송
    void sendPasswordToEmail(String email, String newPassword) throws MessagingException;

    // 회원삭제
    boolean deleteMember(String email);  // 회원 삭제 메소드

    boolean isPasswordCorrect(String currentUsername, String password);
}
