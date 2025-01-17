package com.belab.co.kr.notice.controller;

import com.belab.co.kr.member.vo.MemberVO;
import com.belab.co.kr.notice.service.BoardService;
import com.belab.co.kr.notice.service.BoardServiceImpl;
import com.belab.co.kr.notice.vo.ContactBoardVO;

import jakarta.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@Controller
@RequestMapping("/contact")
public class ContactBoardController {
    private MemberVO loggedInUser;  // 전역변수로 선언
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

        return "/contact/boardList";
    }
    // 게시판 작성 페이지
    @GetMapping("/createBoard")
    public String createBoardForm(HttpSession session, Model model) {
        MemberVO loggedInUser = (MemberVO) session.getAttribute("loggedInUser");

        if (loggedInUser == null) {
            model.addAttribute("error", "로그인이 필요합니다.");
            return "redirect:/member/login";
        }

        // 서비스에 로그인된 사용자 정보 주입
        ((BoardServiceImpl) boardService).setMember(loggedInUser);

        return "/contact/createBoard";
    }

    @PostMapping("/createBoard")
    public String createBoard(@ModelAttribute ContactBoardVO board, HttpSession session) {
        MemberVO loggedInUser = (MemberVO) session.getAttribute("loggedInUser");

        if (loggedInUser == null) {
            return "redirect:/member/login";
        }

        // 서비스에 로그인된 사용자 정보 주입
        ((BoardServiceImpl) boardService).setMember(loggedInUser);

        boardService.createBoard(board);
        return "redirect:/contact/boardList";
    }


    // 게시판 수정 페이지
    @GetMapping("/editBoard/{dashboard_id}")
    public String editBoardForm(@PathVariable int dashboard_id, HttpSession session, Model model) {
        if (!checkLoginStatus(session, model)) {
            model.addAttribute("error", "잘못된 접근");
            return "redirect:/member/login";  // 로그인되지 않으면 로그인 페이지로 리다이렉트
        }

        ContactBoardVO board = boardService.getBoardById(dashboard_id);
        model.addAttribute("board", board);
        return "/contact/editBoard";
    }

    // 게시판 수정 처리
    @PostMapping("/editBoard")
    public String editBoard(@ModelAttribute ContactBoardVO board) {
        boardService.updateBoard(board);
        // 수정된 게시글의 상세 페이지로 이동
        return "redirect:/contact/viewBoard/" + board.getDashboard_id();
    }

    // 게시판 삭제 처리
    @PostMapping("/deleteBoard")
    public String deleteBoard(@RequestParam int dashboard_id, HttpSession session, Model model) {
        if (!checkLoginStatus(session, model)) {
            model.addAttribute("error", "잘못된 접근");
            return "redirect:/member/login";  // 로그인되지 않으면 로그인 페이지로 리다이렉트
        }

        boardService.deleteBoard(dashboard_id);
        return "redirect:/contact/boardList";  // 게시판 목록으로 리다이렉트
    }

    // 게시판 상세 보기 (로그인 여부와 관계없이 조회 가능)
    @GetMapping("/viewBoard/{dashboard_id}")
    public String viewBoard(@PathVariable int dashboard_id, HttpSession session, Model model) {
        ContactBoardVO board = boardService.getBoardById(dashboard_id);
        model.addAttribute("board", board);

        if (loggedInUser == null) {
            model.addAttribute("info", "로그인 후 수정, 삭제가 가능합니다.");
        }

        return "/contact/viewBoard";
    }
}
