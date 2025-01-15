<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<%@ include file="../common/header.jsp" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>마이페이지</title>
    <style>
        /* 헤더 스타일 */
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
        .header-blank {
            height: 270px;
        }

        .header-section h2 {
            font-size: 36px;
            margin: 0;
            font-weight: bold;
        }
        body {
            background-color: #f4f4f4;
        }
        /* 전체 레이아웃 */
        .container {
            display: flex;
            flex-wrap: wrap;
            padding: 20px;
            min-height: calc(60vh);
        }

        /* 좌측 네비게이션 바 */
        .sidebar {
            width: 250px;
            background-color: #fff;
            padding-top: 20px;
            border-right: 1px solid #ddd;
            box-shadow: 2px 0 5px rgba(0, 0, 0, 0.1);
            border-radius: 8px;
            overflow: hidden;
            transition: max-height 0.3s ease;
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
            background-color: #eaeaea; /* 로그인 페이지 색상 */
            color: #fff;
        }

        /* 드롭다운 버튼 */
        /* 반응형 디자인 */
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

        /* 우측 내용 영역 */
        .content {
            flex: 1;
            padding: 40px;
            background-color: #fff;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.05);
            border-radius: 8px;
            margin: 0px 20px;
        }

        .content h2 {
            font-size: 28px;
            color: #444;
            margin-bottom: 10px;
        }

        .welcome-card {
            background-color: #f9f9f9;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
            text-align: center;
        }

        .welcome-card h3 {
            font-size: 24px;
            color: #333;
            margin: 0 0 10px;
        }

        .welcome-card p {
            font-size: 16px;
            color: #666;
            margin: 0;
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

          .sidebar.open {
              max-height: 300px; /* 사이드바가 열렸을 때 최대 높이 */
              margin-bottom: 20px;
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
    <h2>마이페이지</h2>
</div>

<div class="container">
    <!-- 드롭다운 버튼 -->
    <button class="dropdown-btn" onclick="toggleSidebar()">메뉴</button>

    <!-- 좌측 사이드바 -->
    <div class="sidebar" id="sidebar">
        <a href="/mypage/intro">마이페이지</a>
        <a href="/member/validateForm">개인정보 수정</a>
        <a href="/member/inquiry">문의내역</a>
        <a href="/member/DeletevalidateForm">회원 탈퇴</a>

    </div>

    <!-- 우측 내용 -->
    <div class="content">
        <h2>환영합니다!</h2>
        <div class="welcome-card">
            <!-- 세션에서 사용자 이름을 가져와서 표시 -->
            <h3>${loggedInUser.username}님, 반갑습니다!</h3>

            <p>마이페이지에서 회원님의 정보를 확인하고 관리할 수 있습니다.</p>
        </div>
    </div>
</div>

<script>
    function toggleSidebar() {
        const sidebar = document.getElementById('sidebar');
        sidebar.classList.toggle('open');
    }
</script>

<%@ include file="../common/footer.jsp" %>
</body>
</html>
