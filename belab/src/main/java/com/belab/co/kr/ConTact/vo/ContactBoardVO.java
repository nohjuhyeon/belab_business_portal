package com.belab.co.kr.ConTact.vo;

import com.belab.co.kr.member.vo.MemberVO;
import lombok.Data;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;

@Data
public class ContactBoardVO {
    private int dashboard_id;  // 대시보드 ID (auto_increment)
    private int user_id;  // 사용자 ID
    private String title;  // 제목
    private String content;  // 내용
    private LocalDateTime created_at;  // 작성일
    private LocalDateTime updated_at;  // 수정일

    private MemberVO uservo;  // UserVO 객체 추가 (username을 가져오기 위해)

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

    // UserVO에서 username을 반환하는 메서드 추가
    public String getUsername() {
        if (this.uservo != null) {
            return this.uservo.getUsername();
        }
        return "";  // null일 경우 빈 문자열 반환
    }
}
