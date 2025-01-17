package com.belab.co.kr.member.dao;

import com.belab.co.kr.member.vo.MemberVO;
import org.apache.ibatis.annotations.*;

@Mapper
public interface MemberMapper {

    // 회원 정보 삽입
    void insertMember(MemberVO member);

    // 이메일로 회원 정보 조회
    MemberVO findMemberByEmail(String email);

    MemberVO findUserNameByEmail(String email);

    // 로그인 (이메일과 비밀번호로 회원 정보 조회)
    MemberVO loginMember(@Param("email") String email, @Param("password") String password);

    // 회원 정보 업데이트
    int updateMember(MemberVO memberVO);

    // 이메일 찾기 (이름과 휴대폰 번호로 이메일만 반환)
    @Select("SELECT email FROM user WHERE username = #{username} AND hp = #{hp}")
    String findEmailByUsernameAndHp(@Param("username") String username, @Param("hp") String hp);
    // 비밀번호 확인
    boolean checkPassword(@Param("email") String email, @Param("password") String password);
    // 비밀번호 변경

    @Update("UPDATE user SET password = #{newPassword}, updated_at = CURRENT_TIMESTAMP WHERE email = #{email}")
    int updatePasswordByEmail(@Param("email") String email, @Param("newPassword") String newPassword);

    // 이메일로 비밀번호 찾기 (현재 비밀번호 반환)
    @Select("SELECT password FROM user WHERE email = #{email}")
    String findPasswordByEmail(@Param("email") String email);

    // contact_info_board의 user_id를 4로 업데이트
    @Update({
        "UPDATE contact_info_board",
        "SET user_id = 4",
        "WHERE user_id = (SELECT user_id FROM user WHERE email = #{email})"
    })
    int updateUserReferenceToDefault(@Param("email") String email);

    // user 테이블에서 유저 삭제
    @Delete("DELETE FROM user WHERE email = #{email}")
    int deleteMemberByEmail(@Param("email") String email);
}
