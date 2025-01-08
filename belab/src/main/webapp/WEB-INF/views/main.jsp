<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="common/header.jsp" %>

<head>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
  <style>
    body {
        margin: 0;
        font-family: Arial, sans-serif;
        background-color: #f8f8f8;
        color: #333;
    }

    .description {
        text-align: center;
        font-size: 16px;
        margin: 20px;
    }

    .services {
        display: flex;
        flex-direction: column;
        gap: 20px;
        margin: 20px 0;
        align-items: center;
    }



    .service img {
        width: 80px;
        height: 80px;
        margin-right: 10px;
    }

    .service-text {
        font-size: 14px;
        line-height: 1.5;
    }

    .contact-section {
        text-align: center;
        background-color: #f5f5f5;
        color: #333;
        padding: 20px;
        border-top: 1px solid #ddd;
    }

    .contact-section p {
        margin: 10px 0;
    }

    .contact-buttons {
        display: flex;
        justify-content: center;
        gap: 10px;
    }

    .contact-buttons button {
        padding: 10px 20px;
        font-size: 14px;
        border: none;
        border-radius: 5px;
        cursor: pointer;
    }

    .chat-button {
        background-color: #007bff;
        color: #fff;
    }

    .link-button {
        background-color: #fff;
        color: #333;
        border: 1px solid #ddd;
    }
    .service {
    display: flex;
    align-items: center;
    background: #fff;
    border: 1px solid #ddd;
    border-radius: 8px;
    box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
    overflow: hidden;
    max-width: 1000px;
    width: 100%;
    }
    .service img {
        width: 30%;
        height: auto;
        object-fit: cover;
    }
    .service-text {
        padding: 20px;
        width: 70%;
    }
    .service-text strong {
        font-size: 1.5rem;
        color: #333;
        display: block;
        margin-bottom: 10px;
    }
    .service-text p {
        font-size: 1rem;
        color: #555;
        line-height: 1.6;
        margin-bottom: 0;
    }
    .service-text .highlight {
        font-weight: bold;
        margin-bottom: 20px;
        display: block;
    }
    .service-text .more-button {
        display: inline-block;
        padding: 10px 20px;
        font-size: 0.9rem;
        color: #fff;
        background-color: #007bff;
        text-decoration: none;
        border-radius: 4px;
        transition: background-color 0.3s ease;
    }
    .service-text .more-button:hover {
        background-color: #0056b3;
    }
    </style>
</head>
<body>
  <!-- 메인 이미지 슬라이드 -->
  <div id="mainCarousel" class="carousel slide" data-bs-ride="carousel">
      <div class="carousel-inner">
          <div class="carousel-item active">
              <img src="https://via.placeholder.com/1920x600?text=Slide+1" class="d-block w-100" alt="슬라이드 1">
          </div>
          <div class="carousel-item">
              <img src="https://via.placeholder.com/1920x600?text=Slide+2" class="d-block w-100" alt="슬라이드 2">
          </div>
          <div class="carousel-item">
              <img src="https://via.placeholder.com/1920x600?text=Slide+3" class="d-block w-100" alt="슬라이드 3">
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

  <!-- 설명 -->
  <div class="description">
      <p>이 페이지에서는 데이터 서비스, 플랫폼 서비스, 컨텐츠 서비스의 세 가지 핵심 솔루션을 제공합니다.</p>
  </div>

  <!-- 서비스 섹션 -->
  <div class="services">
    <div class="service">
        <img src="img_data_service.png" alt="데이터 서비스">
        <div class="service-text">
            <strong>데이터 서비스</strong>
            <span class="highlight">
                오라클 소프트웨어 전 제품을 공급하며 특히, 데이터베이스를 설계하고, 진단, 컨설팅을 통해 최적의 운영 방안을 제시해 드립니다.
            </span>
            <!-- <p>
                데이터베이스의 국내의 선두주자는 오라클입니다. Database 사업부는 오라클의 소프트웨어, 하드웨어 전 제품을 공급할 뿐 아니라 기술지원(PS)을 제공하고 있습니다.
            </p>
            <p>
                또한 유료화된 Redis, MySQL 등 툴을 고객의 전산 자원을 보호하고 있으며 DB 진단, 컨설팅, 마이그레이션 등을 통해 고객과 가까운 거리에서 사업을 진행하고 있습니다.
            </p> -->
            <a href="#" class="more-button">More</a>
        </div>
    </div>
      <div class="service">
          <img src="img_platform_service.png" alt="플랫폼 서비스">
          <div class="service-text">
              <strong>Img_platform_service</strong>
              <p>text</p>
          </div>
      </div>
      <div class="service">
          <img src="img_data_service.png" alt="컨텐츠 서비스">
          <div class="service-text">
              <strong>Img_data_service</strong>
              <p>text</p>
          </div>
      </div>
  </div>

  <!-- 고객센터 -->
  <div class="contact-section">
      <h2>고객센터</h2>
      <p>CONTACT US</p>
      <p>(주) 비이랩은 항상 고객과의 소통을 위해 노력합니다.<br>궁금하신 사항은 언제든지 문의해주셔도 됩니다. 항상 고객의 입장에서 생각합니다.</p>
      <div class="contact-buttons">
          <button class="link-button">바로가기</button>
          <button class="chat-button">채팅상담</button>
      </div>
  </div>
</body>
<script>
    // 햄버거 버튼과 메뉴 DOM 요소 가져오기
    const navbarToggler = document.querySelector('.navbar-toggler');
    const navbarCollapse = document.querySelector('#navbarNav');

    // 햄버거 버튼에 마우스를 올렸을 때 메뉴 열기
    navbarToggler.addEventListener('mouseenter', () => {
        navbarCollapse.classList.add('show'); // 메뉴 열기
    });

    // 메뉴 영역에서 마우스가 벗어났을 때 메뉴 닫기
    navbarCollapse.addEventListener('mouseleave', () => {
        navbarCollapse.classList.remove('show'); // 메뉴 닫기
    });
</script>
<%@ include file="common/footer.jsp" %>


