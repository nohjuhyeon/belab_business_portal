<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="../common/header.jsp" %>

<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>글 작성</title>
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

    .container {
      margin: 30px auto;
      max-width: 800px;
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
      margin-top: 20px;
      background-color: #f9f9f9; /* 배경색 추가 */
      padding: 15px 20px; /* 패딩 추가 */
      border-radius: 8px; /* 둥근 모서리 */
      box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1); /* 그림자 효과 */
      display: inline-block; /* 텍스트 크기에 맞게 박스 크기 조정 */
    }

    .form-group {
      margin-bottom: 20px;
    }

    .form-group label {
      display: block;
      font-weight: bold;
      margin-bottom: 5px;
      color: #333;
    }

    .form-control {
      width: 100%;
      padding: 10px;
      font-size: 16px;
      border: 1px solid #ddd;
      border-radius: 5px;
      box-shadow: inset 0 1px 3px rgba(0, 0, 0, 0.1);
    }

    .form-control:focus {
      border-color: #6a1b1b;
      outline: none;
      box-shadow: 0 0 5px rgba(106, 27, 27, 0.5);
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
  </style>
</head>
<body>
  <div class="header-section">
    <div class="header-blank"></div>
    <h2>문의 게시판</h2>
  </div>

  <div class="container">
    <h1>글 작성</h1>

    <form action="/contact/createBoard" method="post" class="p-4">
      <div class="form-group">
        <label for="title">제목</label>
        <input type="text" class="form-control" id="title" name="title" placeholder="제목을 입력하세요" required>
      </div>
      <div class="form-group">
        <label for="content">내용</label>
        <textarea class="form-control" id="content" name="content" rows="6" placeholder="내용을 입력하세요" required></textarea>
      </div>
      <div class="text-right">
        <button type="submit" class="btn btn-primary">저장</button>
      </div>
    </form>
  </div>

  <%@ include file="../common/footer.jsp" %>
</body>
</html>