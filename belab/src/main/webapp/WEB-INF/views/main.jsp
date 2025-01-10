<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="common/header.jsp" %>

<head>
  <style>
    body {
      margin: 0;
      font-family: Arial, sans-serif;
      background-color: #f4f4f4; /* 연한 배경색 */
      color: #333;
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
      font-size: 36px;
      margin: 0;
      font-weight: bold;
    }

    .services {
      display: flex;
      flex-direction: column;
      gap: 40px;
      margin: 40px auto;
      align-items: center;
      max-width: 1200px;
      width: 90%;
    }

    .service {
      display: flex;
      align-items: center;
      background: #fff;
      border-radius: 10px;
      box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
      overflow: hidden;
      width: 100%;
    }

    .service img {
      width: 40%;
      height: auto;
      object-fit: cover;
    }

    .service-text {
      padding: 30px;
      width: 60%;
      display: flex;
      flex-direction: column;
      justify-content: space-between;
    }

    .service-text strong {
      font-size: 24px;
      color: #6a1b1b; /* 어두운 갈색 */
      margin-bottom: 10px;
    }

    .service-text p {
      font-size: 16px;
      color: #555;
      line-height: 1.6;
      margin-bottom: 20px;
    }

    .service-text .highlight {
      font-weight: bold;
      margin-bottom: 20px;
      color: #333;
    }

    .service-text .button-container {
      text-align: right;
    }

    .service-text .more-button {
      display: inline-block;
      padding: 12px 24px;
      font-size: 16px;
      color: #fff;
      background-color: #6a1b1b; /* 어두운 갈색 */
      border: none;
      border-radius: 5px;
      text-decoration: none;
      transition: background-color 0.3s ease, color 0.3s ease;
      text-align: center;
      cursor: pointer;
    }

    .service-text .more-button:hover {
      background-color: #333;
      color: #fff;
    }

    /* 반응형 디자인 */
    @media (max-width: 768px) {
      .service {
        flex-direction: column;
        align-items: center;
      }

      .service img {
        width: 100%;
        height: auto;
      }

      .service-text {
        width: 90%;
        padding: 20px;
      }

      .service-text .button-container {
        text-align: center;
      }
    }

    .consult {
      background-color: #fff;
      border-radius: 10px;
      display: flex;
      align-items: center;
      justify-content: space-between;
      padding: 30px;
      max-width: 1200px;
      width: 90%;
      box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
      margin: 40px auto;
    }

    .text-section {
      max-width: 70%;
    }

    .text-section h1 {
      font-size: 28px;
      font-weight: bold;
      color: #6a1b1b; /* 어두운 갈색 */
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
      background-color: #6a1b1b; /* 어두운 갈색 */
      color: #fff;
      border: none;
      padding: 12px 25px;
      font-size: 16px;
      border-radius: 30px;
      cursor: pointer;
      transition: background-color 0.3s ease;
    }

    .button-section button:hover {
      background-color: #333;
    }
  </style>
</head>

<body>
  <!-- 메인 이미지 섹션 -->
  <div class="header-section">
    <div class="header-blank"></div>
    <h1>Welcome to Our Services</h1>
  </div>

  <!-- 서비스 섹션 -->
  <div class="services">
    <div class="service">
      <img src="/images/main_data_service.jpg" alt="데이터 서비스">
      <div class="service-text">
        <strong>데이터 서비스</strong>
        <span class="highlight">최적의 데이터베이스 운영 방안을 제공합니다.</span>
        <p>오라클 소프트웨어 전 제품을 공급하며, 데이터베이스 설계, 진단, 컨설팅을 통해 최적의 운영 방안을 제시합니다.</p>
        <div class="button-container">
          <a href="#" class="more-button">More</a>
        </div>
      </div>
    </div>

    <div class="service">
      <img src="/images/main_platform_service.jpg" alt="플랫폼 서비스">
      <div class="service-text">
        <strong>플랫폼 서비스</strong>
        <span class="highlight">지능형 데이터센터 설계 및 구축</span>
        <p>클라우드 데이터센터 설계, 구축 및 전산 시스템 이전을 담당하며, 고객의 전산 자원을 보호합니다.</p>
        <div class="button-container">
          <a href="#" class="more-button">More</a>
        </div>
      </div>
    </div>

    <div class="service">
      <img src="/images/main_content_service.jpg" alt="컨텐츠 서비스">
      <div class="service-text">
        <strong>컨텐츠 서비스</strong>
        <span class="highlight">최적의 IT 솔루션 제공</span>
        <p>웹로그 분석, IT 정보 통합 검색 플랫폼 등을 설계 및 공급하여 고객에게 최적의 서비스를 제공합니다.</p>
        <div class="button-container">
          <a href="#" class="more-button">More</a>
        </div>
      </div>
    </div>
  </div>

  <!-- 컨설팅 섹션 -->
  <div class="consult">
    <div class="text-section">
        <h1>고객센터</h1>
        <h3>CONTACT US</h3>
        <p>(주) 비이랩은 항상 고객과의 소통을 위해 노력합니다.</p>
        <p>궁금하신 사항은 언제든지 문의해주셔도 됩니다. 항상 고객의 입장에서 생각합니다.</p>
  </div>
    <div class="button-section">
      <button>Contact Us</button>
    </div>
  </div>
</body>