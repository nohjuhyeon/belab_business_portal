package com.belab.co.kr.ConTact.service;

import com.belab.co.kr.ConTact.vo.ContactBoardVO;

import java.util.List;

public interface BoardService {

    List<ContactBoardVO> getBoardList(int offset, int limit);  // 페이징된 게시글 목록을 가져오는 메서드 추가
    int getTotalBoardCount();  // 전체 게시글 수를 가져오는 메서드 추가

    ContactBoardVO getBoardById(int dashboard_id);
    void createBoard(ContactBoardVO board);
    void updateBoard(ContactBoardVO board);
    void deleteBoard(int dashboard_id);

    // 사용자 이름으로 user_id를 조회하는 메서드 추가
}
