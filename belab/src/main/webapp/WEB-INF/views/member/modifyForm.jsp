<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<%@ include file="../common/header.jsp" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <title>마이페이지 - 개인정보 수정</title>
    <style>
        /* 헤더 스타일 */
        .header-blank {
            height: 270px;
        }

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

        /* 전체 레이아웃 */
        .container {
            display: flex;
            flex-wrap: wrap;
            min-height: 100vh;
        }

        /* 좌측 네비게이션 바 */
        .sidebar {
            width: 250px;
            background-color: #f9f9f9;
            padding-top: 20px;
            border-right: 1px solid #ddd;
            box-shadow: 2px 0 5px rgba(0, 0, 0, 0.1);
        }

        .sidebar a {
            display: block;
            padding: 15px 20px;
            text-decoration: none;
            color: #333;
            font-size: 16px;
            transition: background-color 0.3s ease, color 0.3s ease;
        }

        .sidebar a:hover {
            background-color: #eaeaea;
            color: #000;
        }

        /* 우측 내용 영역 */
        .content {
            flex: 1;
            padding: 40px;
            background-color: #fff;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.05);
            border-radius: 8px;
            margin: 20px;
        }

        .content h2 {
            margin-bottom: 20px;
            font-size: 24px;
            color: #444;
        }

        /* 입력폼 스타일 */
        .form-group {
            margin-bottom: 20px;
        }

        .form-group label {
            display: block;
            margin-bottom: 8px;
            font-size: 14px;
            font-weight: bold;
            color: #555;
        }

        .form-group input[type="text"],
        .form-group input[type="email"],
        .form-group input[type="password"],
        .form-group input[type="date"] {
            width: 100%;
            padding: 12px;
            border: 1px solid #ccc;
            border-radius: 6px;
            font-size: 14px;
            color: #333;
        }

        .form-group input[type="text"]:focus,
        .form-group input[type="email"]:focus,
        .form-group input[type="password"]:focus,
        .form-group input[type="date"]:focus {
            outline: none;
            border-color: #007BFF; /* 로그인 페이지 색상 */
            box-shadow: 0 0 5px rgba(0, 123, 255, 0.5);
        }

        .form-group input[type="radio"] {
            margin-right: 8px;
        }

        .form-group-inline {
            display: flex;
            align-items: center;
            gap: 15px;
        }

        /* 버튼 스타일 */
        .modify-btn {
            display: block;
            width: 100%;
            padding: 12px 16px;
            background-color: #eae0d5; /* 로그인 페이지 색상 */
            color: #fff;
            border: none;
            border-radius: 6px;
            font-size: 16px;
            font-weight: bold;
            cursor: pointer;
            transition: background-color 0.3s ease, box-shadow 0.3s ease;
        }

        .modify-btn:hover {
            background-color: #6a1b1b; /* 로그인 페이지 hover 색상 */
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
        }

        .modify-btn:disabled {
            background-color: #ccc;
            cursor: not-allowed;
        }

        .dropdown-btn {
            display: none;
            background-color: #6a1b1b;
            color: #fff;
            border: none;
            padding: 15px 20px;
            font-size: 16px;
            cursor: pointer;
            width: 100%;
            text-align: left;
            border-radius: 8px;
            margin-bottom: 10px;
        }

        .dropdown-btn:hover {
            background-color: #eae0d5;
            color: #000;
        }

        @media (max-width: 992px) {
            .container {
                flex-direction: column;
            }

            .sidebar {
                width: 100%;
                border-right: none;
                border-bottom: none;
                max-height: 0;
                overflow: hidden;
                visibility: hidden;
            }

            .sidebar.open {
                visibility: visible;
                max-height: 300px; /* 드롭다운 메뉴가 열릴 때 최대 높이 */
            }

            .dropdown-btn {
                display: block;
            }

            .sidebar.open {
                max-height: 300px; /* 사이드바가 열렸을 때 최대 높이 */
            }

            .content {
                margin: 0;
                box-shadow: none;
                border-radius: 0;
                padding: 20px;
            }

            .sidebar a {
                padding: 10px 15px;
                font-size: 14px;
            }

            .content h2 {
                font-size: 20px;
            }

            .welcome-card h3 {
                font-size: 20px;
            }

            .welcome-card p {
                font-size: 14px;
            }
        }

        @media (max-width: 480px) {
            .header-section h2 {
                font-size: 28px;
            }

            .sidebar a {
                font-size: 12px;
            }

            .content h2 {
                font-size: 18px;
            }

            .welcome-card h3 {
                font-size: 18px;
            }

            .welcome-card p {
                font-size: 12px;
            }
        }
    </style>
</head>

<body>
<div class="header-section">
    <div class="header-blank"></div>
    <h2>개인정보 수정</h2>
</div>

<div class="container">
    <button class="dropdown-btn" onclick="toggleSidebar()">메뉴</button>

    <div class="sidebar" id="sidebar">
        <a href="/member/modifyForm">개인정보 수정</a>
        <a href="/mypage/intro">마이페이지</a>
        <a href="/member/inquiry">문의내역 수정</a>
    </div>

    <div class="content">
        <h2>개인정보 수정</h2>

        <!-- 오류 메시지 출력 -->
        <c:if test="${not empty passwordError}">
            <div style="color: red; font-weight: bold;">${passwordError}</div>
        </c:if>
        <c:if test="${not empty updateError}">
            <div style="color: red; font-weight: bold;">${updateError}</div>
        </c:if>

        <form id="modifyForm" action="/member/modify" method="post">
            <div class="form-group">
                <label for="email">이메일:</label>
                <input type="email" id="email" name="email" value="${loggedInUser.email}" readonly required/>
            </div>

            <div class="form-group">
                <label for="password">비밀번호 수정:</label>
                <input type="password" id="password" name="password" placeholder="현재 비밀번호를 입력하세요" required/>
            </div>

            <div class="form-group">
                <label for="passwordConfirm">비밀번호 확인:</label>
                <input type="password" id="passwordConfirm" name="passwordConfirm" placeholder="비밀번호를 한 번 더 입력하세요" required/>
            </div>

            <div class="form-group">
                <label for="username">성명:</label>
                <input type="text" id="username" name="username" value="${loggedInUser.username}" required/>
            </div>

            <div class="form-group">
                <label for="hp">휴대전화 번호:</label>
                <input type="text" id="hp" name="hp" value="${loggedInUser.hp}" required/>
            </div>

            <button type="submit" class="modify-btn">수정하기</button>
        </form>
    </div>
</div>

<script>
    function toggleSidebar() {
        const sidebar = document.getElementById("sidebar");
        sidebar.classList.toggle("open");
    }

    document.getElementById("modifyForm").addEventListener("submit", function (e) {
        e.preventDefault(); // 폼 제출 방지

        const password = document.getElementById("password").value; // 현재 비밀번호
        const passwordConfirm = document.getElementById("passwordConfirm").value; // 새 비밀번호 확인

        // 비밀번호 확인
        if (password !== passwordConfirm) {
            alert("비밀번호가 일치하지 않습니다. 다시 확인해주세요.");
            return; // 비밀번호가 일치하지 않으면 폼 제출을 막음
        }

        // 새 비밀번호 검증 처리
        const modifyButton = document.querySelector(".modify-btn");
        modifyButton.disabled = true;
        modifyButton.innerHTML = "검증 중...";

        // 수정 폼 제출
        document.getElementById("modifyForm").submit();
    });
</script>
</body>
</html>
