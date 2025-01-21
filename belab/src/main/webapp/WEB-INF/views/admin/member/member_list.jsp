<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/WEB-INF/views/common/header.jsp" %>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml" lang="ko">

<head>
    <meta charset="UTF-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <meta http-equiv="imagetoolbar" content="no"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <meta name="format-detection" content="telephone=no"/>
    <link rel="stylesheet" href="/css/setting.css"/>
    <link rel="stylesheet" href="/css/plugin.css"/>
    <link rel="stylesheet" href="/css/templatehouse.css"/>
    <link rel="stylesheet" href="/css/style.css"/>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f9f9f9;
        }

        .main-container {
            display: flex;
            flex-direction: column;
            align-items: center;
            justify-content: center;
            margin: 0 auto;
            padding: 20px;
            max-width: 1200px;
        }

        .sidebar {
            background-color: #f2f2f2;
            width: 200px;
            padding: 20px;
            margin-right: 20px;
            box-shadow: 2px 2px 5px rgba(0, 0, 0, 0.1);
            position: absolute;
            left: 20px;
            top: 100px;
        }

        .sidebar a {
            display: block;
            padding: 10px;
            margin-bottom: 10px;
            background-color: #007bff;
            color: #fff;
            text-decoration: none;
            border-radius: 5px;
            text-align: center;
        }

        .sidebar a:hover {
            background-color: #0056b3;
        }

        h1 {
            text-align: center;
            margin-bottom: 20px;
        }

        .content {
            margin-top: 20px;
            background-color: white;
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        }

        table {
            width: 100%;
            border-collapse: collapse;
            margin: 20px 0;
        }

        th,
        td {
            border: 1px solid #ddd;
            padding: 10px;
            text-align: center;
        }

        th {
            background-color: #f2f2f2;
        }

        .action-btn {
            padding: 5px 10px;
            background-color: #007bff;
            color: white;
            border: none;
            border-radius: 5px;
            cursor: pointer;
        }

        .action-btn.delete {
            background-color: #dc3545;
        }
    </style>
</head>

<body>

<div class="main-container">
    <div class="sidebar">
        <a href="/admin/memberList">회원 관리</a>
        <a href="/notice/boardList">공지사항 관리</a>
        <a href="/files/boardList">자료실 관리</a>
    </div>

    <div class="content">
        <h1>회원 관리</h1>
        <table>
            <thead>
            <tr>
                <th>회원 ID</th>
                <th>회원정보</th>
                <th>관리</th>
            </tr>
            </thead>
            <tbody>
            <c:forEach var="member" items="${memberList}">
                <tr>
                    <td>${member.user_id}</td>
                    <td>${member.username}</td>
                    <td>${member.email}</td>
                    <td>${member.hp}</td>
                    <td>
                        <button class="action-btn"
                                onclick="location.href='/admin/modifyForm?user_id=${member.user_id}'">수정
                        </button>
                        <form action="/admin/delete" method="post" style="display:inline;">
                            <input type="hidden" name="user_id" value="${member.user_id}">
                            <button type="submit" class="action-btn delete">삭제</button>
                        </form>
                    </td>
                </tr>
            </c:forEach>
            </tbody>
        </table>
    </div>
</div>

<script>
    // 자바스크립트로 추가적인 기능을 구현할 경우 여기에 추가합니다.
</script>
</body>

</html>
<%@ include file="/WEB-INF/views/common/footer.jsp" %>
