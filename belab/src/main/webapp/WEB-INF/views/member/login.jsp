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
      background-image: url('../images/universe.jpg');
      background-size: 100% auto; /* 너비를 100%로 설정하고 높이는 자동으로 조정 */
      background-position: bottom; /* 이미지의 아래쪽이 보이도록 설정 */
      background-repeat: no-repeat; /* 이미지가 반복되지 않도록 설정 */
      color: #fff;
      text-align: center;
      padding: 20px 0;
      box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
      height: 375px; /* 컨테이너 높이 고정 */
    }

    .header-section h2 {
      font-size: 36px;
      margin: 0;
      font-weight: bold;
    }

    /* 로그인 컨테이너 */
    .login-body {
      display: flex;
      justify-content: center;
      align-items: center;
      height: calc(50vh); /* 상단 섹션 제외 */
      background-color: #f4f4f4; /* 연한 배경색 */
      margin: 0;
      font-family: Arial, sans-serif;
    }

    .login-container {
      width: 100%;
      max-width: 600px; /* 너비를 600px로 확장 */
      background: #fff;
      padding: 40px; /* 내부 여백을 약간 늘림 */
      border-radius: 10px;
      box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
    }

    .login-container h3 {
      text-align: center;
      margin-bottom: 30px; /* 제목과 입력 필드 간격을 늘림 */
      font-size: 24px;
      color: #333;
    }

    /* 입력 필드 */
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
      padding: 12px; /* 입력 필드 높이를 약간 늘림 */
      border: 1px solid #ddd;
      border-radius: 5px;
      font-size: 16px; /* 폰트 크기 증가 */
    }

    /* 버튼 스타일 */
    .login-container button {
      width: 100%;
      padding: 14px; /* 버튼 높이 증가 */
      background-color: #eae0d5; /* 베이지색 */
      border: none;
      border-radius: 5px;
      font-size: 18px; /* 버튼 폰트 크기 증가 */
      font-weight: bold;
      color: #6a1b1b; /* 어두운 갈색 텍스트 */
      cursor: pointer;
      box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
      transition: background-color 0.3s ease, color 0.3s ease;
    }

    .login-container button:hover {
      background-color: #6a1b1b; /* 어두운 갈색 */
      color: #fff; /* 흰색 텍스트 */
    }

    /* 링크 스타일 */
    .login-container .links {
      display: flex;
      justify-content: space-between;
      margin-top: 20px;
    }

    .login-container .links a {
      font-size: 14px;
      color: #6a1b1b; /* 어두운 갈색 */
      text-decoration: none;
      transition: color 0.3s ease;
    }

    .login-container .links a:hover {
      color: #333; /* 더 어두운 색상 */
      text-decoration: underline;
    }

    /* 반응형 디자인 */
    @media (max-width: 768px) {
      .header-section h2 {
        font-size: 28px;
      }

      .login-container {
        padding: 30px;
      }

      .login-container h3 {
        font-size: 20px;
      }

      .login-container input[type="email"],
      .login-container input[type="password"] {
        font-size: 14px;
        padding: 10px;
      }

      .login-container button {
        font-size: 16px;
        padding: 12px;
      }

      .login-container .links a {
        font-size: 12px;
      }
    }

    @media (max-width: 480px) {
      .header-section h2 {
        font-size: 24px;
      }

      .login-container {
        padding: 20px;
      }

      .login-container h3 {
        font-size: 18px;
      }

      .login-container input[type="email"],
      .login-container input[type="password"] {
        font-size: 12px;
        padding: 8px;
      }

      .login-container button {
        font-size: 14px;
        padding: 10px;
      }

      .login-container .links {
        flex-direction: column; /* 작은 화면에서는 세로 정렬 */
        align-items: center;
      }

      .login-container .links a {
        font-size: 12px;
        margin-top: 5px;
      }
    }
  </style>
</head>

<body>
  <div class="header-section">
    <div class="header-blank"></div>
    <h2>로그인</h2>
  </div>

  <div class="login-body">
    <div class="login-container">
      <h3>Welcome Back!</h3>
      <form action="/member/login" method="post">
        <div class="form-group">
          <label for="email">아이디</label>
          <input type="email" id="email" name="email" placeholder="example@example.com">
        </div>
        <div class="form-group">
          <label for="password">비밀번호</label>
          <input type="password" id="password" name="password" placeholder="비밀번호를 입력하세요">
        </div>
        <button type="submit">로그인</button>
      </form>
      <div class="links">
        <a href="/forgot-password">비밀번호 찾기</a>
        <a href="/member/userjoin">회원가입</a>
      </div>
    </div>
  </div>
</body>

<%@ include file="../common/footer.jsp" %>
</html>