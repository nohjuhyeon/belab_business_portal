<%--
  Created by IntelliJ IDEA.
  User: ksk07
  Date: 25. 1. 8.
  Time: 오후 4:07
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="../common/header.jsp" %>
<head>
    <style>
        body {
            font-family: 'Arial', sans-serif;
            margin: 0;
            padding: 0;
            background-color: #fff; /* 배경색 흰색 */
            color: #000; /* 텍스트 색상 검정 */
        }
    .header-blank {
        height: 270px;
    }
    .header-section {
        background-image: url('images/universe2.jpg');
        background-size: 100% auto; /* 너비를 100%로 설정하고 높이는 자동으로 조정 */
        background-position: top; /* 이미지의 아래쪽이 보이도록 설정 */
        background-repeat: no-repeat; /* 이미지가 반복되지 않도록 설정 */
        color: #fff;
        text-align: center;
        padding: 20px 0;
        box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
        height: 375px; /* 컨테이너 높이 고정 */
      }

    .header-section h1 {
        font-size: 2rem;
        margin-bottom: 5px;
    }
    .header-section hr {
        width: 50px;
        margin: 10px auto;
        border: 1px solid #000;
    }

    .header-section h3 {
        margin: 5px 0 0 0;
        color: #666;
    }
    .nav-section {
        display: flex;
        justify-content: center;
        background-color: #f0f0f0;
        padding: 10px 0;
        border-bottom: 1px solid #ddd;
        flex-wrap: wrap; /* 반응형에서 줄바꿈 가능 */
    }
    .nav-section a {
        color: #333;
        text-decoration: none;
        margin: 5px 10px;
        font-weight: bold;
        padding: 5px 10px;
        border-radius: 5px;
    }
    .nav-section a:hover {
        background-color: #e0e0e0;
    }
    .image-section {
            text-align: center;
            margin: 30px 0;
        }
        .image-section img {
            width: 100%; /* 부모 요소 너비에 맞춤 */
            max-width: 1100px; /* 최대 너비 설정 */
            height: 500px; /* 고정된 높이 */
            object-fit: cover; /* 비율 유지하며, 넘치는 부분은 잘라냄 */
            object-position: center; /* 이미지의 중앙을 표시 */
            border: 2px solid #ddd;
            border-radius: 10px;
        }
        .text-section {
            display: flex;
            justify-content: space-between; /* 두 블록을 양쪽으로 배치 */
            align-items: flex-start; /* 상단 정렬 */
            margin: 30px auto;
            padding: 20px;
            max-width: 1100px; /* 섹션 최대 너비 */
            gap: 20px; /* 두 블록 사이 간격 */
        }
        .text-section h2 {
            flex: 1; /* 왼쪽 블록 */
            font-size: 2em;
            color: #444;
            margin: 0;
            font-weight: 800; /* 텍스트 굵게 설정 */
        }
        .text-section .text-content {
            flex: 2; /* 오른쪽 블록 */
            font-size: 0.9em;
            line-height: 1.8;
            color: #333;
            text-align: justify; /* 본문 정렬 */
        }
        .text-section .text-content p {
            margin-bottom: 15px;
        }
        footer {
            background-color: #f8f8f8;
            text-align: center;
            padding: 10px 0;
            margin-top: 20px;
            border-top: 1px solid #ddd;
            color: #666;
        }

        /* 반응형 디자인 */
        @media (max-width: 992px) {
            header h1 {
                font-size: 2.5em; /* 작은 화면에서 헤더 글자 크기 축소 */
            }
            header h3 {
                font-size: 1em; /* 작은 화면에서 "인사말" 글자 크기 축소 */
            }
            nav a {
                font-size: 0.9em; /* 네비게이션 링크 크기 축소 */
                margin: 5px 5px;
            }
            .text-section {
                flex-direction: column; /* 세로 정렬로 변경 */
                gap: 10px;
            }
            .text-section h2, .text-section .text-content {
                flex: none;
                width: 100%; /* 블록 너비 100% */
            }
            .text-section .text-content {
                text-align: left; /* 본문 왼쪽 정렬 */
            }
        }

        @media (max-width: 480px) {
            header h1 {
                font-size: 2em; /* 더 작은 화면에서 헤더 글자 크기 축소 */
            }
            header h3 {
                font-size: 0.9em; /* "인사말" 글자 크기 더 축소 */
            }
            nav {
                flex-direction: column; /* 네비게이션을 세로로 배치 */
                align-items: center;
            }
            nav a {
                font-size: 0.8em; /* 네비게이션 링크 크기 더 축소 */
                margin: 5px 0;
            }
            .text-section {
                font-size: 0.9em; /* 본문 텍스트 크기 더 축소 */
                padding: 10px;
            }
        }
    </style>
</head>
<body>
    <div class="header-section">
        <div class="header-blank"></div>
        <h1>OUR COMPANY</h1>
        <h2>인사말</h2>
        <hr>
    </div>
  <div class="nav-section">
        <a href="/Greeting">인사말</a>
        <a href="/Directions">오시는 길</a>
  </div>
    <div class="image-section">
        <img src="/images/company_intro.png" alt="회사 이미지">
    </div>
    <div class="text-section">
        <h2>고객의 행복을<br> 함께 만들어 가는 기업</h2>
        <div class="text-content">
            <p>
                비이랩은 고객의 기업가치 향상과 행복을 최우선으로 하여 연구와 개발을 지속하고 있습니다.
                고객의 의견을 소중히 여겨 함께 성장하며, 신뢰받는 기업이 되기 위해 끊임없이 노력합니다.
                언제 어디서나 접근 가능한 서비스 허브와 비즈니스 중심지를 목표로 하고 있으며,
                앞으로도 많은 관심과 성원을 부탁드립니다. 감사합니다.
            </p>
        </div>
</div>
</body>
  <%@ include file="../common/footer.jsp" %>
</html>