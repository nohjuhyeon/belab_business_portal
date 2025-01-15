package com.belab.co.kr.ConTact.dao;

import com.belab.co.kr.ConTact.vo.ContactBoardVO;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import java.util.List;

@Mapper
public interface BoardMapper {

    // 게시글 목록 조회
    List<ContactBoardVO> selectAllBoards();
    Integer getUserIdByUsername(@Param("username") String username);
    // 게시글 조회 (ID로)
    ContactBoardVO selectBoardById(int dashboard_id);

    // 게시글 생성
    @Insert("INSERT INTO contact_info_board (user_id, title, content, created_at, updated_at) " +
            "VALUES (#{user_id}, #{title}, #{content}, NOW(), NOW())")
    void insertBoard(ContactBoardVO board);

    // 게시글 수정
    int updateBoard(ContactBoardVO board);

    // 게시글 삭제
    int deleteBoard(int dashboard_id);
}
