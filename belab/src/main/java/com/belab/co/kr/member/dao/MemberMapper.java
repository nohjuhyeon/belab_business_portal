package com.belab.co.kr.member.dao;

import com.belab.co.kr.member.vo.MemberVO;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

@Mapper
public interface MemberMapper {
    // 회원가입
    void insertMember(MemberVO member);

    // 이메일로 사용자 조회
    MemberVO findMemberByEmail(String email);

    // 로그인
    MemberVO loginMember(@Param("email") String email, @Param("password") String password);  // @Param 추가

    int updateMember(MemberVO memberVO);
}
