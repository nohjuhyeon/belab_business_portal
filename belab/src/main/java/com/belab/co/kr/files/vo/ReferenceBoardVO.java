package com.belab.co.kr.files.vo;

import com.belab.co.kr.member.vo.MemberVO;
import lombok.Data;

import java.sql.Timestamp;
import java.text.SimpleDateFormat;
import java.util.List;

@Data
public class ReferenceBoardVO {
    private Long refer_board_id; // 게시글 ID
    private Long user_id;        // 작성자 ID
    private String title;        // 제목
    private String content;      // 내용
    private Timestamp created_at; // 생성 시간
    private Timestamp updated_at; // 수정 시간
    private MemberVO uservo;     // 작성자 정보 (username 포함)
    private List<ReferenceFileInfoVO> attachedFiles; // 첨부 파일 목록

    public String getUsername() {
        return this.uservo != null ? this.uservo.getUsername() : "";
    }

    public String getFormattedCreatedAt() {
        return formatTimestamp(this.created_at);
    }

    public String getFormattedUpdatedAt() {
        return formatTimestamp(this.updated_at);
    }

    private String formatTimestamp(Timestamp timestamp) {
        if (timestamp == null) {
            return "";
        }
        SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd HH:mm");
        return formatter.format(timestamp);
    }
}
