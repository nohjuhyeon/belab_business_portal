package com.belab.co.kr.notice.service;

import com.belab.co.kr.member.vo.MemberVO;
import com.belab.co.kr.notice.dao.BoardMapper;
import com.belab.co.kr.notice.service.BoardService;
import com.belab.co.kr.notice.vo.ContactBoardVO;

import jakarta.mail.internet.MimeMessage;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.stereotype.Service;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import java.util.List;

@Service
public class BoardServiceImpl implements BoardService {

    private static final Logger logger = LoggerFactory.getLogger(BoardServiceImpl.class);

    @Autowired
    private JavaMailSender mailSender; // JavaMailSender 주입

    @Autowired
    private BoardMapper boardMapper;


    private MemberVO member;

    public void setMember(MemberVO member) {
        this.member = member;
    }

    // 페이징된 게시글 목록 조회
    @Override
    public List<ContactBoardVO> getBoardList(int offset, int limit) {
        logger.info("Fetching boards with offset: {} and limit: {}", offset, limit);
        List<ContactBoardVO> boards = boardMapper.selectBoardList(offset, limit);

        // 각 게시글에 대해 uservo 필드를 채워주는 로직 추가
        for (ContactBoardVO board : boards) {
            Integer userId = board.getUser_id();  // 게시글에 대한 user_id를 가져옴
            MemberVO user = boardMapper.getUserById(userId);  // 사용자 정보를 가져옴
            board.setUservo(user);  // uservo 필드를 설정
        }

        logger.debug("Boards fetched: {}", boards);
        return boards;
    }

    // 전체 게시글 수 조회
    @Override
    public int getTotalBoardCount() {
        logger.info("Fetching total board count...");
        int totalBoardCount = boardMapper.selectTotalBoardCount();
        logger.debug("Total board count: {}", totalBoardCount);
        return totalBoardCount;
    }

    @Override
    public void sendEmail(String to, String subject, String content) {
        try {
            MimeMessage message = mailSender.createMimeMessage();
            MimeMessageHelper helper = new MimeMessageHelper(message, true, "UTF-8");

            helper.setFrom("sk.kim@belab.co.kr"); // 발신자 이메일 명시적으로 설정
            helper.setTo(to);
            helper.setSubject(subject);
            helper.setText(content, true); // HTML 콘텐츠 허용

            mailSender.send(message);
            logger.info("Email sent successfully to: {}", to);
        } catch (Exception e) {
            logger.error("Error while sending email: {}", e.getMessage(), e);
            throw new RuntimeException("Email sending failed.", e);
        }
    }
    @Override
    public ContactBoardVO getBoardById(int dashboard_id) {
        logger.info("Fetching board with ID: {}", dashboard_id);
        ContactBoardVO board = boardMapper.selectBoardById(dashboard_id);
        if (board == null) {
            logger.warn("Board with ID {} not found.", dashboard_id);
        } else {
            Integer userId = board.getUser_id();
            MemberVO user = boardMapper.getUserById(userId);
            board.setUservo(user);
            logger.debug("Board fetched: {}", board);
        }
        return board;
    }

    @Override
    public void createBoard(ContactBoardVO board) {
        logger.info("Creating new board: {}", board);

        try {
            if (member != null && member.getUsername() != null) {
                Integer userId = member.getUser_id();
                board.setUser_id(userId);
            } else {
                logger.warn("No logged-in user found.");
                throw new RuntimeException("No logged-in user.");
            }

            boardMapper.insertBoard(board);
            logger.info("Board created successfully.");

        } catch (Exception e) {
            logger.error("Error while creating board: {}", e.getMessage(), e);
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
            logger.error("Error while updating board: {}", e.getMessage(), e);
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
            logger.error("Error while deleting board: {}", e.getMessage(), e);
            throw e;
        }
    }
}