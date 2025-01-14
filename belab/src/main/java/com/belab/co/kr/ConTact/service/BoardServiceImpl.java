package com.belab.co.kr.ConTact.service;

import com.belab.co.kr.ConTact.dao.ConcatBoardMapper;
import com.belab.co.kr.ConTact.vo.ContactBoardVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class BoardServiceImpl implements BoardService {

    @Autowired
    private ConcatBoardMapper boardMapper;

    // 모든 게시글 조회
    @Override
    public List<ContactBoardVO> getAllBoards() {
        return boardMapper.selectAllBoards();
    }

    // 특정 게시글 조회
    @Override
    public ContactBoardVO getBoardById(int dashboardId) {
        return boardMapper.selectBoardById(dashboardId);
    }

    // 게시글 등록
    @Override
    public void createBoard(ContactBoardVO board) {
        boardMapper.insertBoard(board);
    }

    // 게시글 수정
    @Override
    public void updateBoard(ContactBoardVO board) {
        boardMapper.updateBoard(board);
    }

    // 게시글 삭제
    @Override
    public void deleteBoard(int dashboardId) {
        boardMapper.deleteBoard(dashboardId);
    }
}
