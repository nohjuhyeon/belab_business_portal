package com.belab.co.kr.bemon.dto;

import java.util.List;

public class BoardRequest {
    private Integer page;
    private String keywordLogic;
    private String keyword;
    private String categoryLogic;
    private List<String> categories;

    // Getters and Setters
    public Integer getPage() {
        return page;
    }

    public void setPage(Integer page) {
        this.page = page;
    }

    public String getKeywordLogic() {
        return keywordLogic;
    }

    public void setKeywordLogic(String keywordLogic) {
        this.keywordLogic = keywordLogic;
    }

    public String getKeyword() {
        return keyword;
    }

    public void setKeyword(String keyword) {
        this.keyword = keyword;
    }

    public String getCategoryLogic() {
        return categoryLogic;
    }

    public void setCategoryLogic(String categoryLogic) {
        this.categoryLogic = categoryLogic;
    }

    public List<String> getCategories() {
        return categories;
    }

    public void setCategories(List<String> categories) {
        this.categories = categories;
    }

}
