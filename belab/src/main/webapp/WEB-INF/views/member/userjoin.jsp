<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<%@ include file="../common/header.jsp" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>회원가입</title>
  <style>
    .header-blank {
      height: 200px;
  }
  .header-section {
      background-color: rgb(124, 124, 124); /* 남색 배경 + 투명도 */
      color: #fff;
      text-align: center;
      padding: 20px 0;
      top: 0;
      left: 0;
      width: 100%;
      box-shadow: 0 2px 5px rgba(0, 0, 0, 0.2);
      padding-top : 0px;
      padding-bottom : 0px;
      height : 395px;
  }

  </style>
</head>
<div class="header-section">
  <div class="header-blank"></div>
</div>

<body>
<h1>회원가입</h1>
<form action="/member/userjoin" method="post">
  <!-- 사용자 이름 -->
  <label for="username">사용자 이름:</label>
  <input type="text" id="username" name="username" placeholder="이름을 입력하세요" required />
  <br/>

  <!-- 이메일 -->
  <label for="email">이메일:</label>
  <input type="email" id="email" name="email" placeholder="이메일을 입력하세요" required />
  <br/>

  <!-- 비밀번호 -->
  <label for="password">비밀번호:</label>
  <input type="password" id="password" name="password" placeholder="비밀번호를 입력하세요" required />
  <br/>

  <!-- 휴대전화 번호 -->
  <label for="hp">휴대전화 번호:</label>
  <input type="text" id="hp" name="hp" placeholder="휴대전화 번호를 입력하세요" required />
  <br/>

  <!-- 소속 -->
  <label>소속:</label>
  <input type="radio" id="belab" name="affiliation" value="비이랩" checked />
  <label for="belab">비이랩</label>
  <input type="radio" id="external" name="affiliation" value="외부소속" />
  <label for="external">외부소속</label>
  <br/>

  <!-- 제출 -->
  <button type="submit">회원가입</button>
</form>
<%@ include file="../common/footer.jsp" %>
</body>
</html>
