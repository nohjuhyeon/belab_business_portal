package com.belab.co.kr.ConTact.dao;

import com.belab.co.kr.ConTact.vo.ContactBoardVO;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

@Mapper
public interface BoardMapper {

    // 게시글 목록 조회
    List<ContactBoardVO> selectAllBoards();

    // 게시글 조회 (ID로)
    ContactBoardVO selectBoardById(int dashboard_id);

    // 게시글 생성
    void insertBoard(ContactBoardVO board);

    // 게시글 수정
    int updateBoard(ContactBoardVO board);

    // 게시글 삭제
    int deleteBoard(int dashboard_id);
}
