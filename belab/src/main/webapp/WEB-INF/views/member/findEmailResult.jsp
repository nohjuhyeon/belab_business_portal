<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<c:if test="${not empty email}">
    <!-- 이메일이 존재하는 경우 -->
    <input type="hidden" id="foundEmail" value="${email}" />
    <h3>찾아온 이메일: <span id="emailResult">${email}</span></h3>
</c:if>

<c:if test="${not empty error}">
    <!-- 오류 메시지 표시 -->
    <div style="color: red;">${error}</div>
</c:if>
