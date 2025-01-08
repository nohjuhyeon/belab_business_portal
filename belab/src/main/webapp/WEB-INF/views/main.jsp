<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="common/header.jsp" %>

<head>
    <style>
        body {
            margin: 0;
            font-family: Arial, sans-serif;
            background-color: #f8f8f8;
            color: #333;
        }

        .carousel-inner img {
            width: 100%;
            max-height: 480px;
            object-fit: cover;
        }

        .services {
            display: flex;
            flex-direction: column;
            gap: 20px;
            margin: 20px 0;
            align-items: center;
        }

        .service {
            display: flex;
            align-items: center;
            overflow: hidden;
            max-width: 1200px;
            width: 100%;
        }

        .service img {
            width: 30%;
            height: auto;
            object-fit: cover;
            margin: 0 auto; /* 이미지를 가운데 정렬 */
        }

        .service-text {
            padding: 20px;
            width: 70%;
            display: flex;
            flex-direction: column;
            justify-content: space-between;
        }

        .service-text strong {
            font-size: 2rem;
            color: #333;
            display: block;
            margin-bottom: 10px;
        }

        .service-text p {
            font-size: 1rem;
            color: #555;
            line-height: 1.6;
            margin-bottom: 0px;
        }

        .service-text .highlight {
            font-weight: bold;
            margin-bottom: 20px;
            display: block;
        }

        .service-text .button-container {
            text-align: right;
        }

        .service-text .more-button {
            display: inline-block;
            padding: 10px 20px;
            width: 130px; 
            font-size: 0.9rem;
            color: #000;
            background-color: #fff;
            border: 2px solid #000;
            text-decoration: none;
            border-radius: 8px;
            transition: background-color 0.3s ease, color 0.3s ease;
            text-align: center;

        }

        .service-text .more-button:hover {
            background-color: #000;
            color: #fff;
        }

        /* 반응형 디자인 */
        @media (max-width: 768px) {
            .service {
                flex-direction: column;
                align-items: center;
            }

            .service img {
                width: 70%; /* 모바일에서 이미지가 화면의 90%만 차지 */
                height: auto;
                margin: 10px auto; /* 이미지 양쪽에 공백 추가 */
                border-radius: 8px; /* 이미지 모서리를 둥글게 */
            }

            .service-text {
                width: 90%; /* 텍스트도 화면의 90%만 차지 */
                padding: 20px;
            }

            .service-text .button-container {
                text-align: center;
            }
        }
        .consult {
            background-color: white;
            border-radius: 20px;
            display: flex;
            align-items: center;
            justify-content: space-between;
            padding: 30px;
            width: 90%;
            max-width: 1200px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            margin: 10 auto; /* 중앙 정렬 */
        }
        
      
          .text-section {
            max-width: 70%;
          }
      
          .text-section h1 {
            font-size: 3rem;
            font-weight: bold;
          }
      
          .text-section p {
            font-size: 16px;
            color: #555;
            margin: 10px 0 0;
            line-height: 1.6;
          }
      
          .button-section {
            display: flex;
            align-items: center;
            gap: 20px;
          }
      
          .button-section button {
            background-color: black;
            color: white;
            border: none;
            padding: 12px 25px;
            font-size: 16px;
            border-radius: 30px;
            cursor: pointer;
            transition: background-color 0.3s ease;
          }
      
          .button-section button:hover {
            background-color: #444;
          }
      
          .chat-icon {
            width: 50px;
            height: 50px;
            background-color: #FFD700;
            border-radius: 50%;
            display: flex;
            justify-content: center;
            align-items: center;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
          }
      
          .chat-icon img {
            width: 30px;
            height: 30px;
          }
      
          @media (max-width: 768px) {
            .consult {
              flex-direction: column;
              text-align: center;
              padding: 20px;
            }
      
            .text-section {
              max-width: 100%;
            }
      
            .button-section {
              flex-direction: column;
            }
          }
    </style>
</head>
<body>
    <!-- 메인 이미지 슬라이드 -->
    <div id="mainCarousel" class="carousel slide" data-bs-ride="carousel">
        <div class="carousel-inner">
            <div class="carousel-item active">
                <img src="/images/main_slide_1.png" class="d-block w-100" alt="슬라이드 1">
            </div>
            <div class="carousel-item">
                <img src="/images/main_slide_2.png" class="d-block w-100" alt="슬라이드 2">
            </div>
            <div class="carousel-item">
                <img src="/images/main_slide_3.png" class="d-block w-100" alt="슬라이드 3">
            </div>
        </div>
        <button class="carousel-control-prev" type="button" data-bs-target="#mainCarousel" data-bs-slide="prev">
            <span class="carousel-control-prev-icon" aria-hidden="true"></span>
            <span class="visually-hidden">이전</span>
        </button>
        <button class="carousel-control-next" type="button" data-bs-target="#mainCarousel" data-bs-slide="next">
            <span class="carousel-control-next-icon" aria-hidden="true"></span>
            <span class="visually-hidden">다음</span>
        </button>
    </div>

    <!-- 서비스 섹션 -->
    <div class="services">
        <div class="service">
            <img src="/images/main_data_service.jpg" alt="데이터 서비스">
            <div class="service-text">
                <strong>데이터 서비스</strong>
                <span class="highlight">
                    오라클 소프트웨어 전 제품을 공급하며 특히, 데이터베이스를 설계하고, 진단, 컨설팅을 통해 최적의 운영 방안을 제시해 드립니다.
                </span>
                <p>
                    데이터베이스의 국내의 선두주자는 오라클입니다. Database 사업부는 오라클의 소프트웨어, 하드웨어 전 제품을 공급할 뿐 아니라 기술지원(PS)을 제공하고 있습니다.
                </p>
                <p>
                    또한 유료화된 Redis, MySQL 등 툴을 고객의 전산 자원을 보호하고 있으며 DB 진단, 컨설팅, 마이그레이션 등을 통해 고객과 가까운 거리에서 사업을 진행하고 있습니다.
                </p>
                <div class="button-container">
                    <a href="#" class="more-button">More</a>
                </div>
            </div>
        </div>
        <div class="service">
            <img src="/images/main_platform_service.jpg" alt="플랫폼 서비스">
            <div class="service-text">
                <strong>플랫폼 서비스</strong>
                <span class="highlight">
                    클라우드 데이터센터 및 지능형 데이터센터의 설계, 구축 및 전산 시스템 이전을 담당합니다.  또한, 물리적 광케이블의 해킹 관제 및 모니터링 시스템을 통해 고객의 전산 자원을 보호합니다.
                </span>
                <p>
                    데이터센터는 클라우드, IoT, 빅데이터, 인공지능 등 현대 사회의 핵심 역할을 담당합니다. 미래의 데이터센터는 전력, 냉각, 서버, 고속 데이터 처리 및 스케일러블 네트워크 기술을 요구합니다.
                </p>
                <p>
                    이 사업부는 데이터센터의 설계, 구축, 이전을 전문으로 합니다.
                </p>
                <div class="button-container">
                    <a href="#" class="more-button">More</a>
                </div>
            </div>
        </div>
        <div class="service">
            <img src="/images/main_content_service.jpg" alt="컨텐츠 서비스">
            <div class="service-text">
                <strong>컨텐츠 서비스</strong>
                <span class="highlight">
                    웹로그 분석 솔루션 제품, IT 정보 통합 검색 플랫폼, 반려동물 질환 관리 플랫폼 등을 설계 및 공급하여 고객에게 최적의 서비스를 제공하고 있습니다. 
                </span>
                <p>
                    컨텐츠 서비스 사업부는 웹로그 분석 BeLOG등을 설계 및 공급하고 고객 서비스의 모니터링을 지원하여 서비스의 안정성 및 반응성을 극대화함으로써 최종적으로 비즈니스 성과를 향상시키는 역할을 담당합니다.
                </p>
                <p>
                    데이터 기반의 접근 방식으로 문제를 식별하고 해결하여 고객 만족도를 높이는 데 중점을 둡니다.
                </p>
                <div class="button-container">
                    <a href="#" class="more-button">More</a>
                </div>
            </div>
        </div>
    </div>
    <div class="consult">
        <div class="text-section">
          <h1>고객센터</h1>
          <h3>CONTACT US</h3>
          <p>(주) 비이랩은 항상 고객과의 소통을 위해 노력합니다.</p>
          <p>궁금하신 사항은 언제든지 문의해주셔도 됩니다. 항상 고객의 입장에서 생각합니다.</p>
        </div>
        <div class="button-section">
          <button>바로 가기</button>
        </div>
      </div>
</body>

<%@ include file="common/footer.jsp" %>


