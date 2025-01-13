<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>비밀번호 찾기</title>
</head>
<body>
<form action="/member/findPassword" method="post">
    <label for="email">이메일</label>
    <input type="email" id="email" name="email" required />
    <button type="submit">비밀번호 찾기</button>
</form>
</body>
</html>
