package com.belab.co.kr.member.vo;

import lombok.Data;
import java.sql.Timestamp;

@Data
public class MemberVO {
    private int userId;      // 사용자 ID
    private String email;       // 이메일
    private String username;    // 사용자 이름
    private String password;    // 비밀번호
    private String hp;          // 휴대전화 번호
    private String affiliation; // 소속
    private int isActive = 1;   // 기본값을 1로 설정 (active 상태)
    private Timestamp join_at;   // 가입 일시
    private Timestamp updated_at; // 수정 일시
    private String role;        // 역할 ('admin', 'user')
}

