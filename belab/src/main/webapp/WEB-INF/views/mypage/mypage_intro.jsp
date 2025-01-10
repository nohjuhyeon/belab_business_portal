<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ include file="../common/header.jsp" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>Mypage Intro</title>
</head>
<body>
<h1>환영합니다, ${username}님!</h1>
<p>마이페이지에 오신 것을 환영합니다.</p>
<a href="/member/logout">로그아웃</a>
<%@ include file="../common/footer.jsp" %>
</body>
</html>
