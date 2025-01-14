<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="../common/header.jsp" %>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <title>비밀번호 찾기</title>
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

    .find-password-body {
      display: flex;
      justify-content: center;
      align-items: center;
      height: 500px;
      background-color: #f4f4f4;
      font-family: Arial, sans-serif;
      padding: 20px;
    }

    .find-password-container {
      width: 100%;
      max-width: 600px;
      background: #fff;
      padding: 40px;
      border-radius: 10px;
      box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
    }

    .find-password-container h3 {
      text-align: center;
      margin-bottom: 30px;
      font-size: 24px;
      color: #333;
    }

    .find-password-container .form-group {
      margin-bottom: 20px;
    }

    .find-password-container label {
      font-weight: bold;
      margin-bottom: 5px;
      display: block;
      color: #555;
    }

    .find-password-container input[type="text"],
    .find-password-container input[type="email"] {
      width: 100%;
      padding: 12px;
      border: 1px solid #ddd;
      border-radius: 5px;
      font-size: 16px;
    }

    .find-password-container button {
      width: 100%;
      padding: 14px;
      background-color: #eae0d5;
      border: none;
      border-radius: 5px;
      font-size: 18px;
      font-weight: bold;
      color: #6a1b1b;
      cursor: pointer;
      box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
      transition: background-color 0.3s ease, color 0.3s ease;
    }

    .find-password-container button:hover {
      background-color: #6a1b1b;
      color: #fff;
    }

    .find-password-container .links {
      margin-top: 20px;
      display: flex;
      justify-content: flex-end;
    }

    .find-password-container .links a {
      font-size: 14px;
      color: #6a1b1b;
      text-decoration: none;
      transition: color 0.3s ease;
    }

    .find-password-container .links a:hover {
      color: #333;
      text-decoration: underline;
    }

    /* 커스텀 팝업 스타일 */
    .custom-popup {
      position: fixed;
      top: 50%;
      left: 50%;
      transform: translate(-50%, -50%);
      background-color: #fff;
      border-radius: 10px;
      box-shadow: 0 4px 6px rgba(0, 0, 0, 0.2);
      width: 90%;
      max-width: 400px;
      padding: 20px;
      z-index: 1000;
      text-align: center;
      display: none;
    }

    .custom-popup h4 {
      font-size: 20px;
      color: #6a1b1b;
      margin-bottom: 15px;
    }

    .custom-popup p {
      font-size: 16px;
      color: #555;
      margin-bottom: 20px;
    }

    .custom-popup button {
      padding: 10px 20px;
      background-color: #6a1b1b;
      color: #fff;
      border: none;
      border-radius: 5px;
      font-size: 16px;
      cursor: pointer;
      transition: background-color 0.3s ease;
    }

    .custom-popup button:hover {
      background-color: #eae0d5;
      color: #6a1b1b;
    }

    /* 팝업 배경 (모달 효과) */
    .popup-overlay {
      position: fixed;
      top: 0;
      left: 0;
      width: 100%;
      height: 100%;
      background-color: rgba(0, 0, 0, 0.5);
      z-index: 999;
      display: none;
    }
  </style>
  <script>
    // 커스텀 팝업 열기
    function showPopup(message) {
      const popup = document.querySelector('.custom-popup');
      const overlay = document.querySelector('.popup-overlay');
      popup.querySelector('p').innerText = message;
      popup.style.display = 'block';
      overlay.style.display = 'block';
    }

    // 커스텀 팝업 닫기
    function closePopup() {
      const popup = document.querySelector('.custom-popup');
      const overlay = document.querySelector('.popup-overlay');
      popup.style.display = 'none';
      overlay.style.display = 'none';
    }

    // 페이지 로드 시 실행
    window.onload = function () {
      const errorMessage = "<%= request.getAttribute("error") != null ? request.getAttribute("error") : "" %>";
      if (errorMessage) {
        showPopup(errorMessage);
      }
    };
  </script>
</head>

<body>
  <div class="header-section">
    <div class="header-blank"></div>
    <h2>비밀번호 찾기</h2>
  </div>

  <div class="find-password-body">
    <div class="find-password-container">
      <h3>비밀번호 찾기</h3>
      <form action="/member/DeletefindPassword" method="post">
        <div class="form-group">
          <label for="email">이메일</label>
          <input type="email" id="email" name="email" placeholder="등록된 이메일을 입력하세요" required>
        </div>
        <div class="form-group">
          <label for="username">사용자 이름</label>
          <input type="text" id="username" name="username" placeholder="사용자 이름을 입력하세요" required>
        </div>
        <button type="submit">비밀번호 찾기</button>
      </form>
      <div class="links">
        <a href="/member/login">로그인으로 돌아가기</a>
      </div>
    </div>
  </div>

  <!-- 커스텀 팝업 -->
  <div class="popup-overlay" onclick="closePopup()"></div>
  <div class="custom-popup">
    <h4>알림</h4>
    <p></p>
    <button onclick="closePopup()">확인</button>
  </div>
</body>

<%@ include file="../common/footer.jsp" %>