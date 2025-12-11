package com.belab.co.kr.notice.controller;

import com.belab.co.kr.admin.member.controller.AdminController;
import com.belab.co.kr.member.vo.MemberVO;
import com.belab.co.kr.notice.service.BoardService;
import com.belab.co.kr.notice.service.BoardServiceImpl;
import com.belab.co.kr.notice.vo.ContactBoardVO;

import jakarta.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.bind.support.SessionStatus;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Controller
@RequestMapping("/notice")
public class ContactBoardController {
    private MemberVO loggedInUser; // 전역변수로 선언
    private static final Logger logger = LoggerFactory.getLogger(AdminController.class);
    @Autowired
    private BoardService boardService;

    // 로그인 여부를 체크하고, loggedInUser를 세션에서 할당하는 메서드
    private boolean checkLoginStatus(HttpSession session, Model model) {
        loggedInUser = (MemberVO) session.getAttribute("loggedInUser");
        return loggedInUser != null;
    }

    @GetMapping("/boardList")
    public String getBoardList(@RequestParam(defaultValue = "1") int page,
                               @RequestParam(defaultValue = "10") int size,
                               Model model) {
        // 페이징 처리를 위한 offset 계산
        int offset = (page - 1) * size;

        // 게시글 목록 및 총 게시글 수 가져오기
        List<ContactBoardVO> boards = boardService.getBoardList(offset, size);
        int totalBoardCount = boardService.getTotalBoardCount(); // 게시글의 총 개수

        // 전체 페이지 수 계산
        int totalPages = (int) Math.ceil((double) totalBoardCount / size);

        // 페이지 번호 범위 계산
        int pageBlockSize = 10; // 한 번에 표시할 페이지 수
        int startPage = ((page - 1) / pageBlockSize) * pageBlockSize + 1;
        int endPage = Math.min(startPage + pageBlockSize - 1, totalPages);

        // 게시글 번호 처리
        int startBoardNo = (page - 1) * size + 1; // 첫 게시글 번호
        int endBoardNo = Math.min(startBoardNo + size - 1, totalBoardCount); // 마지막 게시글 번호

        // 모델에 데이터 추가
        model.addAttribute("boards", boards);
        model.addAttribute("currentPage", page);
        model.addAttribute("totalPages", totalPages);
        model.addAttribute("startPage", startPage);
        model.addAttribute("endPage", endPage);
        model.addAttribute("startBoardNo", startBoardNo);
        model.addAttribute("endBoardNo", endBoardNo);

        return "/notice/boardList";
    }

    // 게시판 작성 페이지
    @GetMapping("/createBoard")
    public String createBoardForm(HttpSession session, Model model) {
        MemberVO loggedInUser = (MemberVO) session.getAttribute("loggedInUser");

        if (loggedInUser == null) {
            model.addAttribute("error", "로그인이 필요합니다.");
            return "redirect:/administrator/login";
        }

        // 서비스에 로그인된 사용자 정보 주입
        ((BoardServiceImpl) boardService).setMember(loggedInUser);

        return "/notice/createBoard";
    }

    @PostMapping("/createBoard")
    public String createBoard(@ModelAttribute ContactBoardVO board, HttpSession session) {
        MemberVO loggedInUser = (MemberVO) session.getAttribute("loggedInUser");

        if (loggedInUser == null) {
            return "redirect:/administrator/login";
        }

        // 서비스에 로그인된 사용자 정보 주입
        ((BoardServiceImpl) boardService).setMember(loggedInUser);

        boardService.createBoard(board);
        return "redirect:/notice/boardList";
    }

    // 게시판 수정 페이지
    @GetMapping("/editBoard/{dashboard_id}")
    public String editBoardForm(@PathVariable int dashboard_id, HttpSession session, Model model) {
        if (!checkLoginStatus(session, model)) {
            model.addAttribute("error", "잘못된 접근");
            return "redirect:/administrator/login"; // 로그인되지 않으면 로그인 페이지로 리다이렉트
        }

        ContactBoardVO board = boardService.getBoardById(dashboard_id);
        model.addAttribute("board", board);
        return "/notice/editBoard";
    }

    // 게시판 수정 처리
    @PostMapping("/editBoard")
    public String editBoard(@ModelAttribute ContactBoardVO board) {
        boardService.updateBoard(board);
        // 수정된 게시글의 상세 페이지로 이동
        return "redirect:/notice/viewBoard/" + board.getDashboard_id();
    }


    // 게시판 삭제 처리
    @PostMapping("/deleteBoard")
    public ResponseEntity<Map<String, String>> deleteBoard(@RequestParam int dashboard_id, HttpSession session) {
        Map<String, String> response = new HashMap<>();

        // 로그인 사용자 확인
        MemberVO loggedInUser = (MemberVO) session.getAttribute("loggedInUser");
        if (loggedInUser == null || !"admin".equals(loggedInUser.getRole())) {
            logger.warn("권한이 없는 사용자가 게시판 삭제를 시도했습니다.");
            response.put("status", "failure");
            response.put("message", "권한이 없습니다.");
            return ResponseEntity.status(HttpStatus.FORBIDDEN).body(response); // 권한 없음 응답
        }

        // 게시판 삭제 처리
        boolean isDeleted = boardService.deleteBoard(dashboard_id);

        if (isDeleted) {
            response.put("status", "success");
            response.put("message", "게시판이 성공적으로 삭제되었습니다.");
            return ResponseEntity.ok(response); // 성공 응답
        } else {
            logger.error("게시판 삭제 실패: referBoardId={}", dashboard_id);
            response.put("status", "failure");
            response.put("message", "게시판 삭제에 실패했습니다.");
            return ResponseEntity.status(HttpStatus.INTERNAL_SERVER_ERROR).body(response); // 실패 응답
        }
    }

    // 게시판 상세 보기 (로그인 여부와 관계없이 조회 가능)
    @GetMapping("/viewBoard/{dashboard_id}")
    public String viewBoard(@PathVariable int dashboard_id, HttpSession session, Model model) {
        ContactBoardVO board = boardService.getBoardById(dashboard_id);
        model.addAttribute("board", board);

        if (loggedInUser == null) {
            model.addAttribute("info", "로그인 후 수정, 삭제가 가능합니다.");
        }

        return "/notice/viewBoard";
    }

    // 게시판 관련 컨트롤러
    @GetMapping("/customers")
    public String customers() {
        return "/notice/customers";
    }

    @PostMapping("/sendInquiryEmail")
    public String sendInquiryEmail(@RequestParam("type") String type,
                                   @RequestParam("email") String email,
                                   @RequestParam("name") String name,
                                   @RequestParam("phone") String phone,
                                   @RequestParam("subject") String subject,
                                   @RequestParam("content") String content,
                                   Model model) {
        // 이메일 내용 구성
        // 이메일 내용 구성
        String mailContent =
                "<b>유형:</b> " + type + "<br>" +
                        "<b>이름:</b> " + name + "<br>" +
                        "<b>전화번호:</b> " + phone + "<br>" +
                        "<b>제목:</b> " + subject + "<br>" +
                        "<b>내용:</b> " + content + "<br>" +
                        "<b>고객 이메일:</b> " + email;

        try {
            // 이메일 발송
            boardService.sendEmail("help@belab.co.kr", "고객 문의 :" + subject, mailContent);

            model.addAttribute("success", "문의가 성공적으로 접수되었습니다. 이메일로 알림을 전송했습니다.");
        } catch (Exception e) {
            model.addAttribute("error", "문의 접수 중 오류가 발생했습니다: " + e.getMessage());
        }

        return "/main";
    }
}