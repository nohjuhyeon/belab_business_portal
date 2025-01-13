<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<form action="/member/findEmail" method="post">
    <label for="username">사용자 이름</label>
    <input type="text" id="username" name="username" required />

    <label for="hp">휴대폰 번호</label>
    <input type="text" id="hp" name="hp" required />

    <button type="submit">이메일 찾기</button>
</form>
