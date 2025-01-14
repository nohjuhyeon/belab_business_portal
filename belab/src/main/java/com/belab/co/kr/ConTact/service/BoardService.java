package com.belab.co.kr.ConTact.service;

import com.belab.co.kr.ConTact.vo.ContactBoardVO;

import java.util.List;

public interface BoardService {
    List<ContactBoardVO> getAllBoards();
    ContactBoardVO getBoardById(int dashboard_id);
    void createBoard(ContactBoardVO board);
    void updateBoard(ContactBoardVO board);
    void deleteBoard(int dashboard_id);
}
