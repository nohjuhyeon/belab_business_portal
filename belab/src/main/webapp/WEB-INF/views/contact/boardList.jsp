<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="../common/header.jsp" %>

<div class="container mt-5">
    <h1 class="text-center mb-4">게시판 목록</h1>

    <!-- 글 작성 버튼 -->
    <div class="d-flex justify-content-end mb-3">
        <a href="/contact/createBoard" class="btn btn-primary">글 작성</a>
    </div>

    <!-- 게시글 목록 테이블 -->
    <div class="table-responsive">
        <table class="table table-hover table-striped">
            <thead class="thead-dark">
            <tr>
                <th class="text-center">번호</th>
                <th>제목</th>
                <th>작성자</th>
                <th class="text-center">작성일</th>
                <th class="text-center">수정일</th>
                <th class="text-center">관리</th>
            </tr>
            </thead>
            <tbody>
            <c:forEach var="board" items="${boards}">
                <tr>
                    <td class="text-center">${board.dashboard_id}</td>
                    <td>${board.title}</td>
                    <td>${board.username}</td>
                    <td class="text-center">${board.formattedCreatedAt}</td>
                    <td class="text-center">${board.formattedUpdatedAt}</td>
                    <td class="text-center">
                        <c:if test="${not empty sessionScope.loggedInUser}">
                            <a href="/contact/viewBoard/${board.dashboard_id}" class="btn btn-info btn-sm">상세보기</a>
                        </c:if>
                        <c:if test="${empty sessionScope.loggedInUser}">
                            <span class="text-muted">상세보기 (로그인 필요)</span>
                        </c:if>
                    </td>
                </tr>
            </c:forEach>
            </tbody>
        </table>
    </div>
</div>

<%@ include file="../common/footer.jsp" %>
