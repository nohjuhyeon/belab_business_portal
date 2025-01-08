<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Responsive Header With Mobile Left-Aligned Menu</title>
    <!-- 부트스트랩 CSS -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
        /* 상단바 스타일 */
        .navbar {
            background-color: rgb(85, 85, 85); /* 짙은 회색 */
        }
        .navbar .nav-link,
        .navbar .navbar-brand {
            color: #ffffff !important; /* 글씨 흰색 */
        }
        .navbar .nav-link:hover {
            color: #d1d1d1 !important; /* 글씨 호버 시 밝은 회색 */
        }

        .navbar-nav .dropdown:hover .dropdown-menu {
            display: block;
            margin-top: 0; /* 부트스트랩 기본 스타일에서 약간의 간격을 제거 */
        }
        .dropdown-menu {
            background-color: rgba(0, 0, 0, 0.6) !important; /* 검은색 배경, 투명도 80% */
            color: #ffffff; /* 텍스트 흰색 */
            border: none; /* 테두리 제거 */
        }
    
        /* 드롭다운 메뉴 항목 스타일 */
        .dropdown-item {
            color: #ffffff !important; /* 드롭다운 항목 텍스트 흰색 */
        }
    
        .dropdown-item:hover {
            background-color: rgba(255, 255, 255, 0.1) !important; /* 호버 시 약간 밝은 배경 */
            color: #ffffff !important; /* 호버 시 텍스트 색상 유지 */
        }    
        /* 드롭다운 메뉴의 전환 애니메이션 */
        .navbar-nav .dropdown-menu {
            transition: all 0.3s ease-in-out;
        }
        /* 로고와 버튼을 한 줄에 배치 */
        .header-container {
            display: flex;
            justify-content: center; /* 기본적으로 로고 가운데 정렬 */
            align-items: center; /* 세로 중앙 정렬 */
            padding: 10px 20px;
            background-color: #f8f9fa; /* 배경색 */
        }
        .header-container img {
            max-height: 91px; /* 로고 최대 높이 설정 */
            height: auto;
        }

        /* 버튼 스타일 */
        .action-buttons {
            display: flex;
            gap: 10px;
            position: absolute;
            right: 20px; /* 버튼을 오른쪽으로 정렬 */
        }
        .action-buttons .btn {
            border: 1px solid rgb(85, 85, 85); /* 버튼 테두리 */
            color: rgb(85, 85, 85); /* 버튼 텍스트 */
            background-color: transparent; /* 투명 배경 */
        }
        .action-buttons .btn:hover {
            background-color: rgb(85, 85, 85); /* 호버 시 배경색 */
            color: #ffffff; /* 호버 시 텍스트 흰색 */
        }

        /* 햄버거 버튼 스타일 */
        .navbar-toggler {
            background-color: #ffffff; /* 버튼 배경 흰색 */
            border: none; /* 테두리 제거 */
        }
        .navbar-toggler-icon {
            background-image: url("data:image/svg+xml;charset=utf8,%3Csvg xmlns='http://www.w3.org/2000/svg' viewBox='0 0 30 30'%3E%3Cpath stroke='rgba(0, 0, 0, 1)' stroke-width='2' d='M4 7h22M4 15h22M4 23h22'/%3E%3C/svg%3E"); /* 세 줄을 검정색으로 설정 */
        }

        /* 데스크탑 화면에서 메뉴를 가운데 정렬 */
        @media (min-width: 992px) {
            .navbar-collapse {
                justify-content: center; /* 메뉴를 가운데 정렬 */
                text-align: center; /* 텍스트도 가운데 정렬 */
            }
        }

        /* 모바일 화면에서만 햄버거 버튼과 메뉴를 왼쪽 정렬 */
        @media (max-width: 991px) {
            .navbar-collapse {
                justify-content: flex-start; /* 메뉴 전체 왼쪽 정렬 */
                text-align: left; /* 텍스트 왼쪽 정렬 */
            }

            .navbar-toggler {
                margin-left: 0; /* 햄버거 버튼을 왼쪽으로 정렬 */
            }

            .header-container {
                justify-content: space-between; /* 로고 왼쪽, 버튼 오른쪽 */
            }
        }
        @media (max-width: 991px) {
            .header-container {
                justify-content: space-between; /* 로고 왼쪽, 버튼 오른쪽 */
            }
            .header-container img {
                max-width: 50%; /* 로고 너비를 화면의 50%로 제한 */
                height: auto; /* 비율 유지 */
            }
            /* collapse 내부 텍스트 왼쪽 정렬 */
            .navbar-collapse {
                text-align: left; /* 텍스트 왼쪽 정렬 */
            }
        }

    </style>
</head>
    <!-- 로고 및 버튼 영역 -->
<header>
    <div class="header-container">
        <!-- 로고 이미지 -->
        <img src="https://github.com/user-attachments/assets/ee5ebda4-b909-4390-86e8-5891c78f996e" alt="Logo">
        <!-- 데스크탑 및 모바일 버튼 -->
        <div class="action-buttons">
            <button class="btn btn-sm">로그인</button>
            <button class="btn btn-sm">마이 페이지</button>
            <button class="btn btn-sm">관리자</button>
        </div>
    </div>

    <!-- 네비게이션 바 -->
    <nav class="navbar navbar-expand-lg">
        <div class="container-fluid">
            <!-- 햄버거 메뉴 버튼 -->
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <!-- 네비게이션 메뉴 -->
            <div class="collapse navbar-collapse" id="navbarNav">
                <ul class="navbar-nav">
                    <!-- 회사소개 -->
                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" href="#" id="aboutDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                            회사소개
                        </a>
                        <ul class="dropdown-menu" aria-labelledby="aboutDropdown">
                            <li><a class="dropdown-item" href="#">오시는 길</a></li>
                            <li><a class="dropdown-item" href="#">인사말</a></li>
                        </ul>
                    </li>
                    <!-- PlatForm Service -->
                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" href="#" id="platformDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                            PlatForm Service
                        </a>
                        <ul class="dropdown-menu" aria-labelledby="platformDropdown">
                            <li><a class="dropdown-item" href="#">MSP(cloud)</a></li>
                            <li><a class="dropdown-item" href="#">Hosting</a></li>
                            <li><a class="dropdown-item" href="#">K-PaaS</a></li>
                        </ul>
                    </li>
                    <!-- Content Service -->
                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" href="#" id="contentDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                            Content Service
                        </a>
                        <ul class="dropdown-menu" aria-labelledby="contentDropdown">
                            <li><a class="dropdown-item" href="#">BeLog</a></li>
                            <li><a class="dropdown-item" href="#">BeMON</a></li>
                        </ul>
                    </li>
                    <!-- Data Service -->
                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" href="#" id="dataDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                            Data Service
                        </a>
                        <ul class="dropdown-menu" aria-labelledby="dataDropdown">
                            <li><a class="dropdown-item" href="#">DB</a></li>
                            <li><a class="dropdown-item" href="#">Web</a></li>
                            <li><a class="dropdown-item" href="#">WAS</a></li>
                            <li><a class="dropdown-item" href="#">DataHubPlatForm</a></li>
                            <li><a class="dropdown-item" href="#">Data Analysis</a></li>
                        </ul>
                    </li>
                    <!-- 고객센터 -->
                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" href="#" id="supportDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                            고객센터
                        </a>
                        <ul class="dropdown-menu" aria-labelledby="supportDropdown">
                            <li><a class="dropdown-item" href="#">공지사항</a></li>
                            <li><a class="dropdown-item" href="#">문의게시판</a></li>
                            <li><a class="dropdown-item" href="#">자료실</a></li>
                        </ul>
                    </li>
                </ul>
            </div>
        </div>
    </nav>

    <!-- 부트스트랩 JS -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</header>