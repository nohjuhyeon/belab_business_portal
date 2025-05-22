package com.belab.co.kr.bemon.controller;

import com.belab.co.kr.bemon.dto.BoardRequest;
import com.belab.co.kr.bemon.model.Bemon;
import com.belab.co.kr.bemon.service.BemonService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.List;

@Controller
@RequestMapping("/bemon")
public class BemonController {

    @Autowired
    private BemonService bemonService;


    /**
     * 게시판 목록 조회
     */
    @GetMapping
    public String getBoardList(
            @RequestParam(name = "page", defaultValue = "1") int page,
            Model model) {

        // 페이징 처리 로직
        int size = 10;
        int offset = (page - 1) * size;
        List<Bemon> bemonList;

        bemonList = bemonService.getBoardList(offset, size);

        long totalBoardCount = bemonService.getBoardCountByEndDateAfter();
        int currentBlock = (int) Math.ceil((double) page / size);
        int totalPages = (int) Math.ceil((double) totalBoardCount / size);
        int totalBlock = (int) Math.ceil((double) totalPages / size);
        int pageBlockSize = 10; // 한 번에 표시할 페이지 수
        int startPage = ((page - 1) / pageBlockSize) * pageBlockSize + 1;
        int endPage = Math.min(startPage + pageBlockSize - 1, totalPages);

        // 모델에 데이터 추가
        model.addAttribute("boards", bemonList);
        model.addAttribute("currentPage", page);
        model.addAttribute("currentBlock", currentBlock);
        model.addAttribute("totalPages", totalPages);
        model.addAttribute("totalBlock", totalBlock);
        model.addAttribute("startPage", startPage);
        model.addAttribute("endPage", endPage);

        return "/bemon/boardList"; // 뷰 파일 경로
    }

    @PostMapping
    public String getBoardList(
        @RequestParam(name = "page", defaultValue = "1") int page,
        @RequestParam(name = "keywordLogic", required = false) String keywordLogic,
        @RequestParam(name = "keyword", required = false) String keyword,
        @RequestParam(name = "categoryLogic", required = false) String categoryLogic,
        @RequestParam(name = "category", required = false) List<String> categories,
        @RequestParam(name = "noticeRange", required = false) String noticeRange,
        Model model) {


        // 페이징 처리 로직
        int size = 10;
        int offset = (page - 1) * size;
        List<Bemon> bemonList;
        long totalBoardCount;

        // 검색 필터링 로직
        if ((keyword != null && !keyword.isEmpty()) || (categories != null && !categories.isEmpty())) {
            // 검색 조건이 있는 경우 서비스에서 필터링된 리스트를 가져옴
            // bemonList = bemonService.getBoardList(offset, size);
            bemonList = bemonService.getFilteredBoardList(keywordLogic, keyword, categoryLogic, categories,noticeRange, offset, size);
            totalBoardCount = bemonService.countWithDynamicQuery(keywordLogic, keyword, categoryLogic, categories,noticeRange);
        } else {
            // 검색 조건이 없는 경우 전체 리스트를 가져옴
            bemonList = bemonService.getBoardList(offset, size);
            totalBoardCount = bemonService.getBoardCountByEndDateAfter();
        }

        String keywordLogicStr = "전체";
        if ("noticeId".equals(keywordLogic)) {
            keywordLogicStr = "공고 번호";
        } else if ("title".equals(keywordLogic)) {
            keywordLogicStr = "공고명";            
        } else if ("publishingAgency".equals(keywordLogic)) {
            keywordLogicStr = "공고 기관";
        } else if ("requestingAgency".equals(keywordLogic)) {
            keywordLogicStr = "수주 기관";            
        } else {
            keywordLogicStr = "전체";
        }

        int currentBlock = (int) Math.ceil((double) page / size);
        int totalPages = (int) Math.ceil((double) totalBoardCount / size);
        int totalBlock = (int) Math.ceil((double) totalPages / size);
        int pageBlockSize = 10; // 한 번에 표시할 페이지 수
        int startPage = ((page - 1) / pageBlockSize) * pageBlockSize + 1;
        int endPage = Math.min(startPage + pageBlockSize - 1, totalPages);

        // 모델에 데이터 추가
        model.addAttribute("boards", bemonList);
        model.addAttribute("currentPage", page);
        model.addAttribute("currentBlock", currentBlock);
        model.addAttribute("totalPages", totalPages);
        model.addAttribute("totalBlock", totalBlock);
        model.addAttribute("startPage", startPage);
        model.addAttribute("endPage", endPage);

        // 검색 조건도 모델에 추가 (뷰에서 사용 가능)
        model.addAttribute("noticeRange", noticeRange);
        model.addAttribute("keywordLogic", keywordLogic);
        model.addAttribute("keyword", keyword);
        model.addAttribute("keywordLogicStr", keywordLogicStr);
        model.addAttribute("categoryLogic", categoryLogic);
        model.addAttribute("categories", categories);
        return "/bemon/boardList"; // 뷰 파일 경로
    }


    /**
     * 게시글 상세 보기
     */
    @GetMapping("/viewBoard/{bemonId}")
    public String viewBoard(@PathVariable(name = "bemonId") String bemonId, Model model) {
        Bemon bemon = bemonService.getBoardById(bemonId);
        if (bemon == null) {
            throw new IllegalArgumentException("존재하지 않는 게시글 ID: " + bemonId);
        }

        model.addAttribute("bemon", bemon);
        return "/bemon/viewBoard";
    }



}