package com.belab.co.kr.files.dao;

import com.belab.co.kr.files.vo.ReferenceBoardVO;
import com.belab.co.kr.files.vo.ReferenceFileInfoVO;
import com.belab.co.kr.member.vo.MemberVO;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Options;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface ReferBoardMapper {

    // 페이징 처리된 게시글 목록 조회
    List<ReferenceBoardVO> selectBoardList(@Param("offset") int offset, @Param("limit") int limit);

    // 전체 게시글 수 조회
    int selectTotalBoardCount();

    // 게시글 ID로 게시글 상세 조회
    ReferenceBoardVO selectBoardById(@Param("refer_board_id") Long refer_board_id);

    // 게시글 삽입
    void insertBoard(ReferenceBoardVO board);
    // 게시글 업데이트
    int updateBoard(ReferenceBoardVO board);

    // 게시글 삭제
    int deleteBoard(@Param("refer_board_id") Long refer_board_id);

    // 사용자 ID로 사용자 정보 조회
    MemberVO getUserById(@Param("user_id") Long user_id);

    // 사용자 이름으로 사용자 ID 조회
    Long getUserIdByUsername(@Param("username") String username);

    // 게시글 ID로 첨부파일 목록 조회
    List<ReferenceFileInfoVO> selectFilesByBoardId(@Param("refer_board_id") Long refer_board_id);

    // 첨부파일 삽입
    void insertFile(ReferenceFileInfoVO fileInfo);

    // 첨부파일 ID로 파일 정보 조회
    ReferenceFileInfoVO selectFileById(@Param("file_id") Long file_id);
}
