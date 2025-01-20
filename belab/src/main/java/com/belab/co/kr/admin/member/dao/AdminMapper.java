package com.belab.co.kr.admin.member.dao;

import com.belab.co.kr.member.vo.MemberVO;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import java.util.List;

@Mapper
public interface AdminMapper {
    List<MemberVO> findAllUsersExceptLoggedIn(@Param("loggedInUserId") String loggedInUserId);
    // 모든 회원 목록 조회
    List<MemberVO> getAllMembers();

    // 특정 회원 조회
    MemberVO getMemberById(@Param("user_id") String userId);

    // 회원 정보 수정
    int updateMember(MemberVO memberVO);

    // 회원 삭제 by email
    int deleteMemberByEmail(@Param("email") String email);

    // 회원 삭제 by user_id
    int deleteMemberById(@Param("user_id") String userId);
}
