
package com.belab.co.kr.bemon.model;

import java.text.DecimalFormat;
import java.time.LocalDate;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.time.format.DateTimeParseException;
import java.util.List;
import java.util.Map;

import org.springframework.data.annotation.Id;
import org.springframework.data.mongodb.core.mapping.Document;
import org.springframework.data.mongodb.core.mapping.Field;

@Document(collection = "notice_list") // MongoDB 컬렉션 이름
public class Bemon {
    @Id
    private String id;

    @Field("notice_id") // MongoDB 컬럼명과 매핑
    private String boardId; // Java 필드명

    @Field("title") // MongoDB 컬럼명과 매핑
    private String title;

    @Field("total_price") // MongoDB 컬럼명과 매핑
    private String price;

    @Field("publishing_agency") // MongoDB 컬럼명과 매핑
    private String publishingAgency;

    @Field("requesting_agency") // MongoDB 컬럼명과 매핑
    private String requestingAgency;

    @Field("start_date") // MongoDB 컬럼명과 매핑
    private String startDate;

    @Field("end_date") // MongoDB 컬럼명과 매핑
    private String endDate;

    @Field("open_date") // MongoDB 컬럼명과 매핑
    private String openDate;

    @Field("link") // MongoDB 컬럼명과 매핑
    private String link;

    @Field("it_notice_check") // MongoDB 컬럼명과 매핑
    private String itNoticeCheck;

    @Field("summary") // MongoDB 컬럼명과 매핑
    private String summary;

    @Field("type") // MongoDB 컬럼명과 매핑
    private String type;

    @Field("notice_class") // MongoDB 컬럼명과 매핑
    private String noticeClass;

    @Field("file_list") // MongoDB 컬럼명과 매핑
    private List<Map<String, String>> fileList;

    private static final DateTimeFormatter INPUT_FORMATTER = DateTimeFormatter.ofPattern("yyyy-MM-dd HH:mm:ss");
    private static final DateTimeFormatter OUTPUT_FORMATTER = DateTimeFormatter.ofPattern("yyyy-MM-dd");

    // Getters and Setters
    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getBoardId() { // Getter는 Java 필드명 기준
        return boardId;
    }

    public void setBoardId(String boardId) {
        this.boardId = boardId;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getPrice() {
        if (price == null || price.isEmpty()) {
            return "공고 확인 필요";
        }
        try {
            long priceValue = Long.parseLong(price); // String -> long 변환
            DecimalFormat formatter = new DecimalFormat("#,###"); // 1,000 단위로 콤마 추가
            return formatter.format(priceValue) + " 원"; // 포맷팅된 값에 "원" 추가
        } catch (NumberFormatException e) {
            // 숫자로 변환할 수 없는 경우 기본값 반환
            return "공고 확인 필요";
        }
    }

    public void setPrice(String price) {
        this.price = price;
    }

    // 억 단위 금액 반환 (예: 12억)
    public String getPriceSummary() {
        if (price == null || price.isEmpty()) {
            return "공고 확인 필요";
        }
        try {
            double priceValue = Double.parseDouble(price);
            double eok = priceValue / 100000000.0;
            if (eok < 0.01) {
                return "0 억원";
            }
            DecimalFormat formatter = new DecimalFormat("#,##0.##");
            return formatter.format(eok) + " 억원";
        } catch (NumberFormatException e) {
            return "공고 확인 필요";
        }
    }

    public String getPublishingAgency() { // 추가된 Getter
        return publishingAgency;
    }

    public void setPublishingAgency(String publishingAgency) { // 추가된 Setter
        this.publishingAgency = publishingAgency;
    }

    public String getRequestingAgency() {
        return requestingAgency;
    }

    public void setRequestingAgency(String requestingAgency) {
        this.requestingAgency = requestingAgency;
    }

    public String getStartDate() {
        return LocalDateTime.parse(startDate, INPUT_FORMATTER).format(OUTPUT_FORMATTER);
    }

    public void setStartDate(String startDate) {
        this.startDate = startDate;
    }

    // Getter 메서드
    public String getEndDate() {
        if (endDate == null || endDate.trim().isEmpty()) {
            return "공고 확인 필요";
        }
        try {
            // LocalDateTime으로 파싱 후 원하는 형식으로 변환
            return LocalDateTime.parse(endDate, INPUT_FORMATTER).format(OUTPUT_FORMATTER);
        } catch (DateTimeParseException e) {
            // 예외 발생 시 로그 출력 및 기본값 반환
            System.err.println("Invalid date format for endDate: " + endDate);
            return "공고 확인 필요";
        }
    }

    // Setter 메서드 (필요 시)
    public void setEndDate(String endDate) {
        this.endDate = endDate;
    }

    public String getOpenDate() {
        return LocalDateTime.parse(openDate, INPUT_FORMATTER).format(OUTPUT_FORMATTER);
    }

    public void setOpenDate(String openDate) {
        this.openDate = openDate;
    }

    public String getLink() {
        return link;
    }

    public void setLink(String link) {
        this.link = link;
    }

    public String getItNoticeCheck() {
        return itNoticeCheck;
    }

    public void setItNoticeCheck(String itNoticeCheck) {
        this.itNoticeCheck = itNoticeCheck;
    }

    public String getSummary() {
        return summary;
    }

    public void setSummary(String summary) {
        this.summary = summary;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    public String getNoticeClass() {
        return noticeClass;
    }

    public void setNoticeClass(String noticeClass) {
        this.noticeClass = noticeClass;
    }

    public List<Map<String, String>> getFileList() {
        return fileList;
    }

    public void setFileList(List<Map<String, String>> fileList) {
        this.fileList = fileList;
    }

    // 마감일이 지났으면 '마감', 남았으면 '마감 n일 전' 반환 (오늘 기준)
    public String getRemainDaysText() {
        if (endDate == null || endDate.trim().isEmpty()) {
            return "";
        }
        try {
            LocalDate end = LocalDate.parse(endDate.substring(0, 10)); // yyyy-MM-dd
            LocalDate today = LocalDate.now();
            int diff = (int) (end.toEpochDay() - today.toEpochDay());
            if (diff < 0) {
                return "마감";
            } else {
                return "마감 " + diff + "일 전";
            }
        } catch (Exception e) {
            return "";
        }
    }

}
