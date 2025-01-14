<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>게시판 목록</title>
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
    <style>
        .table th, .table td {
            text-align: center;
        }
        .btn {
            font-weight: bold;
        }
        .btn-primary {
            font-size: 20px;
            padding: 20px 40px;
            background-color: #007bff;
            border: none;
            border-radius: 5px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
            transition: background-color 0.3s, transform 0.3s;
        }
        .btn-primary:hover {
            background-color: #0056b3;
            transform: scale(1.05);
        }
        .pagination .page-item.active .page-link {
            background-color: #007bff;
            border-color: #007bff;
        }
        .pagination .page-item .page-link {
            border: 1px solid #ddd;
        }
        .header-blank { height: 270px; }
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
        .create-board-btn {
            margin-top: 30px;
            text-align: center;
        }
    </style>
</head>
<body>

<%@ include file="../common/header.jsp" %>

<div class="header-section">
    <div class="header-blank"></div>
    <h2>문의 게시판 </h2>
</div>

<!-- 게시판 목록 테이블 -->
<div class="container">
    <table class="table table-bordered table-striped">
        <thead class="thead-dark">
            <tr>
                <th>번호</th>
                <th>제목</th>
                <th>작성자</th>
                <th>작성일</th>
                <th>상세</th>
                <th>수정</th>
                <th>삭제</th>
            </tr>
        </thead>
        <tbody>
            <c:forEach var="board" items="${boards}">
                <tr>
                    <td>${board.dashboard_id}</td>
                    <td><a href="/contact/viewBoard/${board.dashboard_id}">${board.title}</a></td>
                    <td>${board.user_id}</td>
                    <td>${board.created_at}</td>
                    <td>
                        <a href="/contact/viewBoard/${board.dashboard_id}" class="btn btn-info btn-sm">상세</a>
                    </td>
                    <td>
                        <a href="/contact/editBoard/${board.dashboard_id}" class="btn btn-warning btn-sm">수정</a>
                    </td>
                    <td>
                        <form action="/contact/deleteBoard" method="post" onsubmit="return confirm('정말 삭제하시겠습니까?');">
                            <input type="hidden" name="dashboardId" value="${board.dashboard_id}">
                            <button type="submit" class="btn btn-danger btn-sm">삭제</button>
                        </form>
                    </td>
                </tr>
            </c:forEach>
        </tbody>
    </table>
</div>

<!-- 로그인 후에만 게시글 작성 버튼을 표시 -->
<c:if test="${not empty sessionScope.user}">
    <div class="container create-board-btn">
        <a href="/contact/createBoard" class="btn btn-primary mb-3">게시글 작성</a>
    </div>
</c:if>

<!-- 페이징 처리 -->
<div class="d-flex justify-content-center mt-4">
    <c:if test="${not empty boards}">
        <ul class="pagination">
            <!-- Previous Page Link -->
            <c:if test="${pageNum > 1}">
                <li class="page-item"><a class="page-link" href="/contact/boardList?page=${pageNum - 1}">이전</a></li>
            </c:if>

            <!-- Current Page -->
            <li class="page-item active"><a class="page-link">${pageNum}</a></li>

            <!-- Next Page Link -->
            <c:if test="${boards.size() == pageSize}">
                <li class="page-item"><a class="page-link" href="/contact/boardList?page=${pageNum + 1}">다음</a></li>
            </c:if>
        </ul>
    </c:if>
</div>

<%@ include file="../common/footer.jsp" %>

<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

</body> </html>
