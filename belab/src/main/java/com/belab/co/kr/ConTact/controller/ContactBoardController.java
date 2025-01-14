package com.belab.co.kr.ConTact.controller;

import com.belab.co.kr.ConTact.service.BoardService;
import com.belab.co.kr.ConTact.vo.ContactBoardVO;
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

    // 게시판 목록 조회
    @GetMapping("/boardList")
    public String getBoardList(Model model) {
        List<ContactBoardVO> boards = boardService.getAllBoards();
        model.addAttribute("boards", boards);
        return "/contact/boardList";  // boardList.jsp로 이동
    }

    // 게시글 작성 폼
    @GetMapping("/createBoard")
    public String createBoardForm() {
        return "/contact/createBoard";  // createBoard.jsp로 이동
    }

    // 게시글 생성
    @PostMapping("/createBoard")
    public String createBoard(@ModelAttribute ContactBoardVO board) {
        boardService.createBoard(board);
        return "redirect:/contact/boardList";  // 게시글 목록 페이지로 리다이렉트
    }

    // 게시글 수정 폼
    @GetMapping("/editBoard/{dashboardId}")
    public String editBoardForm(@PathVariable int dashboardId, Model model) {
        ContactBoardVO board = boardService.getBoardById(dashboardId);
        model.addAttribute("board", board);
        return "/contact/editBoard";  // editBoard.jsp로 이동
    }

    // 게시글 수정
    @PostMapping("/editBoard")
    public String editBoard(@ModelAttribute ContactBoardVO board) {
        boardService.updateBoard(board);
        return "redirect:/contact/boardList";  // 게시글 목록 페이지로 리다이렉트
    }

    // 게시글 삭제
    @PostMapping("/deleteBoard")
    public String deleteBoard(@RequestParam int dashboardId) {
        boardService.deleteBoard(dashboardId);
        return "redirect:/contact/boardList";  // 게시글 목록 페이지로 리다이렉트
    }
}