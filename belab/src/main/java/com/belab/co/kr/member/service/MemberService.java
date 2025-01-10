package com.belab.co.kr.member.service;

import com.belab.co.kr.member.vo.MemberVO;

public interface MemberService {

    // 회원가입
    boolean signup(MemberVO memberVO);

    // 로그인
    MemberVO login(MemberVO memberVO);
}