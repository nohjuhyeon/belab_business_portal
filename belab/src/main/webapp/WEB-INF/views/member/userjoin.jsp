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
      background-image: url('../images/universe.jpg');
      background-size: 100% auto;
      background-position: bottom;
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

    /* 회원가입 컨테이너 */
    .signup-body {
      display: flex;
      justify-content: center;
      align-items: center;
      height: calc(75vh);
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

    /* 입력 필드 */
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

    /* 소속 라디오 버튼 같은 줄 배치 */
    .form-group-inline {
      display: flex;
      align-items: center;
      gap: 15px;
    }

    /* 버튼 스타일 */
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

    /* 반응형 디자인 */
    @media (max-width: 768px) {
      .header-section h2 {
        font-size: 28px;
      }

      .signup-container {
        padding: 30px;
      }

      .signup-container h3 {
        font-size: 20px;
      }

      .signup-container input[type="text"],
      .signup-container input[type="email"],
      .signup-container input[type="password"] {
        font-size: 14px;
        padding: 10px;
      }

      .signup-container button {
        font-size: 16px;
        padding: 12px;
      }
    }

    @media (max-width: 480px) {
      .header-section h2 {
        font-size: 24px;
      }

      .signup-container {
        padding: 20px;
      }

      .signup-container h3 {
        font-size: 18px;
      }

      .signup-container input[type="text"],
      .signup-container input[type="email"],
      .signup-container input[type="password"] {
        font-size: 12px;
        padding: 8px;
      }

      .signup-container button {
        font-size: 14px;
        padding: 10px;
      }
    }
  </style>
</head>

<body>
  <div class="header-section">
    <div class="header-blank"></div>
    <h2>회원가입</h2>
  </div>

  <div class="signup-body">
    <div class="signup-container">
      <h3>회원가입을 환영합니다!</h3>
      <form action="/member/userjoin" method="post">
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
          <label for="hp">휴대전화 번호</label>
          <input type="text" id="hp" name="hp" placeholder="휴대전화 번호를 입력하세요" required>
        </div>
        <div class="form-group">
          <label>소속</label>
          <div class="form-group-inline">
            <input type="radio" id="belab" name="affiliation" value="비이랩" checked>
            <label for="belab">비이랩</label>
            <input type="radio" id="external" name="affiliation" value="외부소속">
            <label for="external">외부소속</label>
          </div>
        </div>
        <button type="submit">회원가입</button>
      </form>
    </div>
  </div>
</body>

<%@ include file="../common/footer.jsp" %>
</html>