package com.belab.co.kr.bemon.repository;

import com.belab.co.kr.bemon.model.Bemon;

import org.springframework.data.domain.Sort;

import org.springframework.data.domain.Pageable;
import org.springframework.data.mongodb.core.MongoTemplate;
import org.springframework.data.mongodb.core.query.Criteria;
import org.springframework.data.mongodb.core.query.Query;
import org.springframework.stereotype.Repository;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Repository
public class BemonRepositoryCustomImpl implements BemonRepositoryCustom {

    private final MongoTemplate mongoTemplate;

    public BemonRepositoryCustomImpl(MongoTemplate mongoTemplate) {
        this.mongoTemplate = mongoTemplate;
    }

    @Override
    public List<Bemon> findWithDynamicQuery(String keywordLogic, String keyword, String categoryLogic, List<String> categories, String todayStr, String noticeRange, int offset, int size) {
        Query query = new Query();

        // 초기 Criteria 생성
        Criteria mainCriteria = new Criteria();
        List<Criteria> orCriteriaList = new ArrayList<>();
        List<Criteria> andCriteriaList = new ArrayList<>();

        // 키워드 조건 추가
        andCriteriaList = addKeywordCriteria(andCriteriaList, keywordLogic, keyword);


        List<String> categoriesKor = new ArrayList<>();
        for (String category : categories) {
            if ("others".equals(category)) {
                categoriesKor.add("기타");
            } else if ("ai".equals(category)) {
                categoriesKor.add("인공지능");
            } else if ("data".equals(category)) {
                categoriesKor.add("데이터베이스");
            } else if ("cloud".equals(category)) {
                categoriesKor.add("클라우드 컴퓨팅");
            } else if ("software".equals(category)) {
                categoriesKor.add("소프트웨어 개발 및 관리");
            } else if ("iot".equals(category)) {
                categoriesKor.add("IoT");
            } else if ("blockchain".equals(category)) {
                categoriesKor.add("블록체인");
            } else if ("metabus".equals(category)) {
                categoriesKor.add("AR/VR 및 메타버스");
            } else if ("network".equals(category)) {
                categoriesKor.add("네트워크 및 보안");
            } else if ("isp".equals(category)) {
                categoriesKor.add("ISP/ISMP");
            } else {
                categoriesKor.add(category); // 변환 조건에 해당하지 않는 경우 원래 값을 추가
            }
        }



        // 카테고리 조건 추가
        Map<String, List<Criteria>> criteriaMap = addCategoryCriteria(orCriteriaList, andCriteriaList, categoryLogic, categoriesKor);
        orCriteriaList = criteriaMap.get("or");
        andCriteriaList = criteriaMap.get("and");

        // 추가 조건: openDate와 itNoticeCheck
        andCriteriaList.add(Criteria.where("itNoticeCheck").is("True"));        

        if ("마감되지 않은 공고".equals(noticeRange)) {
            andCriteriaList.add(Criteria.where("openDate").gte(todayStr)); // openDate가 현재 시간보다 큰 경우
        } else if ("마감된 공고".equals(noticeRange)) {
            andCriteriaList.add(Criteria.where("openDate").lt(todayStr)); // openDate가 현재 시간보다 큰 경우            
        }

        // OR 조건을 하나의 Criteria로 추가
        if (!orCriteriaList.isEmpty()) {
            mainCriteria.orOperator(orCriteriaList.toArray(new Criteria[0]));
        }

        // AND 조건을 하나의 Criteria로 추가
        if (!andCriteriaList.isEmpty()) {
            mainCriteria.andOperator(andCriteriaList.toArray(new Criteria[0]));
        }

        // 최종 Criteria를 Query에 추가
        if (!mainCriteria.getCriteriaObject().isEmpty()) {
            query.addCriteria(mainCriteria);
        }

        // 정렬 조건 추가: startDate 기준 내림차순
        query.with(Sort.by(Sort.Direction.DESC, "startDate"));

        // 페이징 처리
        if (offset < 0) offset = 0;
        if (size <= 0) size = 10; // 기본값 설정
        query.skip(offset).limit(size);

        // MongoDB에서 쿼리 실행
        return mongoTemplate.find(query, Bemon.class);
    }

    private List<Criteria> addKeywordCriteria(List<Criteria> andCriteriaList, String keywordLogic, String keyword) {
        // 키워드 조건 추가
        if (keyword != null && !keyword.trim().isEmpty()) {
            if ("all".equals(keywordLogic)) {
                Criteria orCriteria = new Criteria();
                orCriteria.orOperator(
                    Criteria.where("boardId").regex(keyword, "i"),
                    Criteria.where("publishingAgency").regex(keyword, "i"),
                    Criteria.where("requestingAgency").regex(keyword, "i"),
                    Criteria.where("title").regex(keyword, "i")
                );
            andCriteriaList.add(orCriteria);
            } else if ("boardId".equals(keywordLogic)) {
                andCriteriaList.add(Criteria.where("boardId").regex(keyword, "i"));
            } else if ("publishingAgency".equals(keywordLogic)) {
                andCriteriaList.add(Criteria.where("publishingAgency").regex(keyword, "i"));
            } else if ("requestingAgency".equals(keywordLogic)) {
                andCriteriaList.add(Criteria.where("requestingAgency").regex(keyword, "i"));
            } else if ("title".equals(keywordLogic)) {
                andCriteriaList.add(Criteria.where("title").regex(keyword, "i"));
            }
        }
        return andCriteriaList;
    }

    private Map<String, List<Criteria>> addCategoryCriteria(List<Criteria> orCriteriaList, List<Criteria> andCriteriaList, String categoryLogic, List<String> categories) {
        if (categories != null && !categories.isEmpty()) {
            if ("OR".equals(categoryLogic)) {
                categories.forEach(category -> orCriteriaList.add(Criteria.where("type").regex(category, "i")));
            } else if ("AND".equals(categoryLogic)) {
                categories.forEach(category -> andCriteriaList.add(Criteria.where("type").is(category)));
            }
        }

        // 결과를 Map으로 반환
        Map<String, List<Criteria>> criteriaMap = new HashMap<>();
        criteriaMap.put("or", orCriteriaList);
        criteriaMap.put("and", andCriteriaList);
        return criteriaMap;
    }

    public long countWithDynamicQuery(String keywordLogic, String keyword, String categoryLogic, List<String> categories, String todayStr, String noticeRange) {
        Query query = new Query();

        // 초기 Criteria 생성
        Criteria mainCriteria = new Criteria();
        List<Criteria> orCriteriaList = new ArrayList<>();
        List<Criteria> andCriteriaList = new ArrayList<>();

        // 키워드 조건 추가
        andCriteriaList = addKeywordCriteria(andCriteriaList, keywordLogic, keyword);

        // 카테고리 변환
        List<String> categoriesKor = new ArrayList<>();
        for (String category : categories) {
            if ("others".equals(category)) {
                categoriesKor.add("기타");
            } else if ("ai".equals(category)) {
                categoriesKor.add("인공지능");
            } else if ("data".equals(category)) {
                categoriesKor.add("데이터베이스");
            } else if ("cloud".equals(category)) {
                categoriesKor.add("클라우드 컴퓨팅");
            } else if ("software".equals(category)) {
                categoriesKor.add("소프트웨어 개발 및 관리");
            } else if ("iot".equals(category)) {
                categoriesKor.add("IoT");
            } else if ("blockchain".equals(category)) {
                categoriesKor.add("블록체인");
            } else if ("metabus".equals(category)) {
                categoriesKor.add("AR/VR 및 메타버스");
            } else if ("network".equals(category)) {
                categoriesKor.add("네트워크 및 보안");
            } else if ("isp".equals(category)) {
                categoriesKor.add("ISP/ISMP");
            } else {
                categoriesKor.add(category); // 변환 조건에 해당하지 않는 경우 원래 값을 추가
            }
        }

        // 카테고리 조건 추가
        Map<String, List<Criteria>> criteriaMap = addCategoryCriteria(orCriteriaList, andCriteriaList, categoryLogic, categoriesKor);
        orCriteriaList = criteriaMap.get("or");
        andCriteriaList = criteriaMap.get("and");

        // 추가 조건: openDate와 itNoticeCheck
        andCriteriaList.add(Criteria.where("itNoticeCheck").is("True"));
        if ("마감되지 않은 공고".equals(noticeRange)) {
            andCriteriaList.add(Criteria.where("openDate").gte(todayStr)); // openDate가 현재 시간보다 큰 경우
        } else if ("마감된 공고".equals(noticeRange)) {
            andCriteriaList.add(Criteria.where("openDate").lt(todayStr)); // openDate가 현재 시간보다 큰 경우            
        }


        // OR 조건을 하나의 Criteria로 추가
        if (!orCriteriaList.isEmpty()) {
            mainCriteria.orOperator(orCriteriaList.toArray(new Criteria[0]));
        }

        // AND 조건을 하나의 Criteria로 추가
        if (!andCriteriaList.isEmpty()) {
            mainCriteria.andOperator(andCriteriaList.toArray(new Criteria[0]));
        }

        // 최종 Criteria를 Query에 추가
        if (!mainCriteria.getCriteriaObject().isEmpty()) {
            query.addCriteria(mainCriteria);
        }

        // MongoDB에서 총 개수 조회
        return mongoTemplate.count(query, Bemon.class);
    }

}