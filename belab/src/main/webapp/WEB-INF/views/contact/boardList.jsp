<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="../common/header.jsp" %>

<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>게시판</title>
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
        background-size: cover;
        background-position: center;
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
  
    .header-section h2 {
      font-size: 36px;
      margin: 0;
      font-weight: bold;
    }

    .board-container {
      margin: 30px auto;
      max-width: 1600px;
      background: #fff;
      padding: 30px;
      border-radius: 10px;
      box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
    }

    .board-container h1 {
      text-align: center;
      margin-bottom: 20px;
      font-size: 28px;
      color: #333;
      margin-top: 20px;
      font-weight: bold;
    }

    .btn-primary {
        background-color: #eae0d5;
        color: #6a1b1b;
        border: none;
        font-weight: bold;
        padding: 10px 20px;
        border-radius: 5px;
        cursor: pointer;
        transition: background-color 0.3s ease, color 0.3s ease;
      }
  
      .btn-primary:hover {
        background-color: #6a1b1b;
        color: #fff;
      }
  
      .table {
        width: 100%;
        border-collapse: collapse;
        margin-top: 20px;
      }
  
      .table thead {
        background-color: #6a1b1b;
        color: #fff;
      }
  
      .table th, .table td {
        padding: 15px;
        text-align: center;
        border: 1px solid #ddd;
      }
  
      .table th.title-column, .table td.title-column {
        width: 60%;
        text-align: left;
        padding-left: 15px;
      }
  
      .table tbody tr:nth-child(even) {
        background-color: #f9f9f9;
      }
  
      .table tbody tr:hover {
        background-color: #f1f1f1;
      }
  
      .table a {
        text-decoration: none;
        color: #6a1b1b;
        font-weight: bold;
        transition: color 0.3s ease;
      }
  
      .table a:hover {
        color: #333;
        text-decoration: underline;
      }
  
      .text-muted {
        color: #aaa;
        font-style: italic;
        cursor: not-allowed;
      }
  </style>
</head>
<body>
  <div class="header-section">
    <div class="header-blank"></div>
    <h2>문의 게시판</h2>
  </div>

  <div class="board-container">
    <h1>문의 게시판에 오신 것을 환영합니다.</h1>

    <!-- 글 작성 버튼 -->
    <div class="d-flex justify-content-end mb-3">
      <a href="/contact/createBoard" class="btn btn-primary">글 작성</a>
    </div>

    <!-- 게시글 목록 테이블 -->
    <div class="table-responsive">
      <table class="table table-hover">
        <thead>
          <tr>
            <th>번호</th>
            <th class="title-column">제목</th>
            <th>작성자</th>
            <th>작성일</th>
          </tr>
        </thead>
        <tbody>
          <c:forEach var="board" items="${boards}">
            <tr>
              <td>${board.dashboard_id}</td>
              <td class="title-column">
                <!-- 본인이 작성한 게시글일 경우에만 링크 활성화 -->
                <c:if test="${not empty loggedInUser && loggedInUser.username == board.username}">
                  <a href="/contact/viewBoard/${board.dashboard_id}">${board.title}</a>
                </c:if>
                <!-- 본인이 작성하지 않은 게시글은 링크 비활성화 -->
                <c:if test="${empty loggedInUser || loggedInUser.username != board.username}">
                  <span class="text-muted">${board.title}</span>
                </c:if>
              </td>
              <td>${board.username}</td>
              <td>${board.formattedUpdatedAt}</td>
            </tr>
          </c:forEach>
        </tbody>
      </table>
    </div>
  </div>

  <%@ include file="../common/footer.jsp" %>
</body>
</html>