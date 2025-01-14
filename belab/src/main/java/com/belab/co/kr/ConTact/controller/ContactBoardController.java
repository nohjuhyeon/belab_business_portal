package com.belab.co.kr.ConTact.controller;

import com.belab.co.kr.ConTact.service.BoardService;
import com.belab.co.kr.ConTact.vo.ContactBoardVO;
import com.belab.co.kr.member.vo.MemberVO;
import jakarta.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@Controller
@RequestMapping("/contact")
public class ContactBoardController {

    @Autowired
    private BoardService boardService;

    // 로그인 여부를 체크하는 메서드
    private boolean checkLoginStatus(HttpSession session, Model model) {
        MemberVO loggedInUser = (MemberVO) session.getAttribute("loggedInUser");
        return loggedInUser != null;
    }

    // 게시판 목록
    @GetMapping("/boardList")
    public String getBoardList(HttpSession session, Model model) {
        List<ContactBoardVO> boards = boardService.getAllBoards();
        model.addAttribute("boards", boards);
        return "/contact/boardList";
    }

    // 게시판 작성 페이지
    @GetMapping("/createBoard")
    public String createBoardForm(HttpSession session, Model model) {
        if (!checkLoginStatus(session, model)) {
            model.addAttribute("error", "로그인이 필요합니다.");
            return "redirect:/member/login";  // 로그인되지 않으면 로그인 페이지로 리다이렉트
        }
        return "/contact/createBoard";
    }

    // 게시판 작성 처리
    @PostMapping("/createBoard")
    public String createBoard(@ModelAttribute ContactBoardVO board) {
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
        return "redirect:/contact/boardList";
    }

    // 게시판 삭제 처리
    @PostMapping("/deleteBoard")
    public String deleteBoard(@RequestParam int dashboard_id, HttpSession session, Model model) {
        if (!checkLoginStatus(session, model)) {
            model.addAttribute("error", "잘못된 접근");
            return "redirect:/member/login";  // 로그인되지 않으면 로그인 페이지로 리다이렉트
        }

        boardService.deleteBoard(dashboard_id);
        return "redirect:/contact/boardList";
    }

    // 게시판 상세 보기 (로그인 여부와 관계없이 조회 가능)
    @GetMapping("/viewBoard/{dashboard_id}")
    public String viewBoard(@PathVariable int dashboard_id, HttpSession session, Model model) {
        ContactBoardVO board = boardService.getBoardById(dashboard_id);
        model.addAttribute("board", board);

        // 로그인하지 않은 경우, 추가적인 메시지를 설정할 수 있음
        if (!checkLoginStatus(session, model)) {
            model.addAttribute("info", "로그인 후 수정, 삭제가 가능합니다.");
        }

        return "/contact/viewBoard";
    }
}
