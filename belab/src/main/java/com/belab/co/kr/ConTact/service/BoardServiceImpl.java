package com.belab.co.kr.ConTact.service;

import com.belab.co.kr.ConTact.dao.BoardMapper;
import com.belab.co.kr.ConTact.vo.ContactBoardVO;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class BoardServiceImpl implements BoardService {

    private static final Logger logger = LoggerFactory.getLogger(BoardServiceImpl.class);

    @Autowired
    private BoardMapper boardMapper;

    @Override
    public List<ContactBoardVO> getAllBoards() {
        logger.info("Fetching all boards from the database...");
        List<ContactBoardVO> boards = boardMapper.selectAllBoards();
        logger.debug("Boards fetched: {}", boards);
        return boards;
    }

    @Override
    public ContactBoardVO getBoardById(int dashboard_id) {
        logger.info("Fetching board with ID: {}", dashboard_id);
        ContactBoardVO board = boardMapper.selectBoardById(dashboard_id);
        if (board == null) {
            logger.warn("Board with ID {} not found.", dashboard_id);
        } else {
            logger.debug("Board fetched: {}", board);
        }
        return board;
    }

    @Override
    public void createBoard(ContactBoardVO board) {
        logger.info("Creating new board: {}", board);
        try {
            boardMapper.insertBoard(board);
            logger.info("Board created successfully.");
        } catch (Exception e) {
            logger.error("Error while creating board: {}", e.getMessage());
            throw e;
        }
    }

    @Override
    public void updateBoard(ContactBoardVO board) {
        logger.info("Updating board with ID: {}", board.getDashboard_id());
        try {
            int rowsUpdated = boardMapper.updateBoard(board);
            if (rowsUpdated > 0) {
                logger.info("Board updated successfully.");
            } else {
                logger.warn("No board found with ID: {}", board.getDashboard_id());
            }
        } catch (Exception e) {
            logger.error("Error while updating board: {}", e.getMessage());
            throw e;
        }
    }

    @Override
    public void deleteBoard(int dashboard_id) {
        logger.info("Deleting board with ID: {}", dashboard_id);
        try {
            int rowsDeleted = boardMapper.deleteBoard(dashboard_id);
            if (rowsDeleted > 0) {
                logger.info("Board deleted successfully.");
            } else {
                logger.warn("No board found with ID: {}", dashboard_id);
            }
        } catch (Exception e) {
            logger.error("Error while deleting board: {}", e.getMessage());
            throw e;
        }
    }
}
