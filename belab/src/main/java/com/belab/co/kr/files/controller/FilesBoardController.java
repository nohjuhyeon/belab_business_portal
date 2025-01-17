package com.belab.co.kr.files.controller;

import com.belab.co.kr.files.service.ReferBoardService;
import com.belab.co.kr.files.vo.ReferenceBoardVO;
import com.belab.co.kr.files.vo.ReferenceFileInfoVO;
import com.belab.co.kr.member.vo.MemberVO;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import java.io.*;
import java.net.URLEncoder;
import java.util.List;

@Controller
@RequestMapping("/files")
public class FilesBoardController {

    @Autowired
    private ReferBoardService referBoardService;

    /**
     * 게시판 목록 조회
     */
    @GetMapping("/boardList")
    public String getBoardList(@RequestParam(defaultValue = "1") int page,
                               @RequestParam(defaultValue = "10") int size,
                               Model model) {
        int offset = (page - 1) * size;
        List<ReferenceBoardVO> boards = referBoardService.getBoardList(offset, size);
        int totalBoardCount = referBoardService.getTotalBoardCount();
        int totalPages = (int) Math.ceil((double) totalBoardCount / size);
        int pageBlockSize = 10; // 한 번에 표시할 페이지 수
        int startPage = ((page - 1) / pageBlockSize) * pageBlockSize + 1;
        int endPage = Math.min(startPage + pageBlockSize - 1, totalPages);

        model.addAttribute("boards", boards);
        model.addAttribute("currentPage", page);
        model.addAttribute("totalPages", totalPages);
        model.addAttribute("startPage", startPage);
        model.addAttribute("endPage", endPage);

        return "/files/boardList";
    }

    /**
     * 게시글 상세 보기
     */
    @GetMapping("/viewBoard/{refer_board_id}")
    public String viewBoard(@PathVariable Long refer_board_id, Model model) {
        ReferenceBoardVO board = referBoardService.getBoardById(refer_board_id);
        if (board == null) {
            throw new IllegalArgumentException("존재하지 않는 게시글 ID: " + refer_board_id);
        }
        List<ReferenceFileInfoVO> attachedFiles = referBoardService.getFilesByBoardId(refer_board_id);

        model.addAttribute("board", board);
        model.addAttribute("attachedFiles", attachedFiles);
        return "/files/viewBoard";
    }

    /**
     * 게시글 작성 화면 이동
     */
    @GetMapping("/createBoard")
    public String createBoardForm() {
        return "/files/createBoard";
    }

    /**
     * 게시글 작성 처리
     */
    @PostMapping("/createBoard")
    public String createBoard(@ModelAttribute ReferenceBoardVO board,
                              @RequestParam(value = "files[]", required = false) MultipartFile[] files,
                              HttpSession session) {
        MemberVO loggedInUser = (MemberVO) session.getAttribute("loggedInUser");
        if (loggedInUser == null) {
            System.out.println("로그인된 사용자가 없습니다.");
            return "redirect:/member/login";
        }

        // 디버깅: 파일 확인
        if (files != null && files.length > 0) {
            for (MultipartFile file : files) {
                System.out.println("업로드된 파일: " + file.getOriginalFilename() + ", 크기: " + file.getSize());
            }
        } else {
            System.out.println("업로드된 파일이 없습니다.");
        }

        try {
            List<MultipartFile> fileList = files != null ? List.of(files) : null;
            referBoardService.createBoard(board, loggedInUser, fileList);
        } catch (Exception e) {
            System.err.println("게시글 작성 중 오류 발생: " + e.getMessage());
            e.printStackTrace();
            return "redirect:/files/createBoard?error";
        }

        return "redirect:/files/boardList";
    }

    /**
     * 파일 다운로드
     */
    @GetMapping("/download/{file_id}")
    public void downloadFile(@PathVariable Long file_id, HttpServletResponse response) {
        ReferenceFileInfoVO fileInfo = referBoardService.getFileById(file_id);

        if (fileInfo != null) {
            File file = new File(fileInfo.getFile_path());
            if (file.exists()) {
                try (InputStream inputStream = new FileInputStream(file);
                     OutputStream outputStream = response.getOutputStream()) {

                    // 파일 이름 인코딩 (한글 포함 처리)
                    String encodedFileName = URLEncoder.encode(fileInfo.getFile_name(), "UTF-8").replace("+", "%20");
                    response.setContentType("application/octet-stream");
                    response.setHeader("Content-Disposition", "attachment; filename*=UTF-8''" + encodedFileName);

                    // 파일 데이터 전송
                    byte[] buffer = new byte[1024];
                    int bytesRead;
                    while ((bytesRead = inputStream.read(buffer)) != -1) {
                        outputStream.write(buffer, 0, bytesRead);
                    }
                    System.out.println("파일 다운로드 성공: " + fileInfo.getFile_name());
                } catch (IOException e) {
                    System.err.println("파일 다운로드 중 오류 발생: " + e.getMessage());
                    e.printStackTrace();
                }
            } else {
                System.err.println("파일이 존재하지 않습니다: " + fileInfo.getFile_path());
                response.setStatus(HttpServletResponse.SC_NOT_FOUND);
            }
        } else {
            System.err.println("파일 정보를 찾을 수 없습니다. 파일 ID: " + file_id);
            response.setStatus(HttpServletResponse.SC_NOT_FOUND);
        }
    }

    /**
     * 예외 처리 - 파일을 찾을 수 없을 때
     */
    @ExceptionHandler(FileNotFoundException.class)
    public ResponseEntity<String> handleFileNotFound(FileNotFoundException ex) {
        System.err.println("파일을 찾을 수 없습니다: " + ex.getMessage());
        return ResponseEntity.status(HttpStatus.NOT_FOUND).body("파일을 찾을 수 없습니다: " + ex.getMessage());
    }

    /**
     * 예외 처리 - 일반 오류
     */
    @ExceptionHandler(Exception.class)
    public ResponseEntity<String> handleException(Exception ex) {
        System.err.println("서버 오류 발생: " + ex.getMessage());
        return ResponseEntity.status(HttpStatus.INTERNAL_SERVER_ERROR).body("서버 오류 발생: " + ex.getMessage());
    }
}
