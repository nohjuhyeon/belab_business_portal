<%@ page language="java" contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" %>
  <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!doctype html>
<html lang="ko">
<head>
    <title>BeLAB - Research & Development</title>
    <link href="test/images/favicon.png" rel="icon" />

    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="title" content="BeLAB" />
    <meta name="keywords" content="BeLAB, Research, Development, Cloud, MSP, AI, DATA" />
    <meta name="description" content="BeLAB - Research & Development" />
    <meta name="viewport"
        content="width=device-width,initial-scale=1.0,minimum-scale=1.0,maximum-scale=1.0,user-scalable=yes" />
    <meta name="format-detection" content="telephone=no" />
    
    <meta property="og:type" content="website">
    <meta property="og:title" content="BeLAB">
    <meta property="og:description" content="BeLAB - Research & Development" />
    <meta property="og:image" content="test/images/favicon.png">
    <meta property="og:image:width" content="1200">
    <meta property="og:image:height" content="630">


    <!-- Web Fonts -->
    <link href="https://fonts.googleapis.com/css2?family=Poppins:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,500;1,600;1,700;1,800;1,900&display=swap" rel="stylesheet">

    <!-- Stylesheet
    ============================== -->
    <!-- Bootstrap -->
    <link rel="stylesheet" type="text/css" href="test/vendor/bootstrap/css/bootstrap.min.css" />
    <!-- Font Awesome Icon -->
    <link rel="stylesheet" type="text/css" href="test/vendor/font-awesome/css/all.min.css" />
    <!-- Owl Carousel -->
    <link rel="stylesheet" type="text/css" href="test/vendor/owl.carousel/assets/owl.carousel.min.css" />
    <!-- Magnific Popup -->
    <link rel="stylesheet" type="text/css" href="test/vendor/magnific-popup/magnific-popup.min.css" />
    <!-- Custom Stylesheet -->
    <link rel="stylesheet" type="text/css" href="test/css/stylesheet.css" />
    <!-- Colors Css -->
    <link id="color-switcher" type="text/css" rel="stylesheet" href="test/css/color-blue.css" />
</head>

<body data-bs-spy="scroll" data-bs-target="#header-nav" data-bs-offset="0">

    <!-- Preloader -->
    <div class="preloader">
        <div class="lds-ellipsis">
            <div></div>
            <div></div>
            <div></div>
            <div></div>
        </div>
    </div>
    <!-- Preloader End -->

    <!-- Document Wrapper   
    =============================== -->
    <div id="main-wrapper">
        <!-- Header
        ============================ -->
        <header id="header" class="sticky-top-slide">
            <!-- Navbar -->
            <nav class="primary-menu navbar navbar-expand-lg navbar-dark bg-transparent border-bottom-0">
                <div class="container-fluid position-relative g-lg-4">
                    <div class="col-auto col-lg-2">
                        <!-- Logo -->
                        <a class="logo" href="#" title="Simone"> <img src="test/images/logo-light.png" alt="BeLAB" height="27" /> </a>
                        <!-- Logo End -->
                    </div>
                    <div class="col col-lg-8 navbar-accordion">
                        <button class="navbar-toggler ms-auto" type="button" data-bs-toggle="collapse" data-bs-target="#header-nav"><span></span><span></span><span></span></button>
                        <div id="header-nav" class="collapse navbar-collapse justify-content-center">
                            <ul class="navbar-nav">
                                <li class="nav-item"><a class="nav-link smooth-scroll active" href="#home">Home</a></li>
                                <li class="nav-item"><a class="nav-link smooth-scroll" href="#about">About</a></li>
                                <li class="nav-item"><a class="nav-link smooth-scroll" href="#services">Services</a></li>
                                <li class="nav-item"><a class="nav-link smooth-scroll" href="#testimonial">Partners</a></li>
                                <!-- <li class="nav-item"><a class="nav-link smooth-scroll" href="#portfolio">Projects</a></li> -->
                                <!--li class="nav-item"><a class="nav-link smooth-scroll" href="#resume">Resume</a></li-->
                                <li class="nav-item"><a class="nav-link smooth-scroll" href="#contact">Contact</a></li>
                            </ul>
                        </div>
                    </div>
                </div>
            </nav>
            <!-- Navbar End -->
        </header>
        <!-- Header End -->

        <!-- Content
        ============================================= -->
        <div id="content" role="main">

            <!-- Intro
            ============================================= -->
            <section id="home">
                <div class="hero-wrap">
                    <div class="hero-mask opacity-8 bg-dark"></div>
                    <div class="hero-bg parallax" style="background-image:url('test/images/intro-bg.jpg');"></div>
                    <div class="hero-content section d-flex min-vh-100">
                        <div class="container my-auto">
                            <div class="row">
                                <div class="col-12 text-center">
                                    <div class="typed-strings">
                                        <p>클라우드 컨설팅 & 구축</p>
                                        <p>매니지드 서비스</p>
                                        <p>Data Management</p>
                                        <p>AI Business</p>
                                    </div>
                                    <p class="text-7 fw-500 text-white mb-2 mb-md-3">BeLAB</p>
                                    <p class="text-5 text-light mb-4">provide</p>
                                    <h2 class="text-16 fw-600 text-white mb-2 mb-md-3"><span class="typed"></span></h2>
                                    <p class="text-5 text-light mb-4">Service</p>                                    
                                    <a href="#services" class="btn btn-outline-primary rounded-pill shadow-none smooth-scroll mt-2">More</a>
                                </div>
                            </div>
                        </div>
                        <a href="#about" class="scroll-down-arrow text-white smooth-scroll"><span class="animated"><i class="fa fa-chevron-down"></i></span></a>
                    </div>
                </div>
            </section>
            <!-- Intro end -->

            <!-- About
            ============================================= -->
            <section id="about" class="section">
                <div class="container">
                    <!-- Heading -->
                    <div class="position-relative d-flex text-center mb-5">
                        <h2 class="text-24 text-light opacity-4 fw-600 w-100 mb-0">BeLAB</h2>
                        <p class="text-9 text-dark fw-600 position-absolute w-100 align-self-center lh-base mb-0">회사소개<span class="heading-separator-line border-bottom border-3 border-primary d-block mx-auto"></span> </p>
                    </div>
                    <!-- Heading end-->

                    <div class="row gy-5">
                        <div class="col-lg-7 col-xl-8 text-center text-lg-start">
                            <h2 class="text-7 fw-600 mb-3"><span class="text-primary">고민은 줄이고, 성장은 가속화하세요!</span></h2>
                            <p>비이랩은 <span class="text-danger">안정적이고 효율적인 클라우드 환경</span>을 제공하는 <span class="text-danger">최고의 MSP(Managed Service Provider)</span> 입니다. 기업의 IT 인프라를 체계적으로 관리하고, 보안 강화부터 클라우드 운영까지 맞춤형 솔루션을 제공합니다.</p>
                            <p>비즈니스의 성장과 성공을 위해 클라우드 운영의 모든 고민을 덜어드립니다. <span class="text-danger">24/7 모니터링, 신속한 기술 지원, 최신 IT 솔루션</span> 제공을 통해 고객이 핵심 업무에 집중할 수 있도록 돕겠습니다.</p>
                            <p><span class="text-danger">안전하고 스마트한 클라우드 운영, 지금 경험해보세요!</span></p>

                        </div>
                        <div class="col-lg-5 col-xl-4">
                            <div class="ps-lg-4">
                                <ul class="list-style-2">
                                    <li class=""><span class="fw-600 me-2">(주)비이랩</li>
                                        <li class="">02-451-0902</li>
                                        <li class=""><a href="mailto:help@belab.co.kr">help@belab.co.kr</a></li>
                                    <li class="border-0">서울 강남구 광평로 295</li>
                                </ul>
                                <a href="#contact" class="btn btn-primary rounded-pill">오시는길</a>
                            </div>
                        </div>
                    </div>
                    <!--div class="brands-grid separator-border mt-5">
                        <div class="row">
                            <div class="col-6 col-md-3">
                                <div class="featured-box text-center">
                                    <h4 class="text-12 text-muted mb-0"><span class="counter" data-from="0" data-to="10">10</span>+</h4>
                                    <p class="mb-0">설립</p>
                                </div>
                            </div>
                            <div class="col-6 col-md-3">
                                <div class="featured-box text-center">
                                    <h4 class="text-12 text-muted mb-0"><span class="counter" data-from="0" data-to="250">250</span>+</h4>
                                    <p class="mb-0">파트너너</p>
                                </div>
                            </div>
                            <div class="col-6 col-md-3">
                                <div class="featured-box text-center">
                                    <h4 class="text-12 text-muted mb-0"><span class="counter" data-from="0" data-to="650">650</span>+</h4>
                                    <p class="mb-0">고객사</p>
                                </div>
                            </div>
                            <div class="col-6 col-md-3">
                                <div class="featured-box text-center">
                                    <h4 class="text-12 text-muted mb-0"><span class="counter" data-from="0" data-to="38">20</span></h4>
                                    <p class="mb-0">무언가</p>
                                </div>
                            </div>
                        </div>
                    </div-->

                </div>
            </section>
            <!-- About end -->

            <section class="section hero-wrap bg-dark">
                <div class="hero-mask opacity-8 bg-dark"></div>
                <div class="hero-bg" style="background-image:url('images/intro-bg.jpg');"></div>
                <div class="hero-content">
                  <div class="container">
                    <div class="row">
                      <div class="col-sm-6 col-md-3 mb-4 mb-md-0">
                        <div class="featured-box text-center">
                          <h4 class="text-12 text-white font-weight-600 mb-0"><span class="counter" data-from="0" data-to="660">660</span>+</h4>
                          <p class="text-3 text-light font-weight-300 mb-0">Happy Clients</p>
                        </div>
                      </div>
                      <div class="col-sm-6 col-md-3 mb-4 mb-md-0">
                        <div class="featured-box text-center">
                          <h4 class="text-12 text-white font-weight-600 mb-0"><span class="counter" data-from="0" data-to="1500">1500</span>+</h4>
                          <p class="text-3 text-light font-weight-300 mb-0">Projects Delivered</p>
                        </div>
                      </div>
                      <div class="col-sm-6 col-md-3 mb-4 mb-md-0">
                        <div class="featured-box text-center">
                          <h4 class="text-12 text-white font-weight-600 mb-0"><span class="counter" data-from="0" data-to="40">40</span>+</h4>
                          <p class="text-3 text-light font-weight-300 mb-0">Client Countries</p>
                        </div>
                      </div>
                      <div class="col-sm-6 col-md-3 mt-md-0">
                        <div class="featured-box text-center">
                          <h4 class="text-12 text-white font-weight-600 mb-0"><span class="counter" data-from="0" data-to="72">72</span></h4>
                          <p class="text-3 text-light font-weight-300 mb-0">Team Member</p>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
            </section>

            <!-- Services
            ============================================= -->
            <section id="services" class="section bg-light">
                <div class="container">
                    <!-- Heading -->
                    <div class="position-relative d-flex text-center mb-5">
                        <h2 class="text-24 text-light opacity-4 text-uppercase fw-600 w-100 mb-0">Services</h2>
                        <p class="text-9 text-dark fw-600 position-absolute w-100 align-self-center lh-base mb-0">사업영역<span class="heading-separator-line border-bottom border-3 border-primary d-block mx-auto"></span> </p>
                    </div>
                    <!-- Heading end-->

                    <div class="row">
                        <div class="col-lg-11 mx-auto">
                            <div class="row">
                                <div class="col-md-6">
                                    <div class="featured-box style-3 mb-5">
                                        <div class="featured-box-icon text-primary bg-white shadow-sm rounded"> <i class="fas fa-clipboard-list"></i> </div>
                                        <h3>Cloud Consulting</h3>
                                        <p class="mb-0">클라우드 도입 초기 단계부터 최적화, 보안 강화, 비용 절감까지 비즈니스 목표에 맞춘 맞춤형 전략을 제공합니다.</p>
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="featured-box style-3 mb-5">
                                        <div class="featured-box-icon text-primary bg-white shadow-sm rounded"> <i class="fas fa-cogs"></i></div>
                                        <h3>Cloud Management</h3>
                                        <p class="mb-0">클라우드 인프라 전반을 지속적으로 모니터링 및 유지보수하여 기업이 핵심 비즈니스에 집중할 수 있도록 돕습니다.</p>
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="featured-box style-3 mb-5">
                                        <div class="featured-box-icon text-primary bg-white shadow-sm rounded"> <i class="fas fa-sliders-h"></i> </div>
                                        <h3>Managed Service</h3>
                                        <p class="mb-0">기업의 IT 환경을 24/7 실시간 관리하며, 장애 예방, 보안 강화, 비용 최적화 등의 다양한 IT 서비스를 제공하여 운영 부담을 줄이고 안정적인 IT 환경을 보장합니다</p>
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="featured-box style-3 mb-5">
                                        <div class="featured-box-icon text-primary bg-white shadow-sm rounded"> <i class="fas fa-brain"></i> </div>
                                        <h3>A.I Business</h3>
                                        <p class="mb-0">AI 모델 개발, 데이터 처리 및 분석, 클라우드 기반 AI 운영, 머신러닝 자동화(AutoML) 등 다양한 AI 서비스를 제공하여 기업의 디지털 전환과 경쟁력 강화를 지원합니다<br><br></p>
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="featured-box style-3 mb-5 mb-md-0">
                                        <div class="featured-box-icon text-primary bg-white shadow-sm rounded"> <i class="fas fa-database"></i> </div>
                                        <h3>Database Consulting</h3>
                                        <p class="mb-0">데이터베이스 설계, 최적화, 성능 관리, 보안 강화 등을 수행하여 기업의 IT 환경을 개선하고 데이터 기반 의사 결정을 지원합니다.</p>
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="featured-box style-3 mb-0">
                                        <div class="featured-box-icon text-primary bg-white shadow-sm rounded"> <i class="fas fa-chart-area"></i> </div>
                                        <h3>Database Management</h3>
                                        <p class="mb-0">성능 최적화, 보안 강화, 백업 및 장애 복구, 지속적인 모니터링을 통해 기업의 데이터 자산을 안전하게 보호하고, 최적의 운영 환경을 유지할 수 있도록 지원합니다.</p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </section>
            <!-- Services end -->

            <!-- Line Banner
            ============================================= -->
            <section class="section bg-primary text-center">
                <div class="container wow zoomInDown" style="visibility: visible;">
                  <p class="lead text-white">안전하고 스마트한 클라우드 운영, 지금 시작해보세요!</p>
                  <h2 class="text-10 text-white mb-4">Start a project with BeLAB today!</h2>
                  <a href="#contact" class="btn btn-light rounded-pill shadow-none smooth-scroll mt-2 wow rubberBand" data-wow-delay="1.2s" style="visibility: visible; animation-delay: 1.2s;">Contact Us</a> </div>
            </section>
            <!-- Line Banner end -->


            <!-- Partner testimonial
            ============================================= -->
            <section id="testimonial" class="section bg-body">
                <div class="container">
            
                    <!-- Heading 
                    <div class="position-relative d-flex text-center mb-5">
                        <h2 class="text-24 text-light opacity-4 fw-600 w-100 mb-0">Partners</h2>
                        <p class="text-9 text-dark fw-600 position-absolute w-100 align-self-center lh-base mb-0">파트너<span class="heading-separator-line border-bottom border-3 border-primary d-block mx-auto"></span> </p>
                    </div>
                    <-- Heading end-->

                    <!-- Heading -->
                    <div class="row mb-5 wow fadeInUp" style="visibility: visible;">
                        <div class="col-lg-9 col-xl-8 mx-auto text-center">
                            <h2 class="fw-600 mb-3">Our Partners</h2>
                            <hr class="heading-separator-line border-primary border-2 opacity-10 mx-auto">
                            <p class="text-4 text-muted">관련 분야의 최고의 파트너들과 함께 Cloud 혁신을 선도합니다.</p>
                        </div>
                    </div>
                    <!-- Heading End -->

                    <div class="row wow fadeInUp" style="visibility: visible;">
                        <div class="col-lg-9 mx-auto">
                            <div class="owl-carousel owl-theme owl-loaded owl-drag" data-autoplay="true" data-loop="true" data-nav="true" data-margin="30" data-slideby="1" data-stagepadding="5" data-items-xs="1" data-items-sm="1" data-items-md="1" data-items-lg="1">
                                <div class="owl-stage-outer">
                                    <div class="owl-stage" style="transform: translate3d(-2148px, 0px, 0px); transition: 0.25s; width: 5738px; padding-left: 5px; padding-right: 5px;">
                                        <div class="owl-item active" style="width: 686px; margin-right: 30px;">
                                            <div class="item text-center px-5">
                                                <p class="text-4">"기업용 클라우드 컴퓨팅 서비스, IaaS, PaaS, SaaS, 글로벌 리전 및 보안기술 인증 보유"</p>
                                                <img class="img-fluid d-inline-block w-auto" style="max-height: 100px;" src="https://www.didim365.com/wp-content/uploads/2022/03/ncp-logo-3-8.png" alt=""> <strong class="d-block fw-500">NAVER CLOUD PLATFORM</strong> <span class="text-muted text-2">네이버클라우드</span>
                                            </div>
                                        </div>
                                        <div class="owl-item " style="width: 686px; margin-right: 30px;">
                                            <div class="item text-center px-5">
                                                <p class="text-4">"안정적이고 유연한 기업용 클라우드 컴퓨팅 서비스, 오픈스택 기반의 개방성과 신뢰로 고객사의 비즈니스에 힘이 되는 NHN Cloud"</p>
                                                <img class="img-fluid d-inline-block w-auto" style="max-height: 100px;" src="https://www.linux.kr/_Img/cloud/nhn-logo.png" alt=""> <strong class="d-block fw-500">NHN Cloud</strong> <span class="text-muted text-2">엔에이치엔클라우드</span>
                                            </div>
                                        </div>
                                        <div class="owl-item" style="width: 686px; margin-right: 30px;">
                                            <div class="item text-center px-5">
                                                <p class="text-4">"kt cloud만의 특장점을 기반으로 공공, 금융, 미디어 등 주요 산업별 요구사항을 완벽히 충족하는 맞춤형, 융합형 Cloud 서비스를 제공합니다."</p>
                                                <img class="img-fluid d-inline-block w-auto" style="max-height: 100px;" src="https://upload.wikimedia.org/wikipedia/commons/b/be/Kt_cloud_CI.png" alt=""> <strong class="d-block fw-500">kt cloud</strong> <span class="text-muted text-2">케이티클라우드</span>
                                            </div>
                                        </div>
                                        <div class="owl-item " style="width: 686px; margin-right: 30px;">
                                            <div class="item text-center px-5">
                                                <p class="text-4">"비즈니스 연속성은 유지하면서, 클라우드 자원의 빠른 확장과 IT 자원의 효율적인 사용이 가능"</p>
                                                <img class="img-fluid d-inline-block w-auto" style="max-height: 100px;" src="https://image.samsungsds.com/kr/media-gallery/__icsFiles/afieldfile/2021/01/21/CI-KR_thumb.jpg?queryString=20250416023438&quot" alt=""> <strong class="d-block fw-500">삼성SDS 클라우드</strong> <span class="text-muted text-2">삼성 SDS클라우드</span>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="owl-nav"><button type="button" role="presentation" class="owl-prev"><i class="fa fa-chevron-left"></i></button><button type="button" role="presentation" class="owl-next"><i class="fa fa-chevron-right"></i></button></div>
                            </div>
                        </div>
                    </div>
                </div>
            </section>
            <!-- Partner end -->


            <!-- Project
            ============================================= -->
            <!-- <section id="portfolio" class="section bg-light">
                <div class="container"> -->
                    <!-- Heading -->
                    <!-- <div class="row mb-5 wow fadeInUp" style="visibility: visible;">
                        <div class="col-lg-9 col-xl-8 mx-auto text-center">
                            <h2 class="fw-600 mb-3">Our Projects</h2>
                            <hr class="heading-separator-line border-primary border-2 opacity-10 mx-auto">
                            <p class="text-4 text-muted">I help you build brand for your business at an affordable price. Thousands of clients have procured exceptional results while working with Me.</p>
                        </div>
                    </div> -->
                    <!-- Heading End -->

                    <!-- Filter Menu -->
                    <!-- <ul class="portfolio-menu nav nav-pills text-uppercase justify-content-center border-bottom-0 mb-5 wow fadeInUp" style="visibility: visible;">
                        <li class="nav-item"> <a data-filter="*" class="nav-link rounded-pill active" href="">All</a></li>
                        <li class="nav-item"> <a data-filter=".tab_cloud" href="" class="nav-link rounded-pill">Cloud</a></li>
                        <li class="nav-item"> <a data-filter=".tab_data" href="" class="nav-link rounded-pill">Data</a></li>
                        <li class="nav-item"> <a data-filter=".tab_ai" href="" class="nav-link rounded-pill">AI</a></li>
                    </ul> -->
                    <!-- Filter Menu end -->

                    <!-- <div class="portfolio popup-ajax-gallery wow fadeInUp" style="visibility: visible;">
                        <div class="row portfolio-filter g-4" style="position: relative; height: 1380px;">
                            <div class="col-sm-6 col-lg-4 tab_cloud" style="position: absolute; left: 0px; top: 0px;">
                                <div class="portfolio-box rounded">
                                    <div class="portfolio-img rounded"> <img class="img-fluid d-block" src="test/images/projects/project-1.jpg" alt="">
                                        <div class="portfolio-overlay"> <a class="popup-ajax stretched-link" href="test/ajax/portfolio-ajax-project-1.html"></a>
                                            <div class="portfolio-overlay-details">
                                                <p class="text-white text-6"><i class="fas fa-plus"></i></p>
                                                <h5 class="text-white fw-400">Project Title 1</h5>
                                                <span class="text-light">Category</span>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-sm-6 col-lg-4 tab_data" style="position: absolute; left: 360px; top: 0px;">
                                <div class="portfolio-box rounded">
                                    <div class="portfolio-img rounded"> <img class="img-fluid d-block" src="test/images/projects/project-2.jpg" alt="">
                                        <div class="portfolio-overlay"> <a class="popup-ajax stretched-link" href="test/ajax/portfolio-ajax-project-2.html"></a>
                                            <div class="portfolio-overlay-details">
                                                <p class="text-white text-6"><i class="fas fa-plus"></i></p>
                                                <h5 class="text-white fw-400">Project Title 2</h5>
                                                <span class="text-light">Category</span>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-sm-6 col-lg-4 tab_ai" style="position: absolute; left: 0px; top: 276px;">
                                <div class="portfolio-box rounded">
                                    <div class="portfolio-img rounded"> <img class="img-fluid d-block" src="test/images/projects/project-3.jpg" alt="">
                                        <div class="portfolio-overlay"> <a class="popup-ajax stretched-link" href="test/ajax/portfolio-ajax-project-3.html"></a>
                                            <div class="portfolio-overlay-details">
                                                <p class="text-white text-6"><i class="fas fa-plus"></i></p>
                                                <h5 class="text-white fw-400">Project Title 3</h5>
                                                <span class="text-light">Category</span>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-sm-6 col-lg-4 tab_cloud" style="position: absolute; left: 360px; top: 276px;">
                                <div class="portfolio-box rounded">
                                    <div class="portfolio-img rounded"> <img class="img-fluid d-block" src="test/images/projects/project-4.jpg" alt="">
                                        <div class="portfolio-overlay"> <a class="popup-ajax stretched-link" href="test/ajax/portfolio-ajax-project-4.html"></a>
                                            <div class="portfolio-overlay-details">
                                                <p class="text-white text-6"><i class="fas fa-plus"></i></p>
                                                <h5 class="text-white fw-400">Project Title 4</h5>
                                                <span class="text-light">Category</span>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-sm-6 col-lg-4 tab_data" style="position: absolute; left: 0px; top: 552px;">
                                <div class="portfolio-box rounded">
                                    <div class="portfolio-img rounded"> <img class="img-fluid d-block" src="test/images/projects/project-5.jpg" alt="">
                                        <div class="portfolio-overlay"> <a class="popup-ajax stretched-link" href="test/ajax/portfolio-ajax-project-5.html"></a>
                                            <div class="portfolio-overlay-details">
                                                <p class="text-white text-6"><i class="fas fa-plus"></i></p>
                                                <h5 class="text-white fw-400">Project Title 5</h5>
                                                <span class="text-light">Category</span>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-sm-6 col-lg-4 tab_ai" style="position: absolute; left: 360px; top: 552px;">
                                <div class="portfolio-box rounded">
                                    <div class="portfolio-img rounded"> <img class="img-fluid d-block" src="test/images/projects/project-6.jpg" alt="">
                                        <div class="portfolio-overlay"> <a class="popup-ajax stretched-link" href="test/ajax/portfolio-ajax-project-6.html"></a>
                                            <div class="portfolio-overlay-details">
                                                <p class="text-white text-6"><i class="fas fa-plus"></i></p>
                                                <h5 class="text-white fw-400">Project Title 6</h5>
                                                <span class="text-light">Category</span>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-sm-6 col-lg-4 tab_cloud" style="position: absolute; left: 0px; top: 828px;">
                                <div class="portfolio-box rounded">
                                    <div class="portfolio-img rounded"> <img class="img-fluid d-block" src="test/images/projects/project-7.jpg" alt="">
                                        <div class="portfolio-overlay"> <a class="popup-ajax stretched-link" href="test/ajax/portfolio-ajax-project-7.html"></a>
                                            <div class="portfolio-overlay-details">
                                                <p class="text-white text-6"><i class="fas fa-plus"></i></p>
                                                <h5 class="text-white fw-400">Project Title 7</h5>
                                                <span class="text-light">Category</span>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-sm-6 col-lg-4 tab_data" style="position: absolute; left: 360px; top: 828px;">
                                <div class="portfolio-box rounded">
                                    <div class="portfolio-img rounded"> <img class="img-fluid d-block" src="test/images/projects/project-8.jpg" alt="">
                                        <div class="portfolio-overlay"> <a class="popup-ajax stretched-link" href="test/ajax/portfolio-ajax-project-8.html"></a>
                                            <div class="portfolio-overlay-details">
                                                <p class="text-white text-6"><i class="fas fa-plus"></i></p>
                                                <h5 class="text-white fw-400">Project Title 8</h5>
                                                <span class="text-light">Category</span>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-sm-6 col-lg-4 tab_ai" style="position: absolute; left: 0px; top: 1104px;">
                                <div class="portfolio-box rounded">
                                    <div class="portfolio-img rounded"> <img class="img-fluid d-block" src="test/images/projects/project-9.jpg" alt="">
                                        <div class="portfolio-overlay"> <a class="popup-ajax stretched-link" href="test/ajax/portfolio-ajax-project-9.html"></a>
                                            <div class="portfolio-overlay-details">
                                                <p class="text-white text-6"><i class="fas fa-plus"></i></p>
                                                <h5 class="text-white fw-400">Project Title 9</h5>
                                                <span class="text-light">Category</span>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div> -->
                <!-- </div>
            </section> -->
            <!-- Portfolio end -->

            <div class="section bg-light">
                <div class="container">
                    <div class="brands-grid separator-border">
                        <div class="row align-items-center">
                            <div class="col-6 col-sm-3 col-lg-2 text-center"><img class="img-fluid wow bounceIn" src="test/images/clients/sga-logo.png" alt="" style="visibility: visible;"></div>
                            <div class="col-6 col-sm-3 col-lg-2 text-center"><img class="img-fluid wow bounceIn" src="test/images/clients/netand-logo.png" alt="" style="visibility: visible;"></div>
                            <div class="col-6 col-sm-3 col-lg-2 text-center"><img class="img-fluid wow bounceIn" src="test/images/clients/mantech-logo.png" alt="" style="visibility: visible;"></div>
                            <div class="col-6 col-sm-3 col-lg-2 text-center"><img class="img-fluid wow bounceIn" src="test/images/clients/hunesion-logo.png" alt="" style="visibility: visible;"></div>
                            <div class="col-6 col-sm-3 col-lg-2 text-center"><img class="img-fluid wow bounceIn" src="test/images/clients/jirandata-logo.svg" alt="" style="visibility: visible;"></div>
                            <div class="col-6 col-sm-3 col-lg-2 text-center"><img class="img-fluid wow bounceIn" src="test/images/clients/dreamsecurity-logo.png" alt="" style="visibility: visible;"></div>
                            <div class="col-6 col-sm-3 col-lg-2 text-center"><img class="img-fluid wow bounceIn" src="test/images/clients/piolink-logo.png" alt="" style="visibility: visible;"></div>
                            <div class="col-6 col-sm-3 col-lg-2 text-center"><img class="img-fluid wow bounceIn" src="test/images/clients/exem-logo.svg" alt="" style="visibility: visible;"></div>
                            <div class="col-6 col-sm-3 col-lg-2 text-center"><img class="img-fluid wow bounceIn" src="test/images/clients/tmaxsoft-logo.png" alt="" style="visibility: visible;"></div>
                            <div class="col-6 col-sm-3 col-lg-2 text-center"><img class="img-fluid wow bounceIn" src="test/images/clients/pentasecurity-logo.png" alt="" style="visibility: visible;"></div>
                            <div class="col-6 col-sm-3 col-lg-2 text-center"><img class="img-fluid wow bounceIn" src="test/images/clients/pnpsecure-logo.png" alt="" style="visibility: visible;"></div>
                            <div class="col-6 col-sm-3 col-lg-2 text-center"><img class="img-fluid wow bounceIn" src="test/images/clients/hanssak-logo.png" alt="" style="visibility: visible;"></div>
                        </div>
                    </div>
                </div>
            </div>


            <!-- Contact us
            ============================================= -->
            <section id="contact" class="section">
                <div class="row no-gutters">
                    <div class="col-md-7 col-lg-7 col-xl-8">
                        <div class="section bg-primary h-100 px-5">
                            <h2 class="font-weight-600 text-white text-center mb-3">What's your Idea?</h2>
                            <p class="lead text-center text-light mb-5">We will get back to you in less than 24 hours.</p>
                            <form id="contact-form" class="form-border form-border-light" action="/notice/sendInquiryEmail" method="post">
                                <div class="row">

                                    <div class="col-lg-12">
                                        <div class="form-group">
                                            <input name="name" type="text" class="form-control" required="" placeholder="이름을 입력해주세요.">
                                        </div>
                                    </div>

                                    <div class="col-lg-6">
                                        <div class="form-group">
                                            <input name="email" type="email" class="form-control" required="" placeholder="이메일을 입력해주세요.">
                                        </div>
                                    </div>
                                    <div class="col-lg-6">
                                        <div class="form-group">
                                            <input name="phone" type="tel" class="form-control" required="" placeholder="전화번호를 입력해주세요.">
                                        </div>
                                    </div>                                    
                                    <div class="col-lg-12">
                                        <div class="form-group">
                                            <input name="subject" type="text" class="form-control" required="" placeholder="제목을 입력하세요.">
                                        </div>
                                    </div>
                                </div>
                                <input type="hidden" name="type" id="selectedType" value="문의">
                                <div class="form-group">
                                    <textarea name="content" class="form-control" rows="3" required="" placeholder="문의 내용을 입력해주세요."></textarea>
                                </div>
                                <p class="text-center mt-5 mb-0">
                                    <button id="submit-btn" class="btn btn-light rounded-pill d-inline-flex text-uppercase" type="submit">문의사항 남기기</button>
                                </p>
                            </form>
                        </div>
                    </div>
                    <div class="col-md-5 col-lg-5 col-xl-4">
                        <section class="section hero-wrap bg-dark h-100 px-5 text-light">
                            <div class="hero-mask opacity-8 bg-dark"></div>
                            <div class="hero-bg" style="background-image:url('images/intro-bg.jpg');"></div>
                            <div class="hero-content">
                                <h2 class="text-white mb-3">(주)비이랩</h2>
                                <p class="lead text-3">안정적이고 효율적인 클라우드 환경을 제공합니다.</p>
                                <div class="featured-box style-1">
                                    <div class="featured-box-icon text-white text-6"> <i class="fas fa-map-marker-alt"></i></div>
                                    <h3 class="text-white">Address</h3>
                                    <p>(06349)<br>
                                        서울특별시 강남구 광평로 295<br>
                                        사이룩스오피스텔 동관동 1714호 </p>
                                </div>
                                <div class="featured-box style-1">
                                    <div class="featured-box-icon text-white text-6"> <i class="fas fa-phone"></i> </div>
                                    <h3 class="text-white">Telephone</h3>
                                    <p>02-451-0902</p>
                                </div>
                                <div class="featured-box style-1">
                                    <div class="featured-box-icon text-white text-6"> <i class="fas fa-fax"></i> </div>
                                    <h3 class="text-white">Fax</h3>
                                    <p>02-451-0905</p>
                                </div>                                
                                <div class="featured-box style-1">
                                    <div class="featured-box-icon text-white text-6"> <i class="fas fa-envelope"></i> </div>
                                    <h3 class="text-white">Business Inquiries</h3>
                                    <p>help@belab.co.kr</p>
                                </div>
                            </div>
                        </section>
                    </div>
                </div>
            </section>            
            <!-- Contact Me end -->

        </div>
        <!-- Content end -->

        <!-- Footer
        ============================================= -->
        <footer id="footer" class="section bg-light">
            <div class="container">
                <div class="row">
                    <div class="col-lg-6 text-center text-lg-start">
                        <p class="mb-3 mb-lg-0">Copyright © 2023 <a href="#" class="fw-500">BeLAB</a>. All Rights Reserved.</p>
                    </div>
                    <div class="col-lg-6">
                        <ul class="nav nav-separator justify-content-center justify-content-lg-end">
                            <li class="nav-item"> <a class="nav-link" data-bs-toggle="modal" data-bs-target="#terms-policy" href="#">개인정보보호</a></li>
                            <li class="nav-item"> <a class="nav-link" data-bs-toggle="modal" data-bs-target="#terms-company" href="#">기업정보</a></li>                            
                        </ul>
                    </div>
                </div>
            </div>
        </footer>
        <!-- Footer end -->

    </div>
    <!-- Document Wrapper end -->

    <!-- Back to Top
    ============================================= -->
    <a id="back-to-top" class="rounded-circle" data-bs-toggle="tooltip" title="Back to Top" href="javascript:void(0)"><i class="fa fa-chevron-up"></i></a>

    <!-- Terms & Policy Modal
    ================================== -->
    <div id="terms-policy" class="modal fade" role="dialog" aria-hidden="true">
        <div class="modal-dialog modal-lg modal-dialog-centered" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title">개인정보보호정책</h5>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body p-4">
                    <h3 class="mb-3 mt-4 mt-4">개인정보책임자</h3>
                    <p>이 름 : 노주현</p>
                    <p>이메일:help@belab.co.kr</p>
                </div>
            </div>
        </div>
    </div>
    <!-- Terms & Policy Modal End -->

    <!-- Disclaimer Modal
================================== -->
    <div id="terms-company" class="modal fade" role="dialog" aria-hidden="true">
        <div class="modal-dialog modal-lg modal-dialog-centered" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title">기업정보</h5>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body p-4">
                    <h3 class="mb-3 mt-4 mt-4">(주)비이랩</h3>
                    <p>상호 : 주식회사 비이랩</p>
                    <p>대표 : 황 성 현</p>
                    <p>사업자등록번호 : 457-87-02772</p>
                    <p>Tel : 02-451-0902</p>
                    <p>Fax : 02-451-0905 </p>
                    <p>소재지 : (06349)서울 강남구 광평로 295 사이룩스오피스텔  동관동1714호</p>
                </div>
            </div>
        </div>
    </div>
    <!-- Disclaimer Modal End -->



    <!-- JavaScript -->
    <script src="test/vendor/jquery/jquery.min.js"></script>
    <script src="test/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
    <!-- Easing -->
    <script src="test/vendor/jquery.easing/jquery.easing.min.js"></script>
    <!-- Appear -->
    <script src="test/vendor/jquery.appear/jquery.appear.min.js"></script>
    <!-- Images Loaded -->
    <script src="test/vendor/imagesloaded/imagesloaded.pkgd.min.js"></script>
    <!-- Counter -->
    <script src="test/vendor/jquery.countTo/jquery.countTo.min.js"></script>
    <!-- Parallax Bg -->
    <script src="test/vendor/parallaxie/parallaxie.min.js"></script>
    <!-- Typed -->
    <script src="test/vendor/typed/typed.min.js"></script>
    <!-- Owl Carousel -->
    <script src="test/vendor/owl.carousel/owl.carousel.min.js"></script>
    <!-- isotope Portfolio Filter -->
    <script src="test/vendor/isotope/isotope.pkgd.min.js"></script>
    <!-- Magnific Popup -->
    <script src="test/vendor/magnific-popup/jquery.magnific-popup.min.js"></script>

    <!-- Custom Script -->
    <script src="test/js/theme.js"></script>
</body>

</html>