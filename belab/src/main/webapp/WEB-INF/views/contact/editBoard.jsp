<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="ko">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>게시글 수정</title>
  <link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
  <style>
    .header-blank {
      height: 270px;
    }

    .header-section {
      background-image: url('../images/universe2.jpg');
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
  </style>
</head>
<body>

<%@ include file="../common/header.jsp" %>
<div class="header-section">
  <div class="header-blank"></div>
  <h2>계시글 수정</h2>
</div>

  <form action="/contact/editBoard" method="post">
    <input type="hidden" name="dashboard_id" value="${board.dashboard_id}">
    <div class="form-group">
      <label for="title">제목</label>
      <input type="text" class="form-control" id="title" name="title" value="${board.title}" required>
    </div>
    <div class="form-group">
      <label for="content">내용</label>
      <textarea class="form-control" id="content" name="content" rows="5" required>${board.content}</textarea>
    </div>
    <button type="submit" class="btn btn-primary">수정</button>
    <a href="/contact/boardList" class="btn btn-secondary">취소</a>
  </form>
</div>

<%@ include file="../common/footer.jsp" %>

<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

</body>
</html>
