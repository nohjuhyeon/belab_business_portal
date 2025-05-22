package com.belab.co.kr.bemon.repository;

import org.springframework.data.mongodb.repository.MongoRepository;
import org.springframework.data.mongodb.repository.Query;
import com.belab.co.kr.bemon.model.Bemon;
import org.springframework.data.domain.Pageable;

import java.util.List;

public interface BemonRepository extends MongoRepository<Bemon, String>, BemonRepositoryCustom {
    // 이름으로 검색
    Bemon findByTitle(String title);

    Bemon findByBoardId(String boardId);

    // 페이징 처리 (MongoDB에서 제공하는 기본 기능 활용)
    @Query("{}")
    List<Bemon> findAllWithPagination(Pageable pageable);

    // 페이징 처리와 endDate 조건 추가
    @Query("{ 'openDate': { $gt: ?0 }, 'itNoticeCheck':'True' }")
    List<Bemon> findByEndDateAfterWithOffset(String today, Pageable pageable);

    // 조건에 맞는 데이터 개수 조회 (endDate가 특정 날짜 이후인 경우)
    @Query(value = "{ 'openDate': { $gt: ?0 }, 'itNoticeCheck': 'True' }", count = true)
    long countByEndDateAfter(String today);



}
