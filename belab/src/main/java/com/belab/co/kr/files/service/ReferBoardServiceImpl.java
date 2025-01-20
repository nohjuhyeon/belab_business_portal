package com.belab.co.kr.files.service;

import com.belab.co.kr.files.dao.ReferBoardMapper;
import com.belab.co.kr.files.vo.ReferenceBoardVO;
import com.belab.co.kr.files.vo.ReferenceFileInfoVO;
import com.belab.co.kr.member.vo.MemberVO;
import jakarta.annotation.PostConstruct;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import java.io.File;
import java.io.IOException;
import java.util.List;
import java.util.UUID;
import java.util.Optional;

@Service
public class ReferBoardServiceImpl implements ReferBoardService {

    @Autowired
    private ReferBoardMapper referBoardMapper;

    private String uploadDirectory = "C:\\test";

    /**
     * 초기화: 파일 저장 디렉토리 생성
     */


    /**
     * 게시글 목록 조회
     */
    @Override
    public List<ReferenceBoardVO> getBoardList(int offset, int limit) {
        List<ReferenceBoardVO> boards = referBoardMapper.selectBoardList(offset, limit);
        boards.forEach(this::populateBoardDetails);
        return boards;
    }

    /**
     * 게시글 총 개수 조회
     */
    @Override
    public int getTotalBoardCount() {
        return referBoardMapper.selectTotalBoardCount();
    }

    /**
     * 게시글 상세 조회
     */
    @Override
    public ReferenceBoardVO getBoardById(Long referBoardId) {
        return Optional.ofNullable(referBoardMapper.selectBoardById(referBoardId))
                .map(this::populateBoardDetails)
                .orElseThrow(() -> new IllegalArgumentException("게시글을 찾을 수 없습니다. ID: " + referBoardId));
    }

    /**
     * 게시글 생성
     */
    @Override
    public void createBoard(ReferenceBoardVO board, MemberVO member, List<MultipartFile> files) {
        validateMember(member);

        board.setUser_id((long) member.getUser_id());
        referBoardMapper.insertBoard(board);

        Long boardId = Optional.ofNullable(board.getRefer_board_id())
                .orElseThrow(() -> new IllegalStateException("게시글 ID를 가져올 수 없습니다."));

        uploadFiles(files, boardId);
    }

    /**
     * 파일 업로드 처리
     */
    private void uploadFiles(List<MultipartFile> files, Long referBoardId) {
        if (files == null || files.isEmpty()) {
            System.out.println("첨부 파일이 없습니다.");
            return;
        }

        files.forEach(file -> {
            try {
                saveFile(file, referBoardId);
                System.out.println("파일 업로드 성공: " + file.getOriginalFilename());
            } catch (Exception e) {
                System.err.println("파일 업로드 실패: " + file.getOriginalFilename() + " - " + e.getMessage());
            }
        });
    }

    /**
     * 파일 저장
     */
    @Override
    public void saveFile(MultipartFile file, Long referBoardId) {
        if (file == null || file.isEmpty()) {
            System.out.println("빈 파일이 업로드되었습니다. 저장하지 않습니다.");
            return;
        }
        String originalFilename = file.getOriginalFilename();
        String sanitizedFilename = sanitizeFileName(originalFilename);
        String uniqueFilename = UUID.randomUUID().toString() + "_" + sanitizedFilename;
        try {
            String filePath = uploadDirectory + File.separator + uniqueFilename;
            File destination = new File(filePath);
            file.transferTo(destination);
            ReferenceFileInfoVO fileInfo = new ReferenceFileInfoVO();
            fileInfo.setRefer_board_id(referBoardId);
            fileInfo.setFile_name(sanitizedFilename);
            fileInfo.setFile_path(filePath);
            fileInfo.setFile_size(file.getSize());
            referBoardMapper.insertFile(fileInfo);
            System.out.println("파일 저장 완료: " + filePath);
        } catch (IOException e) {
            throw new RuntimeException("파일 저장 실패: " + originalFilename, e);
        }
    }

    /**
     * 파일 이름 정규식 처리
     */
    private String sanitizeFileName(String fileName) {
        return fileName.replaceAll("[^a-zA-Z0-9._-]", "_");
    }

    /**
     * 게시글 수정
     */
    @Override
    public void updateBoard(ReferenceBoardVO board) {
        referBoardMapper.updateBoard(board);
    }

    /**
     * 게시글 삭제
     */
    @Override
    public void deleteBoard(Long referBoardId) {
        List<ReferenceFileInfoVO> files = getFilesByBoardId(referBoardId);
        files.forEach(file -> {
            File physicalFile = new File(file.getFile_path());
            if (physicalFile.exists() && physicalFile.delete()) {
                System.out.println("Deleted file: " + file.getFile_path());
            }
        });
        referBoardMapper.deleteBoard(referBoardId);
    }

    /**
     * 게시글 ID로 파일 목록 조회
     */
    @Override
    public List<ReferenceFileInfoVO> getFilesByBoardId(Long referBoardId) {
        return referBoardMapper.selectFilesByBoardId(referBoardId);
    }

    /**
     * 파일 ID로 파일 정보 조회
     */
    @Override
    public ReferenceFileInfoVO getFileById(Long fileId) {
        return referBoardMapper.selectFileById(fileId);
    }

    @Override
    public void saveFile(ReferenceFileInfoVO fileInfo) {
        referBoardMapper.insertFile(fileInfo);
    }

    /**
     * 게시글 객체에 사용자와 첨부 파일 정보 추가
     */
    private ReferenceBoardVO populateBoardDetails(ReferenceBoardVO board) {
        Long userId = board.getUser_id();
        if (userId != null) {
            MemberVO user = referBoardMapper.getUserById(userId);
            board.setUservo(user);
        }
        List<ReferenceFileInfoVO> files = getFilesByBoardId(board.getRefer_board_id());
        board.setAttachedFiles(files);
        return board;
    }

    /**
     * 사용자 유효성 검사
     */
    private void validateMember(MemberVO member) {
        if (member == null) {
            throw new IllegalStateException("로그인 정보가 없습니다.");
        }
    }
}