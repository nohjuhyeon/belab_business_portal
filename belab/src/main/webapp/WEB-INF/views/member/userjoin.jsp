<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<%@ include file="../common/header.jsp" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>회원가입</title>
</head>
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
