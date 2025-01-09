<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="../common/header.jsp" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>로그인</title>
</head>
<body>
<h1>로그인</h1>
<form action="/member/login" method="post">
  <!-- 이메일 -->
  <label for="email">이메일:</label>
  <input type="email" id="email" name="email" placeholder="이메일을 입력하세요" required />
  <br/>

  <!-- 비밀번호 -->
  <label for="password">비밀번호:</label>
  <input type="password" id="password" name="password" placeholder="비밀번호를 입력하세요" required />
  <br/>

  <!-- 제출 -->
  <button type="submit">로그인</button>
</form>
<%@ include file="../common/footer.jsp" %>

</body>
</html>
