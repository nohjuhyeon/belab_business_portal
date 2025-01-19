package com.belab.co.kr.files.vo;

import lombok.Data;
import org.springframework.web.multipart.MultipartFile;

import java.sql.Timestamp;

@Data
public class ReferenceFileInfoVO {
    private Long file_id;          // 테이블의 file_id
    private Long refer_board_id;    // 참조 게시글 ID (reference_board 테이블 참조)
    private String file_name;      // 파일 이름
    private String file_path;      // 파일 경로
    private Long file_size;        // 파일 크기
    private Timestamp created_at;  // 생성 시간
    private Timestamp updated_at;  // 수정 시간
    private MultipartFile multipartFile; // 추가된 필드

    // Getters and Setters
    public MultipartFile getMultipartFile() {
        return multipartFile;
    }

    public void setMultipartFile(MultipartFile multipartFile) {
        this.multipartFile = multipartFile;
    }
}
