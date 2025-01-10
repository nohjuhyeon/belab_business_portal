<%@ page language="java" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Navbar with Hover Dropdown</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
        /* top-bar 스타일 */
        .top-bar {
            color: #000; /* 텍스트 색상: 검정색 */
            padding: 5px 20px;
            font-size: 14px;
            margin-right: 30px;
            margin-top: 10px;
        }

        .top-bar a {
            color: #000; /* 링크 색상: 검정색 */
            text-decoration: none;
            margin-left: 15px;
            transition: color 0.3s ease; /* 색상 전환 효과 */
        }

        .top-bar a:hover {
            color: #0078d7; /* 링크에 마우스를 올렸을 때 강조 효과 (파란색) */
            text-decoration: underline;
        }

        /* 네비게이션 바 기본 설정 */
        .navbar {
            margin-bottom: 10px;
        }

        .headerbar {
            background-color: transparent; /* 기본 배경 제거 */
            transition: background-color 0.3s ease; /* 배경 전환 효과 */

        }

        .headerbar:hover {
            background-color: #fff; /* 배경 흰색으로 변경 */
        }

        /* 로고 이미지 크기 조정 */
        .navbar-brand img {
            max-width: 100%; /* 부모 요소의 크기를 초과하지 않음 */
            height: auto; /* 비율을 유지하며 높이를 자동 조정 */
            max-height: 70px; /* 최대 높이 제한 */
        }

        /* 메인 메뉴 글씨 크기 조정 */
        .navbar-nav .nav-link {
            font-size: clamp(1.0rem, 1.2vw, 1.5rem); /* 메인 메뉴 글씨 크기 */
            font-weight: bold; /* 글씨를 굵게 설정 */
            margin: 0 25px; /* 좌우 간격 추가 */
        }

        /* 드롭다운 메뉴 글씨 크기 조정 */
        .dropdown-menu .dropdown-item {
            font-size: 16px; /* 드롭다운 메뉴 글씨 크기 */
        }

        /* 드롭다운 메뉴를 hover로 표시 */
        @media (min-width: 992px) {
            /* 데스크톱 화면에서만 적용 */
            .navbar .dropdown:hover .dropdown-menu {
                display: block; /* hover 시 드롭다운 메뉴 표시 */
                margin-top: 0; /* 기본 간격 제거 */
            }
        }
    </style>
</head>
<body>
<!-- 상단 바 -->
<!-- 상단 바 -->
<div class="headerbar">
    <div class="top-bar d-flex justify-content-end">
        <c:choose>
            <c:when test="${sessionScope.loggedInUser != null}">
                <!-- 로그인된 경우 -->
                <a href="javascript:void(0);" onclick="logoutAndReload();">LOGOUT</a>
                <a href="/mypage/intro">My Page</a>
                <c:if test="${sessionScope.loggedInUser.role == 'admin'}">
                    <a href="/admin">Admin</a>
                </c:if>
            </c:when>
            <c:otherwise>
                <!-- 로그인되지 않은 경우 -->
                <a href="/member/login">LOGIN</a>
                <a href="/member/userjoin">회원가입</a>
            </c:otherwise>
        </c:choose>
    </div>

<script>
    function logoutAndReload() {
        // POST 방식으로 로그아웃 처리
        fetch('/member/logout', {
            method: 'POST' // 로그아웃은 POST로 처리
        })
        .then(response => {
            if (response.ok) {
                // 로그아웃 후 페이지 새로 고침
                alert("로그아웃 성공. 다시 로그인해주세요.");
                location.reload();
            } else {
                alert("로그아웃 실패. 다시 시도해주세요.");
            }
        })
        .catch(error => {
            console.error("로그아웃 오류:", error);
            alert("로그아웃 처리 중 오류가 발생했습니다.");
        });
    }
</script>


<!-- 네비게이션 바 -->
<nav class="navbar navbar-expand-lg">
    <div class="container-fluid  d-flex align-items-center">
        <!-- 로고 -->
        <a class="navbar-brand  me-3" href="/">
            <img src="/images/logo.png" alt="Logo" class="img-fluid">
        </a>

        <!-- 햄버거 버튼 -->
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent"
                aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>

        <!-- 메뉴 -->
        <div class="collapse navbar-collapse  ms-3" id="navbarSupportedContent">
            <ul class="navbar-nav ms-auto mb-2 mb-lg-0">
                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown1" role="button"
                       data-bs-toggle="dropdown" aria-expanded="false">
                        회사 소개
                    </a>
                    <ul class="dropdown-menu" aria-labelledby="navbarDropdown1">
                        <li><a class="dropdown-item" href="/Greeting">인사말</a></li>
                        <li><a class="dropdown-item" href="/Directions">오시는 길</a></li>
                    </ul>
                </li>
                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown2" role="button"
                       data-bs-toggle="dropdown" aria-expanded="false">
                        Data Servcie
                    </a>
                    <ul class="dropdown-menu" aria-labelledby="navbarDropdown2">
                        <li><a class="dropdown-item" href="#">DB</a></li>
                        <li><a class="dropdown-item" href="#">Web</a></li>
                        <li><a class="dropdown-item" href="#">WAS</a></li>
                        <li><a class="dropdown-item" href="#">DataHubPlatForm</a></li>
                        <li><a class="dropdown-item" href="#">Data Analysis</a></li>
                    </ul>
                </li>
                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown2" role="button"
                       data-bs-toggle="dropdown" aria-expanded="false">
                        Platform Servcie
                    </a>
                    <ul class="dropdown-menu" aria-labelledby="navbarDropdown2">
                        <li><a class="dropdown-item" href="#">MSP(cloud)</a></li>
                        <li><a class="dropdown-item" href="#">Hosting</a></li>
                        <li><a class="dropdown-item" href="#">K-PaaS</a></li>
                    </ul>
                </li>
                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown2" role="button"
                       data-bs-toggle="dropdown" aria-expanded="false">
                        Content Servcie
                    </a>
                    <ul class="dropdown-menu" aria-labelledby="navbarDropdown2">
                        <li><a class="dropdown-item" href="#">BeLog</a></li>
                        <li><a class="dropdown-item" href="#">BeMON</a></li>
                        <li><a class="dropdown-item" href="#">BePET</a></li>
                    </ul>
                </li>
                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown2" role="button"
                       data-bs-toggle="dropdown" aria-expanded="false">
                        고객 센터
                    </a>
                    <ul class="dropdown-menu" aria-labelledby="navbarDropdown2">
                        <li><a class="dropdown-item" href="#">공지사항</a></li>
                        <li><a class="dropdown-item" href="#">문의게시판</a></li>
                        <li><a class="dropdown-item" href="#">자료실</a></li>
                    </ul>
                </li>
            </ul>
        </div>
    </div>
    </div>
</nav>
</div>

<!-- 부트스트랩 JS -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>