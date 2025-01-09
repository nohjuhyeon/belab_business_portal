package com.belab.co.kr.member.service;

import com.belab.co.kr.member.dao.MemberMapper;
import com.belab.co.kr.member.vo.MemberVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.UUID;

@Service
public class MemberServiceImpl implements MemberService {

    @Autowired
    private MemberMapper memberMapper;

    @Override
    public boolean signup(MemberVO memberVO) {
        // 이메일 중복 체크
        MemberVO existingMember = memberMapper.findMemberByEmail(memberVO.getEmail());
        if (existingMember != null) {
            // 이미 이메일이 존재하는 경우
            return false;  // 중복된 이메일이 있을 경우 가입 실패
        }

        // 사용자 ID 설정
        memberVO.setUserId(UUID.randomUUID().toString()); // UUID로 user_id 생성

        // 사용자 이름 설정: 만약 사용자 이름이 null이라면 기본값으로 설정
        if (memberVO.getUsername() == null || memberVO.getUsername().isEmpty()) {
            memberVO.setUsername("defaultUsername"); // 기본 사용자 이름 설정
        }

        // 회원가입 처리
        memberMapper.insertMember(memberVO);
        return true;  // 회원가입 성공
    }

    @Override
    public MemberVO login(MemberVO memberVO) {
        // 로그인 처리: 이메일과 비밀번호로 사용자 정보 조회
        return memberMapper.loginMember(memberVO.getEmail(), memberVO.getPassword());
    }
}
