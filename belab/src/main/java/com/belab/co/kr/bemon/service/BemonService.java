package com.belab.co.kr.bemon.service;

import com.belab.co.kr.bemon.model.Bemon;
import com.belab.co.kr.bemon.repository.BemonRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;
import org.springframework.data.domain.Sort;

import java.time.LocalDate;
import java.time.format.DateTimeFormatter;
import java.util.List;

@Service
public class BemonService {
    @Autowired
    private BemonRepository bemonRepository;

    // 모든 사용자 조회
    public List<Bemon> getAllUsers() {
        return bemonRepository.findAll();
    }

    // 이름으로 사용자 조회
    public Bemon getUserByTitle(String title) {
        return bemonRepository.findByTitle(title);
    }

    // 게시판 목록 조회 (페이징 처리)
    public List<Bemon> getBoardList(int offset, int size) {
        int page = offset / size; // offset을 페이지 번호로 계산
        Pageable pageable = PageRequest.of(page, size, Sort.by(Sort.Direction.DESC, "startDate"));
        LocalDate today = LocalDate.now();
        String todayStr = today.format(DateTimeFormatter.ofPattern("yyyy-MM-dd"));

        return bemonRepository.findByEndDateAfterWithOffset(todayStr, pageable);
    }


    public List<Bemon> getFilteredBoardList(String keywordLogic, String keyword, String categoryLogic, List<String> categories, String noticeRange, int offset, int size){
        LocalDate today = LocalDate.now();
        String todayStr = today.format(DateTimeFormatter.ofPattern("yyyy-MM-dd"));
        return bemonRepository.findWithDynamicQuery(keywordLogic, keyword, categoryLogic, categories, todayStr, noticeRange, offset, size);
    }

    public Long countWithDynamicQuery(String keywordLogic, String keyword, String categoryLogic, List<String> categories, String noticeRange){
        LocalDate today = LocalDate.now();
        String todayStr = today.format(DateTimeFormatter.ofPattern("yyyy-MM-dd"));
        return bemonRepository.countWithDynamicQuery(keywordLogic, keyword, categoryLogic, categories, todayStr, noticeRange);
    }

    // 게시글 ID로 조회
    public Bemon getBoardById(String id) {
        return bemonRepository.findById(id)
                .orElse(null); // Optional에서 값을 추출하거나 없으면 null 반환
    }


    // 전체 게시글 수 조회
    public long getTotalBoardCount() {
        return bemonRepository.count();
    }

    // 조건에 맞는 게시글 수 조회 (endDate가 특정 날짜 이후인 경우)
    public long getBoardCountByEndDateAfter() {
        LocalDate today = LocalDate.now();
        String todayStr = today.format(DateTimeFormatter.ofPattern("yyyy-MM-dd"));
        return bemonRepository.countByEndDateAfter(todayStr);
    }

}
