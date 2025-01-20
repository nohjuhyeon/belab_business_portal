package com.belab.co.kr.admin.member.service;

import com.belab.co.kr.admin.member.dao.AdminMapper;
import com.belab.co.kr.member.vo.MemberVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
public class AdminServiceImpl implements AdminService {

    @Autowired
    private AdminMapper adminMapper;

    @Override
    public List<MemberVO> getAllMembers() {
        return adminMapper.getAllMembers();
    }

    @Override
    public List<MemberVO> getAllUsersExceptLoggedIn(String loggedInUserId) {
        return adminMapper.findAllUsersExceptLoggedIn(loggedInUserId);
    }
    @Override
    public MemberVO getMemberById(String userId) {
        return adminMapper.getMemberById(userId);
    }

    @Override
    public boolean updateMember(MemberVO memberVO) {
        int rowsAffected = adminMapper.updateMember(memberVO);
        return rowsAffected > 0;
    }

    @Override
    public boolean deleteMember(String email) {
        int rowsAffected = adminMapper.deleteMemberByEmail(email);
        return rowsAffected > 0;
    }

    @Override
    public boolean deleteMemberById(String userId) {
        int rowsAffected = adminMapper.deleteMemberById(userId);
        return rowsAffected > 0;
    }
}
