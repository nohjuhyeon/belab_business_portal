<%@ page language="java" contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../common/header.jsp" %>

<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>게시글 상세보기</title>
  <style>
    body {
      font-family: Arial, sans-serif;
      background-color: #f4f4f4;
      margin: 0;
      padding: 0;
    }

    .header-blank {
      height: 270px;
    }

    .header-section {
      background-image: url('/images/universe2.jpg');
      background-size: 100% auto;
      background-position: top;
      background-repeat: no-repeat;
      color: #fff;
      text-align: center;
      padding: 20px 0;
      box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
      height: 375px;
    }

    .header-section h2 {
      font-size: 36px;
      margin: 0;
      font-weight: bold;
    }

    .container {
      margin: 30px auto;
      max-width: 1200px;
      background: #fff;
      padding: 30px;
      border-radius: 10px;
      box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
    }

    h1 {
      text-align: center;
      margin-bottom: 20px;
      font-size: 28px;
      color: #333;
    }

    table {
      width: 100%;
      border-collapse: collapse;
      margin-bottom: 20px;
    }

    table th, table td {
      text-align: left;
      padding: 12px;
      border: 1px solid #ddd;
    }

    table th {
      background-color: #f1f1f1;
      color: #333;
      font-weight: bold;
    }

    pre {
      background-color: #f7f7f7;
      padding: 15px;
      border-radius: 8px;
      white-space: pre-wrap;
      word-wrap: break-word;
      font-size: 16px;
      color: #444;
      box-shadow: inset 0 1px 3px rgba(0, 0, 0, 0.1);
      margin-bottom: 20px;
      min-height: 200px;
    }

    .content-section, .reply-section {
      margin-bottom: 20px;
    }

    .content-section h3, .reply-section h3 {
      margin-bottom: 10px;
      font-size: 20px; /* 제목 크기 */
      font-weight: bold; /* 제목 굵기 */
      color: #444; /* 제목 색상 */
    }

    .content-section pre, .reply-section pre {
      font-size: 16px; /* 본문 및 답변 텍스트 크기 */
      line-height: 1.6; /* 줄 간격 */
      color: #333; /* 텍스트 색상 */
      padding: 20px; /* 텍스트 내부 여백 */
      background-color: #f9f9f9; /* 배경색 */
      border: 1px solid #ddd; /* 테두리 */
      border-radius: 8px; /* 모서리 둥글게 */
    }

    .button-container {
      display: flex;
      justify-content: flex-end;
      gap: 10px;
      margin-top: 20px;
    }

    .btn {
      display: inline-block;
      font-weight: bold;
      text-align: center;
      padding: 10px 20px;
      border-radius: 5px;
      text-decoration: none;
      transition: background-color 0.3s ease, color 0.3s ease;
      border: 1px solid #ddd;
      background-color: #f9f9f9;
      color: #333;
      cursor: pointer;
    }

    .btn:hover {
      background-color: #ddd;
    }

    .btn-danger {
      background-color: #f9f9f9;
      border-color: #ddd;
      color: #333;
    }

    .btn-danger:hover {
      background-color: #ddd;
    }
  </style>
  <script>
    function navigateTo(url) {
      window.location.href = url;
    }
  </script>
</head>
<body>
<div class="header-section">
  <div class="header-blank"></div>
  <h2>문의 게시판</h2>
</div>

<div class="container">

  <table>
    <tr>
      <th>제목</th>
      <td  colspan="3">${board.title}</td>
    </tr>
    <tr>
      <th style="width: 10%">작성자</th>
      <td style="width: 40%">${board.username}</td>
      <th style="width: 10%">작성일</th>
      <td style="width: 40%">${board.formattedCreatedAt}</td>
    </tr>
  </table>

  <!-- 본문 내용 -->
  <div class="content-section">
    <h3>본문 내용</h3>
    <pre>${board.content}</pre>
  </div>

    <div class="button-container">
    <!-- 목록 버튼 -->
    <button type="button" class="btn" onclick="navigateTo('/notice/boardList')">목록</button>

    <!-- 수정 버튼 -->
    <button type="button" class="btn" onclick="navigateTo('/notice/editBoard/${board.dashboard_id}')">수정</button>

    <!-- 삭제 버튼 -->
    <form action="/notice/deleteBoard" method="post" style="margin-bottom: 0px;">
      <input type="hidden" name="dashboard_id" value="${board.dashboard_id}">
      <button type="submit" class="btn btn-danger">삭제</button>
    </form>
  </div>
</div>

<%@ include file="../common/footer.jsp" %>
</body>
</html>

<%--   <!-- 수정 및 삭제 버튼 -->--%>
<%--    <div class="d-flex justify-content-end mb-3">--%>
<%--      <c:if test="${loggedInUser != null && loggedInUser.username == board.username}">--%>
<%--        <a href="/notice/editBoard/${board.dashboard_id}" class="btn btn-primary">수정</a>--%>
<%--        <button class="btn btn-primary" onclick="deleteBoard(${board.dashboard_id})">삭제</button>--%>
<%--      </c:if>--%>
<%--    </div>--%>
<%--  </div>--%>

