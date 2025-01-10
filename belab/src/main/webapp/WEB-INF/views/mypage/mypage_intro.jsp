<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ include file="../common/header.jsp" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>Mypage Intro</title>
  <style>
    .header-blank {
      height: 200px;
  }
  .header-section {
      background-color: rgb(124, 124, 124); /* 남색 배경 + 투명도 */
      color: #fff;
      text-align: center;
      padding: 20px 0;
      top: 0;
      left: 0;
      width: 100%;
      box-shadow: 0 2px 5px rgba(0, 0, 0, 0.2);
      padding-top : 0px;
      padding-bottom : 0px;
      height : 395px;
  }

  </style>
</head>
<div class="header-section">
  <div class="header-blank"></div>
</div>

<body>
<h1>환영합니다, ${username}님!</h1>
<p>마이페이지에 오신 것을 환영합니다.</p>
<a href="/member/logout">로그아웃</a>
<%@ include file="../common/footer.jsp" %>
</body>
</html>
