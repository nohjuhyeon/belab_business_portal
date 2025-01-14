package com.belab.co.kr.ConTact.service;

import com.belab.co.kr.ConTact.vo.ContactBoardVO;
import java.util.List;

public interface BoardService {

    // 모든 게시글 조회
    List<ContactBoardVO> getAllBoards();

    // 특정 게시글 조회
    ContactBoardVO getBoardById(int dashboardId);

    // 게시글 등록
    void createBoard(ContactBoardVO board);

    // 게시글 수정
    void updateBoard(ContactBoardVO board);

    // 게시글 삭제
    void deleteBoard(int dashboardId);
}
