package com.belab.co.kr.notice.service;

import com.belab.co.kr.files.vo.ReferenceFileInfoVO;
import com.belab.co.kr.member.vo.MemberVO;
import com.belab.co.kr.notice.dao.BoardMapper;
import com.belab.co.kr.notice.service.BoardService;
import com.belab.co.kr.notice.vo.ContactBoardVO;
import jakarta.mail.internet.MimeMessage;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.io.File;
import java.util.List;

@Service
public class BoardServiceImpl implements BoardService {

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
        System.out.println("Fetching boards with offset: " + offset + " and limit: " + limit);
        List<ContactBoardVO> boards = boardMapper.selectBoardList(offset, limit);

        // 각 게시글에 대해 uservo 필드를 채워주는 로직 추가
        for (ContactBoardVO board : boards) {
            Integer userId = board.getUser_id(); // 게시글에 대한 user_id를 가져옴
            MemberVO user = boardMapper.getUserById(userId); // 사용자 정보를 가져옴
            board.setUservo(user); // uservo 필드를 설정
        }

        System.out.println("Boards fetched: " + boards);
        return boards;
    }

    // 전체 게시글 수 조회
    @Override
    public int getTotalBoardCount() {
        System.out.println("Fetching total board count...");
        int totalBoardCount = boardMapper.selectTotalBoardCount();
        System.out.println("Total board count: " + totalBoardCount);
        return totalBoardCount;
    }
    @Override
    public void sendEmail(String to, String subject, String content) {
        try {
            // MimeMessage 객체 생성
            MimeMessage message = mailSender.createMimeMessage();

            // MimeMessageHelper로 메시지 설정
            MimeMessageHelper helper = new MimeMessageHelper(message, true, "UTF-8");

            // 발신자 이메일 명시적으로 설정
            helper.setFrom("sk.kim@belab.co.kr");
            helper.setTo(to);
            helper.setSubject(subject);
            helper.setText(content, true); // HTML 콘텐츠 허용

            // 이메일 발송
            mailSender.send(message);

            // 발송 완료 로그
            System.out.println("이메일 보내짐. " + to);
        } catch (Exception e) {
            // 에러 로그 출력
            System.out.println("Error while sending email: " + e.getMessage());
            e.printStackTrace();
            throw new RuntimeException("Email sending failed.", e);
        }
    }
    @Override
    public ContactBoardVO getBoardById(int dashboard_id) {
        System.out.println("Fetching board with ID: " + dashboard_id);
        ContactBoardVO board = boardMapper.selectBoardById(dashboard_id);
        if (board == null) {
            System.out.println("Board with ID " + dashboard_id + " not found.");
        } else {
            Integer userId = board.getUser_id();
            MemberVO user = boardMapper.getUserById(userId);
            board.setUservo(user);
            System.out.println("Board fetched: " + board);
        }
        return board;
    }

    @Transactional
    @Override
    public void createBoard(ContactBoardVO board) {

        try {
            // Board 유효성 검증
            if (board == null || board.getTitle() == null || board.getTitle().isEmpty()) {
                throw new IllegalArgumentException("Invalid board data: Title is required.");
            }

            // 사용자 인증 확인
            if (member == null) {
                throw new RuntimeException("No logged-in user. Unable to create board.");
            }

            // 게시판 작성
            Integer userId = member.getUser_id();
            board.setUser_id(userId);

            boardMapper.insertBoard(board);

        } catch (Exception e) {
            throw e;
        }
    }

    @Override
    public void updateBoard(ContactBoardVO board) {
        System.out.println("Updating board with ID: " + board.getDashboard_id());

        try {
            int rowsUpdated = boardMapper.updateBoard(board);
            if (rowsUpdated > 0) {
                System.out.println("Board updated successfully.");
            } else {
                System.out.println("No board found with ID: " + board.getDashboard_id());
            }
        } catch (Exception e) {
            System.out.println("Error while updating board: " + e.getMessage());
            e.printStackTrace();
            throw e;
        }
    }

    @Override
    public boolean deleteBoard(int dashboard_id) {
        int rowsAffected = boardMapper.deleteBoard(dashboard_id);
    
        // 4. 삭제 성공 여부 반환
        return rowsAffected > 0;
    }

}
