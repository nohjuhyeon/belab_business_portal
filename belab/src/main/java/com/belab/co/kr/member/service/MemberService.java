package com.belab.co.kr.member.service;

import com.belab.co.kr.member.vo.MemberVO;

public interface MemberService {

    // 회원가입
    boolean signup(MemberVO memberVO);

    // 개인정보 수정
    boolean updateMember(MemberVO memberVO);

    // 로그인
    MemberVO login(MemberVO memberVO);

    // 이메일로 회원 정보 조회
    MemberVO findMemberByEmail(String email);

    // 비밀번호 검증
    boolean checkPassword(String email, String inputPassword);
}
