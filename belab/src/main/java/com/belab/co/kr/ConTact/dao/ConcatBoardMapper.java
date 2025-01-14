package com.belab.co.kr.ConTact.dao;

import com.belab.co.kr.ConTact.vo.ContactBoardVO;

import java.util.List;

public interface ConcatBoardMapper {
    // 모든 게시글 조회
    List<ContactBoardVO> selectAllBoards();  // selectAllBoards 메서드는 ContactBoardVO 객체 리스트를 반환

    // 특정 게시글 조회
    ContactBoardVO selectBoardById(int dashboardId);  // 특정 게시글 조회

    // 게시글 등록
    void insertBoard(ContactBoardVO board);  // 게시글 등록

    // 게시글 수정
    void updateBoard(ContactBoardVO board);  // 게시글 수정

    // 게시글 삭제
    void deleteBoard(int dashboardId);  // 게시글 삭제
}
