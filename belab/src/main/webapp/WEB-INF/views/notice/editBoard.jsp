<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="../common/header.jsp" %>

<!DOCTYPE html>
<html lang="ko">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>게시글 수정</title>
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

    .container {
      margin: 40px auto;
      max-width: 800px;
      background: #fff;
      padding: 30px;
      border-radius: 10px;
      box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
    }

    h1 {
      font-size: 28px;
      text-align: center;
      margin-bottom: 20px;
      color: #333;
    }

    .form-group {
      margin-bottom: 20px;
    }

    .form-group label {
      display: block;
      font-weight: bold;
      margin-bottom: 8px;
      font-size: 16px;
      color: #555;
    }

    .form-control {
      width: 100%;
      padding: 10px;
      font-size: 16px;
      border: 1px solid #ddd;
      border-radius: 5px;
      box-sizing: border-box;
      background-color: #f9f9f9;
      transition: border-color 0.3s ease;
    }

    .form-control:focus {
      border-color: #007bff;
      outline: none;
      background-color: #fff;
    }

    textarea.form-control {
      resize: none;
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

    .text-right {
      text-align: right;
    }
  </style>
</head>
<body>
  <div class="header-section">
    <div class="header-blank"></div>
    <h2>문의 게시판</h2>
  </div>
  <div class="container">
    <h1>게시글 수정</h1>

    <form action="/notice/editBoard" method="post" class="p-4">
      <input type="hidden" name="dashboard_id" value="${board.dashboard_id}">
      <div class="form-group">
        <label for="title">제목</label>
        <input type="text" class="form-control" id="title" name="title" value="${board.title}" required>
      </div>
      <div class="form-group">
        <label for="content">내용</label>
        <textarea class="form-control" id="content" name="content" rows="6" required>${board.content}</textarea>
      </div>
      <div class="text-right">
        <button type="submit" class="btn">저장</button>
        <a href="/notice/viewBoard/${board.dashboard_id}" class="btn">취소</a>
      </div>
    </form>
  </div>


  <%@ include file="../common/footer.jsp" %>
</body>
</html>