<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="../common/header.jsp" %>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <title>회원가입</title>
  <style>
    .header-blank {
      height: 270px;
    }

    .header-section {
      background-image: url('../images/universe2.jpg');
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

    .signup-body {
      display: flex;
      justify-content: center;
      align-items: center;
      height: 850px;
      background-color: #f4f4f4;
      margin: 0;
      font-family: Arial, sans-serif;
    }

    .signup-container {
      width: 100%;
      max-width: 600px;
      background: #fff;
      padding: 40px;
      border-radius: 10px;
      box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
    }

    .signup-container h3 {
      text-align: center;
      margin-bottom: 30px;
      font-size: 24px;
      color: #333;
    }

    .signup-container .form-group {
      margin-bottom: 20px;
    }

    .signup-container label {
      font-weight: bold;
      margin-bottom: 5px;
      display: block;
      color: #555;
    }

    .signup-container input[type="text"],
    .signup-container input[type="email"],
    .signup-container input[type="password"] {
      width: 100%;
      padding: 12px;
      border: 1px solid #ddd;
      border-radius: 5px;
      font-size: 16px;
    }

    .signup-container input[type="radio"] {
      margin-right: 5px;
    }

    .form-group-inline {
      display: flex;
      align-items: center;
      gap: 15px;
    }

    .signup-container button {
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

    .signup-container button:hover {
      background-color: #6a1b1b;
      color: #fff;
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
      display: none; /* 기본적으로 숨김 */
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

    .popup-overlay {
      position: fixed;
      top: 0;
      left: 0;
      width: 100%;
      height: 100%;
      background-color: rgba(0, 0, 0, 0.5);
      z-index: 999;
      display: none; /* 기본적으로 숨김 */
    }
  </style>
  <script>
    function showPopup(message) {
      const popup = document.querySelector('.custom-popup');
      const overlay = document.querySelector('.popup-overlay');
      popup.querySelector('p').innerText = message;
      popup.style.display = 'block';
      overlay.style.display = 'block';
    }

    function closePopup() {
      const popup = document.querySelector('.custom-popup');
      const overlay = document.querySelector('.popup-overlay');
      popup.style.display = 'none';
      overlay.style.display = 'none';
    }

    function validateForm(event) {
      const password = document.getElementById("password").value;
      const confirmPassword = document.getElementById("confirmPassword").value;

      if (password !== confirmPassword) {
        event.preventDefault(); // 폼 제출 방지
        showPopup("비밀번호가 일치하지 않습니다. 다시 확인해주세요.");
      }
    }

    window.onload = function () {
      const errorMessage = '<%= request.getAttribute("error") != null ? request.getAttribute("error") : "" %>';
      if (errorMessage) {
        showPopup(errorMessage);
      }
    };
  </script>
</head>

<body>
  <div class="header-section">
    <div class="header-blank"></div>
    <h2>회원가입</h2>
  </div>

  <div class="signup-body">
    <div class="signup-container">
      <h3>회원가입을 환영합니다!</h3>
      <form action="/member/userjoin" method="post" onsubmit="validateForm(event)">
        <div class="form-group">
          <label for="username">사용자 이름</label>
          <input type="text" id="username" name="username" placeholder="이름을 입력하세요" required>
        </div>
        <div class="form-group">
          <label for="email">이메일</label>
          <input type="email" id="email" name="email" placeholder="example@example.com" required>
        </div>
        <div class="form-group">
          <label for="password">비밀번호</label>
          <input type="password" id="password" name="password" placeholder="비밀번호를 입력하세요" required>
        </div>
        <div class="form-group">
          <label for="confirmPassword">비밀번호 확인</label>
          <input type="password" id="confirmPassword" name="confirmPassword" placeholder="비밀번호를 다시 입력하세요" required>
        </div>
        <div class="form-group">
          <label for="hp">휴대전화 번호</label>
          <input type="text" id="hp" name="hp" placeholder="휴대전화 번호를 입력하세요" required>
        </div>
        <div class="form-group">
          <label>소속</label>
          <div class="form-group-inline">
            <input type="radio" id="belab" name="role" value="belab">
            <label for="belab">비이랩</label>
            <input type="radio" id="user" name="role" value="user" checked>
            <label for="user">기타 소속</label>
          </div>
        </div>
        <button type="submit">회원가입</button>
      </form>
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
