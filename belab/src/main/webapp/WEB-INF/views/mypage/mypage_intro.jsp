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
      height: 270px;
  }
  .header-section {
    background-image: url('images/universe.jpg');
    background-size: 100% auto; /* 너비를 100%로 설정하고 높이는 자동으로 조정 */
    background-position: bottom; /* 이미지의 아래쪽이 보이도록 설정 */
    background-repeat: no-repeat; /* 이미지가 반복되지 않도록 설정 */
    color: #fff;
    text-align: center;
    padding: 20px 0;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
    height: 375px; /* 컨테이너 높이 고정 */
  }

  </style>
</head>
<div class="header-section">
  <div class="header-blank"></div>
</div>

<body>
<h1>환영합니다, ${username}님!</h1>
<p>마이페이지에 오신 것을 환영합니다.</p>

<a href="/member/modifyForm">회원정보 수정</a>
<a href="/member/logout">로그아웃</a>
<%@ include file="../common/footer.jsp" %>
</body>
</html>
