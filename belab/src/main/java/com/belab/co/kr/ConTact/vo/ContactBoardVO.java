package com.belab.co.kr.ConTact.vo;

import lombok.Data;
import java.time.LocalDateTime;

@Data
public class ContactBoardVO {
    private int dashboard_id;  // 대시보드 ID (auto_increment)
    private int user_id;  // 사용자 ID
    private String title;  // 제목
    private String content;  // 내용
    private LocalDateTime created_at;  // 작성일
    private LocalDateTime updated_at;  // 수정일
}
