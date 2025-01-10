<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<%@ include file="../common/header.jsp" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>마이페이지 - 개인정보 수정</title>
    <style>
        /* 전체 레이아웃 */
        .container {
            display: flex;
        }

        /* 좌측 네비게이션 바 */
        .sidebar {
            width: 200px;
            height: 100vh;
            background-color: #f4f4f4;
            padding-top: 20px;
            border-right: 1px solid #ddd;
        }

        .sidebar a {
            display: block;
            padding: 10px 15px;
            text-decoration: none;
            color: #333;
            font-size: 18px;
        }

        .sidebar a:hover {
            background-color: #ddd;
        }

        /* 우측 내용 영역 */
        .content {
            flex: 1;
            padding: 20px;
        }

        /* 입력폼 스타일 */
        .form-group {
            margin-bottom: 15px;
        }

        .form-group label {
            display: block;
            margin-bottom: 5px;
            font-size: 14px;
        }

        .form-group input[type="text"],
        .form-group input[type="email"],
        .form-group input[type="password"],
        .form-group input[type="date"] {
            width: 100%;
            padding: 8px;
            border: 1px solid #ccc;
            border-radius: 4px;
        }

        .form-group input[type="radio"] {
            margin-right: 5px;
        }

        button {
            padding: 10px 15px;
            background-color: #4CAF50;
            color: white;
            border: none;
            border-radius: 4px;
            cursor: pointer;
        }

        button:hover {
            background-color: #45a049;
        }

        button:disabled {
            background-color: #ccc;
            cursor: not-allowed;
        }
    </style>
</head>

<body>
<div class="header-section">
    <div class="header-blank"></div>
</div>

<div class="container">
    <!-- 좌측 사이드바 -->
    <div class="sidebar">
        <a href="/member/modifyForm">개인정보 수정</a>
        <a href="/member/mypage/intro">마이페이지</a>
        <a href="/member/inquiry">문의내역 수정</a>
    </div>

    <!-- 우측 내용 -->
    <div class="content">
        <h2>개인정보 수정</h2>
        <form id="modifyForm" action="/member/modify" method="post">
            <!-- 이메일 수정 -->
            <div class="form-group">
                <label for="email">이메일:</label>
                <input type="email" id="email" name="email" value="${loggedInUser.email}" readonly required />
            </div>

            <!-- 비밀번호 수정 -->
            <div class="form-group">
                <label for="password">비밀번호:</label>
                <input type="password" id="password" name="password" placeholder="비밀번호를 입력하세요" required />
            </div>

            <!-- 이름 수정 -->
            <div class="form-group">
                <label for="username">성명:</label>
                <input type="text" id="username" name="username" value="${loggedInUser.username}" required />
            </div>

            <!-- 휴대전화 번호 수정 -->
            <div class="form-group">
                <label for="hp">휴대전화 번호:</label>
                <input type="text" id="hp" name="hp" value="${loggedInUser.hp}" required />
            </div>

            <!-- 소속 수정 -->
            <div class="form-group">
                <label>소속:</label>
                <input type="radio" id="belab" name="affiliation" value="비이랩" ${loggedInUser.affiliation == '비이랩' ? 'checked' : ''} />
                <label for="belab">비이랩</label>
                <input type="radio" id="external" name="affiliation" value="외부소속" ${loggedInUser.affiliation == '외부소속' ? 'checked' : ''} />
                <label for="external">외부소속</label>
            </div>

            <!-- 제출 버튼 -->
            <button type="submit" id="submitButton" disabled>수정하기</button>
        </form>
    </div>
</div>

<%@ include file="../common/footer.jsp" %>

<script>
    // 수정 가능 여부 확인
    const form = document.getElementById('modifyForm');
    const submitButton = document.getElementById('submitButton');

    // 폼 데이터 변경 시 버튼 활성화
    form.addEventListener('input', () => {
        submitButton.disabled = false;
    });
</script>
</body>
</html>
