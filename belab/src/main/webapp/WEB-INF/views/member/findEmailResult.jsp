<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="../common/header.jsp" %>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <title>이메일 찾기 결과</title>
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

    .result-body {
      display: flex;
      justify-content: center;
      align-items: center;
      height: calc(50vh);
      background-color: #f4f4f4;
      padding: 20px;
    }

    .result-container {
      width: 100%;
      max-width: 600px;
      background: #fff;
      padding: 40px;
      border-radius: 10px;
      box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
      text-align: center;
    }

    .result-container h3 {
      font-size: 24px;
      color: #333;
      margin-bottom: 20px;
    }

    .result-container .email-result {
      font-size: 20px;
      color: #6a1b1b;
      font-weight: bold;
      margin-bottom: 20px;
    }

    .result-container .error-message {
      font-size: 16px;
      color: red;
      margin-bottom: 20px;
    }

    .result-container .links {
      margin-top: 20px;
      display: flex;
      justify-content: center;
    }

    .result-container .links .button {
      display: inline-block;
      padding: 12px 20px;
      background-color: #eae0d5;
      color: #6a1b1b;
      font-size: 16px;
      font-weight: bold;
      text-decoration: none;
      border-radius: 5px;
      box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
      transition: background-color 0.3s ease;
    }

    .result-container .links .button:hover {
      background-color: #d6c4b5;
    }

    /* 반응형 디자인 */
    @media (max-width: 768px) {

      .header-section h2 {
        font-size: 24px;
      }

      .result-body {
        height: auto;
        padding: 10px;
      }

      .result-container {
        padding: 20px;
      }

      .result-container h3 {
        font-size: 20px;
      }

      .result-container .email-result {
        font-size: 18px;
      }

      .result-container .links .button {
        font-size: 14px;
        padding: 10px 16px;
      }
    }
  </style>
</head>

<body>
    <div class="header-section">
        <div class="header-blank"></div>
        <h2>이메일 찾기 결과</h2>
      </div>

  <div class="result-body">
    <div class="result-container">
      <c:if test="${not empty email}">
        <!-- 이메일이 존재하는 경우 -->
        <input type="hidden" id="foundEmail" value="${email}" />
        <h3>고객님의 이메일</h3>
        <div class="email-result" id="emailResult">${email}</div>
      </c:if>

      <c:if test="${not empty error}">
        <!-- 오류 메시지 표시 -->
        <div class="error-message">${error}</div>
      </c:if>

      <div class="links">
        <a href="/member/login" class="button">로그인으로 돌아가기</a>
      </div>
    </div>
  </div>
</body>
<%@ include file="../common/footer.jsp" %>

</html>