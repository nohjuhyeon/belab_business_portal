package com.belab.co.kr.admin.member.service;

import com.belab.co.kr.member.vo.MemberVO;

import java.util.List;

public interface AdminService {

    // 회원 목록 조회
    List<MemberVO> getAllMembers();

    List<MemberVO> getAllUsersExceptLoggedIn(String loggedInUserId);
    // 특정 회원 조회
    MemberVO getMemberById(String userId);

    // 회원 정보 수정
    boolean updateMember(MemberVO memberVO);

    // 회원 삭제 by email
    boolean deleteMember(String email);

    // 회원 삭제 by user_id
    boolean deleteMemberById(String userId);
}
