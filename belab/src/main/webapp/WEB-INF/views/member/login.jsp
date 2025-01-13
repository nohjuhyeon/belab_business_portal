<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="../common/header.jsp" %>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <title>로그인</title>
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

    .login-body {
      display: flex;
      justify-content: center;
      align-items: center;
      height: calc(50vh);
      background-color: #f4f4f4;
      margin: 0;
      font-family: Arial, sans-serif;
    }

    .login-container {
      width: 100%;
      max-width: 600px;
      background: #fff;
      padding: 40px;
      border-radius: 10px;
      box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
    }

    .login-container h3 {
      text-align: center;
      margin-bottom: 30px;
      font-size: 24px;
      color: #333;
    }

    .login-container .form-group {
      margin-bottom: 20px;
    }

    .login-container label {
      font-weight: bold;
      margin-bottom: 5px;
      display: block;
      color: #555;
    }

    .login-container input[type="email"],
    .login-container input[type="password"] {
      width: 100%;
      padding: 12px;
      border: 1px solid #ddd;
      border-radius: 5px;
      font-size: 16px;
    }

    .login-container button {
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

    .login-container button:hover {
      background-color: #6a1b1b;
      color: #fff;
    }

    .login-container .links {
      display: flex;
      justify-content: space-between;
      margin-top: 20px;
    }

    .login-container .links a {
      font-size: 14px;
      color: #6a1b1b;
      text-decoration: none;
      transition: color 0.3s ease;
    }

    .login-container .links a:hover {
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

    /* 팝업 배경 (모달 효과) */
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
    // URL에서 특정 파라미터 값을 가져오는 함수
    function getQueryParam(param) {
      const urlParams = new URLSearchParams(window.location.search);
      return urlParams.get(param);
    }

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
      const error = getQueryParam('error');
      if (error === 'true') {
        showPopup('비밀번호가 틀렸습니다. 다시 시도해주세요.');
      }
    };
  </script>
</head>

<body>
  <div class="header-section">
    <div class="header-blank"></div>
    <h2>로그인</h2>
  </div>

  <div class="login-body">
    <div class="login-container">
      <h3>환영합니다!</h3>
      <form action="/member/login" method="post">
        <div class="form-group">
          <label for="email">이메일</label>
          <input type="email" id="email" name="email" placeholder="이메일을 입력하세요">
        </div>
        <div class="form-group">
          <label for="password">비밀번호</label>
          <input type="password" id="password" name="password" placeholder="비밀번호를 입력하세요">
        </div>
        <button type="submit">로그인</button>
      </form>
      <div class="links">
        <a href="/forgot-password">아이디/비밀번호 찾기</a>
        <a href="/member/userjoin">회원가입</a>
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

</html>