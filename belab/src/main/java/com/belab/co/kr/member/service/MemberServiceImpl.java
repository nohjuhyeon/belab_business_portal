package com.belab.co.kr.member.service;
import com.belab.co.kr.member.dao.MemberMapper;
import com.belab.co.kr.member.vo.MemberVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.concurrent.atomic.AtomicInteger;

@Service
public class MemberServiceImpl implements MemberService {

    @Autowired
    private MemberMapper memberMapper;

    private static final AtomicInteger userIdGenerator = new AtomicInteger(1); // ID 자동 증가

    @Override
    public boolean signup(MemberVO memberVO) {
        // 입력값 유효성 검증
        if (memberVO.getEmail() == null || memberVO.getEmail().isEmpty()) {
            throw new IllegalArgumentException("이메일은 필수 입력값입니다.");
        }

        if (memberVO.getPassword() == null || memberVO.getPassword().isEmpty()) {
            throw new IllegalArgumentException("비밀번호는 필수 입력값입니다.");
        }

        if (memberVO.getUsername() == null || memberVO.getUsername().isEmpty()) {
            throw new IllegalArgumentException("사용자 이름은 필수 입력값입니다.");
        }

        // 이메일 중복 체크
        MemberVO existingMember = memberMapper.findMemberByEmail(memberVO.getEmail());
        if (existingMember != null) {
            return false; // 중복된 이메일이 있을 경우 가입 실패
        }

        // 사용자 ID 설정 (자동 증가)
        memberVO.setUserId(userIdGenerator.getAndIncrement());

        // 회원가입 처리
        memberMapper.insertMember(memberVO);
        return true; // 회원가입 성공
    }
    @Override
    public MemberVO login(MemberVO memberVO) {
        // 로그인 처리: 이메일과 비밀번호로 사용자 정보 조회
        return memberMapper.loginMember(memberVO.getEmail(), memberVO.getPassword());
    }
}
