package com.belab.co.kr.ConTact.vo;

import lombok.Data;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;

@Data
public class ContactBoardVO {
    private int dashboard_id;  // 대시보드 ID (auto_increment)
    private int user_id;  // 사용자 ID
    private String username;    // 사용자 이름
    private String title;  // 제목
    private String content;  // 내용
    private LocalDateTime created_at;  // 작성일
    private LocalDateTime updated_at;  // 수정일

    // LocalDateTime을 String으로 변환하는 메서드 추가
    public String getFormattedCreatedAt() {
        if (this.created_at != null) {
            DateTimeFormatter formatter = DateTimeFormatter.ofPattern("yyyy-MM-dd HH:mm");
            return this.created_at.format(formatter);
        }
        return "";  // null일 경우 빈 문자열 반환
    }

    public String getFormattedUpdatedAt() {
        if (this.updated_at != null) {
            DateTimeFormatter formatter = DateTimeFormatter.ofPattern("yyyy-MM-dd HH:mm");
            return this.updated_at.format(formatter);
        }
        return "";  // null일 경우 빈 문자열 반환
    }
}
