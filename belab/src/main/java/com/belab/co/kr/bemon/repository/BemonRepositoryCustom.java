package com.belab.co.kr.bemon.repository;

import com.belab.co.kr.bemon.model.Bemon;

import java.util.List;

import org.springframework.data.domain.Pageable;

public interface BemonRepositoryCustom {
    List<Bemon> findWithDynamicQuery(String keywordLogic, String keyword, String categoryLogic, List<String> categories, String todayStr, String noticeRange, int offset, int size);
    long countWithDynamicQuery(String keywordLogic, String keyword, String categoryLogic, List<String> categories, String todayStr, String noticeRange);

}
