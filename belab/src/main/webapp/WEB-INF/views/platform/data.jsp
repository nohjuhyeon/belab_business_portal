<%@ page language="java" contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" %>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

        <%@ include file="../common/header.jsp" %>

            <!DOCTYPE html>
            <html xmlns="http://www.w3.org/1999/xhtml" lang="ko">

            <head>
                <meta charset="UTF-8" />
                <meta http-equiv="X-UA-Compatible" content="IE=edge" />
                <meta http-equiv="imagetoolbar" content="no" />
                <meta name="viewport" content="width=device-width, initial-scale=1.0" />
                <meta name="format-detection" content="telephone=no" />
                <link rel="stylesheet" href="/css/setting.css" />
                <link rel="stylesheet" href="/css/plugin.css" />
                <link rel="stylesheet" href="/css/templatehouse.css" />
                <link rel="stylesheet" href="/css/style.css" />
                <link rel="stylesheet" href="/css/platform.css" />
                <link rel="stylesheet" href="/css/data.css" />
                <style>
                    .img-box {
                        height: 60%;
                        max-width: 80%;
                    }

                    .technical-box {
                        position: relative;
                        background: #fafafa;
                        padding: 2rem 0rem;
                        border-radius: 2rem;
                    }
                </style>
            </head>

            <body>
                <main class="th-layout-main">
                    <div class="th-layout-sideleft"></div>
                    <div class="th-layout-stickyleft"></div>
                    <div class="th-layout-content">
                        <div class="basic-N10" id="cUm5xkHrdW">
                            <div class="contents-container ">
                                <div class="contents-inner">
                                    <div class="contents-visual">
                                        <picture>
                                            <source srcset="/images/img_subvisual_mobile.png"
                                                media="(max-width: 992px)" />
                                            <img src="/images/img_subvisual.png" alt="비주얼 이미지" />
                                        </picture>
                                    </div>
                                    <div class="contents-body">
                                        <div class="textset">
                                            <h2 class="h1 textset-tit">데이터 서비스</h2>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="data-N54" id="KlM61VgJPZ">
                            <div class="contents-container container-md">
                                <div class="contents-inner">
                                    <div class="tabset tabset-brick">
                                        <ul class="tabset-list tabset-fill tabset-lg" style="background: #f7f7fb;">
                                            <li class="tabset-item">
                                                <a class="tabset-btn active" href="#database">
                                                    <span>Database</span>
                                                </a>
                                            </li>
                                            <li class="tabset-item">
                                                <a class="tabset-btn" href="#bigdataplatform">
                                                    <span>Big Data Platform</span>
                                                </a>
                                            </li>
                                            <li class="tabset-item">
                                                <a class="tabset-btn" href="#web">
                                                    <span>WEB</span>
                                                </a>
                                            </li>
                                            <li class="tabset-item">
                                                <a class="tabset-btn" href="#was">
                                                    <span>WAS</span>
                                                </a>
                                            </li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="platform-N01" id="databse">
                            <div class="platform-inner">
                                <div class="data-N14" id="dPM64BM4jF">
                                    <div class="contents-inner">
                                        <div class="textset">
                                            <h2 class="h2 textset-tit">Database Technical Support</h2>
                                            <p class="h6 textset-desc">긴급 장애 지원, 예방점검, 성능 점검, 운영 지원, 안정화 지원 등을 통해
                                                데이터베이스의 안정적인 운영이 되도록 지원합니다.
                                        </div>
                                        <div class="row row-cols-3 row-md-cols-2 row-sm-cols-1 technical-box">
                                            <div class="col cardset">
                                                <figure class="cardset-figure">
                                                    <img class="cardset-img" src="/icons/setting-4.svg" alt="이미지" />
                                                </figure>
                                                <div class="cardset-body">
                                                    <h2 class="h5">DB Migration</h2>
                                                    <ul class="contents-list">
                                                        <li class="contents-item p2">
                                                            시스템 변경 및 증성에 따른 DBMS Version Upgrade 지원
                                                        </li>
                                                        <li class="contents-item p2">
                                                            Major
                                                            Version Upgrade 및 Patch 지원
                                                        </li>
                                                    </ul>
                                                </div>
                                            </div>
                                            <div class="col cardset">
                                                <figure class="cardset-figure">
                                                    <img class="cardset-img" src="/icons/3d-cube-scan.svg" alt="이미지" />
                                                </figure>
                                                <div class="cardset-body">
                                                    <h2 class="h5">DBMS 표준화</h2>
                                                    <ul class="contents-list">
                                                        <li class="contents-item p2">
                                                            각 DBMS 별 표준
                                                            설정 및 환경 정립
                                                        </li>
                                                        <li class="contents-item p2">
                                                            표준 설정 및
                                                            Architecture 정립
                                                        </li>
                                                        <li class="contents-item p2">
                                                            H/W 산정 표준
                                                            정립(용량 계획)
                                                        </li>
                                                        <li class="contents-item p2">
                                                            표준화 가이드 제공

                                                        </li>
                                                    </ul>
                                                </div>
                                            </div>
                                            <div class="col cardset">
                                                <figure class="cardset-figure">
                                                    <img class="cardset-img" src="/icons/monitor.svg" alt="이미지" />
                                                </figure>
                                                <div class="cardset-body">
                                                    <h2 class="h5">Data Modeling</h2>
                                                    <ul class="contents-list">
                                                        <li class="contents-item p2">
                                                            요구사항 분석 및
                                                            데이터 모델링
                                                        </li>
                                                        <li class="contents-item p2">
                                                            DB 구조 설계 및
                                                            성능 최적화 설계
                                                        </li>
                                                        <li class="contents-item p2">
                                                            각 단계별 산출물
                                                            제공
                                                        </li>
                                                    </ul>
                                                </div>
                                            </div>
                                            <div class="col cardset">
                                                <figure class="cardset-figure">
                                                    <img class="cardset-img" src="/icons/setting-2.svg" alt="이미지" />
                                                </figure>
                                                <div class="cardset-body">
                                                    <h2 class="h5">SQL Tuning</h2>
                                                    <ul class="contents-list">
                                                        <li class="contents-item p2">
                                                            SQL Tuning

                                                        </li>
                                                        <li class="contents-item p2">
                                                            개발, 운영 중인
                                                            Slow Query Tuning
                                                        </li>
                                                    </ul>
                                                </div>
                                            </div>
                                            <div class="col cardset">
                                                <figure class="cardset-figure">
                                                    <img class="cardset-img" src="/icons/edit.svg" alt="이미지" />
                                                </figure>
                                                <div class="cardset-body">
                                                    <h2 class="h5">
                                                        성능 이슈 지원 및 측정
                                                    </h2>
                                                    <ul class="contents-list">
                                                        <li class="contents-item p2">
                                                            SQL 성능
                                                            분석(성능 진단)
                                                        </li>
                                                        <li class="contents-item p2">
                                                            Database 성능
                                                            분석, Index 설계 지원
                                                        </li>
                                                        <li class="contents-item p2">
                                                            Engine
                                                            Status 확인 및 구성 권고(구조 진단)
                                                        </li>
                                                    </ul>
                                                </div>
                                            </div>
                                            <div class="col cardset">
                                                <figure class="cardset-figure">
                                                    <img class="cardset-img" src="/icons/security-safe.svg" alt="이미지" />
                                                </figure>
                                                <div class="cardset-body">
                                                    <h2 class="h5">Data 보안 및 운영 관리</h2>
                                                    <ul class="contents-list">
                                                        <li class="contents-item p2">
                                                            암호화, 접근제어,
                                                            감사 및 모니터링
                                                        </li>
                                                        <li class="contents-item p2">
                                                            SQL
                                                            Injection 방지
                                                        </li>
                                                        <li class="contents-item p2">
                                                            데이터 마스킹 및
                                                            기타 운영 보고
                                                        </li>
                                                    </ul>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <section class="data-N24" id="dPM64BM4jF">
                                    <div class="contents-inner">
                                        <div class="textset">
                                            <h2 class="h2 textset-tit">상용 Database</h2>
                                            <p class="h6 textset-desc">BeLAB은 상용 데이터베이스의 라이선스 공급과 Technical Support를
                                                제공합니다.
                                        </div>
                                        <div class="row row-cols-3 row-md-cols-2 row-sm-cols-1 technical-box">
                                            <div class="col cardset">
                                                <div class="img-box">
                                                    <figure class="cardset-figure">
                                                        <img class="cardset-img"
                                                            src="/images/platform/database/oracle.png" alt="이미지" />
                                                    </figure>
                                                </div>
                                                <div class="cardset-body">
                                                    <h2 class="h5">ORACLE</h2>
                                                    <ul class="contents-list">
                                                        <li class="contents-item p2">
                                                            오라클사가 개발한 관계형 데이터베이스 관리 시스템(RDBMS)으로 대규모 데이터 처리와 높은 안정성을 제공.
                                                        </li>
                                                        <li class="contents-item p2">
                                                            다양한 플랫폼에서 사용 가능하며, 복잡한 트랜잭션 처리에 강점.
                                                        </li>
                                                        <li class="contents-item p2">
                                                            Database Standard Edition, Enterprise Edition, Option(RAC,
                                                            Partitioning, Active Data Guard, OGG 외)
                                                        </li>
                                                    </ul>
                                                </div>
                                            </div>
                                            <div class="col cardset">
                                                <div class="img-box">
                                                    <figure class="cardset-figure">
                                                        <img class="cardset-img"
                                                            src="/images/platform/database/singlestore.png"
                                                            alt="이미지" />
                                                    </figure>
                                                </div>
                                                <div class="cardset-body">
                                                    <h2 class="h5">Single Store</h2>
                                                    <ul class="contents-list">
                                                        <li class="contents-item p2">
                                                            대규모 트랜잭션 처리(OLTP)와 실시간 분석(OLAP)을 동시에 지원하는 분산형 관계형 데이터베이스이며
                                                            표준
                                                            SQL을
                                                            통해 데이터 관리가 가능.
                                                        </li>
                                                        <li class="contents-item p2">
                                                            인메모리 및 온디스크 스토리지를 활용하여 높은 성능과 확장성을 제공하며, Kafka와 같은 데이터
                                                            파이프라인과의
                                                            통합을
                                                            지원하여 실시간 데이터 수집 및 처리가 용이.
                                                        </li>
                                                    </ul>
                                                </div>
                                            </div>
                                            <div class="col cardset">
                                                <div class="img-box">
                                                    <figure class="cardset-figure">
                                                        <img class="cardset-img"
                                                            src="/images/platform/database/sqlserver.png"
                                                            alt="이미지" />
                                                    </figure>
                                                </div>
                                                <div class="cardset-body">
                                                    <h2 class="h5">SQL Server</h2>
                                                    <ul class="contents-list">
                                                        <li class="contents-item p2">
                                                            마이크로소프트사가 개발한 RDBMS로, 윈도우 환경에 최적화.
                                                        </li>
                                                        <li class="contents-item p2">
                                                            데이터 분석 및 비즈니스 인텔리전스 기능을 포함하며 .NET 프레임워크와의 호환성이 우수.
                                                        </li>
                                                        <li class="contents-item p2">
                                                            트랜잭션 관리, 저장 프로시저, 트리거 등 다양한 기능을 제공하며, 다중 사용자 지원으로 여러 사용자가
                                                            동시에
                                                            데이터베이스
                                                            접근 가능.
                                                        </li>
                                                    </ul>
                                                </div>
                                            </div>
                                            <div class="col cardset">
                                                <div class="img-box">
                                                    <figure class="cardset-figure">
                                                        <img class="cardset-img"
                                                            src="/images/platform/database/tibero.png" alt="이미지" />
                                                    </figure>
                                                </div>
                                                <div class="cardset-body">
                                                    <h2 class="h5">Tibero Database</h2>
                                                    <ul class="contents-list">
                                                        <li class="contents-item p2">
                                                            티맥스데이터에서 개발한 RDBMS로, 오라클과의 호환성을 강조하며 비용 효율적인 대안을 제공.
                                                        </li>
                                                        <li class="contents-item p2">
                                                            국내 시장에서의 서비스가 강점으로 고성능, 고가용성을 제공하고 독자적인 스레드 아키텍처를 통해 시스템 자원을
                                                            효율적으로
                                                            활용.
                                                        </li>
                                                        <li class="contents-item p2">
                                                            데이터베이스 클러스터링, 병렬 쿼리 처리, 쿼리 최적화 등 다양한 기능을 지원하며 다양한 이기종
                                                            데이터베이스와의
                                                            연동도
                                                            뛰어남.
                                                        </li>
                                                    </ul>
                                                </div>
                                            </div>
                                            <div class="col cardset">
                                                <div class="img-box">
                                                    <figure class="cardset-figure">
                                                        <img class="cardset-img"
                                                            src="/images/platform/database/agenssql.png" alt="이미지" />
                                                    </figure>
                                                </div>
                                                <div class="cardset-body">
                                                    <h2 class="h5">Agens SQL</h2>
                                                    <ul class="contents-list">
                                                        <li class="contents-item p2">
                                                            AgensSQL은 비트나인에서 개발한 오픈소스 기반의 관계형 데이터베이스 관리 시스템(RDBMS)으로
                                                            PostgreSQL
                                                            엔진을 기반으로 동작.
                                                        </li>
                                                        <li class="contents-item p2">
                                                            오라클 호환성을 지원하며 데이터 보안 기능이 강화되어 있고, 고가용성 관리와 데이터베이스 운영 상태
                                                            모니터링을 위한
                                                            도구를
                                                            포함하고 있어, 기업 환경에서의 효율적인 데이터 관리와 운영을 지원.
                                                        </li>
                                                    </ul>
                                                </div>
                                            </div>
                                            <div class="col cardset">
                                                <div class="img-box">
                                                    <figure class="cardset-figure">
                                                        <img class="cardset-img"
                                                            src="/images/platform/database/edb.png" alt="이미지" />
                                                    </figure>
                                                </div>
                                                <div class="cardset-body">
                                                    <h2 class="h5">EDB</h2>
                                                    <ul class="contents-list">
                                                        <li class="contents-item p2">
                                                            EDB(EnterpriseDB)는 오픈소스 데이터베이스인 PostgreSQL을 기반으로 안정성과 확장성을
                                                            유지하면서도,
                                                            오라클과의 높은 호환성 지원.
                                                        </li>
                                                        <li class="contents-item p2">
                                                            투명한 데이터 암호화(TDE), SQL 인젝션 방지, 감사 로그, 데이터 마스킹 등 강화된 보안 기능을
                                                            제공하여
                                                            애플리케이션과 고객 데이터를 안전하게 보호.
                                                        </li>
                                                    </ul>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </section>
                                <section class="data-N24" id="dPM64BM4jF">
                                    <div class="contents-inner">
                                        <div class="textset">
                                            <h2 class="h2 textset-tit">오픈소스 Database</h2>
                                            <p class="h6 textset-desc">BeLAB은 오픈소스 Databse의 Technical Support를 제공합니다.
                                        </div>
                                        <div class="row row-cols-3 row-md-cols-2 row-sm-cols-1 technical-box">
                                            <div class="col cardset">
                                                <div class="img-box">
                                                    <figure class="cardset-figure">
                                                        <img class="cardset-img"
                                                            src="/images/platform/database/postgresql.png"
                                                            alt="이미지" />
                                                    </figure>
                                                </div>
                                                <div class="cardset-body">
                                                    <h2 class="h5">PostgreSQL</h2>
                                                    <ul class="contents-list">
                                                        <li class="contents-item p2">
                                                            오픈 소스 객체-관계형 데이터베이스 관리 시스템(ORDBMS)으로, BSD 라이선스를 통해 무료로 제공.
                                                        </li>
                                                        <li class="contents-item p2">
                                                            다양한 운영 체제에서 실행 가능하며 사용자 정의 함수, 데이터 타입, 연산자 등을 지원하여 높은 확장성을
                                                            자랑.
                                                        </li>
                                                        <li class="contents-item p2">
                                                            ACID 특성을 준수하여 데이터 무결성과 신뢰성을 보장하며 표준 SQL을 충실히 따름.
                                                        </li>
                                                        <li class="contents-item p2">
                                                            복잡한 데이터 구조와 비정형 데이터를 효율적으로 처리할 수 있어 금융, 전자상거래 등 다양한 분야에서 널리
                                                            활용.
                                                        </li>
                                                    </ul>
                                                </div>
                                            </div>
                                            <div class="col cardset">
                                                <div class="img-box">
                                                    <figure class="cardset-figure">
                                                        <img class="cardset-img"
                                                            src="/images/platform/database/mariadb.png" alt="이미지" />
                                                    </figure>
                                                </div>
                                                <div class="cardset-body">
                                                    <h2 class="h5">MariaDB</h2>
                                                    <ul class="contents-list">
                                                        <li class="contents-item p2">
                                                            오픈 소스 관계형 데이터베이스 관리 시스템(RDBMS)으로 MySQL과 높은 호환성을 유지하면서도 성능과
                                                            기능을
                                                            향상시키기
                                                            위해 다양한 스토리지 엔진과 새로운 기능을 도입.
                                                        </li>
                                                        <li class="contents-item p2">
                                                            GPL v2 라이선스를 따르며, 전 세계 개발자 커뮤니티와 MariaDB 재단에 의해 활발히 개발되고 있음.
                                                        </li>
                                                        <li class="contents-item p2">
                                                            다양한 운영 체제에서 실행되며, C, C++, Perl, Bash 등 여러 프로그래밍 언어를 지원하고,
                                                            MySQL과의
                                                            호환성을 유지하면서도 자체적인 보안 패치를 통해 보안을 강화.
                                                        </li>
                                                    </ul>
                                                </div>
                                            </div>
                                            <div class="col cardset">
                                                <div>
                                                    <div class="img-box">
                                                        <figure class="cardset-figure">
                                                            <img class="cardset-img"
                                                                src="/images/platform/database/mongodb.png"
                                                                alt="이미지" />
                                                        </figure>
                                                    </div>
                                                </div>
                                                <div class="cardset-body">
                                                    <h2 class="h5">MongoDB</h2>
                                                    <ul class="contents-list">
                                                        <li class="contents-item p2">
                                                            MongoDB는 오픈 소스 기반의 문서 지향 데이터베이스로 JSON과 유사한 문서 형식을 통해 다양한 데이터
                                                            구조를
                                                            효율적으로 관리할 수 있음.
                                                        </li>
                                                        <li class="contents-item p2">
                                                            스키마리스(Schemaless) 특성을 지니며 수평적 확장성과 고가용성을 지원하여 대규모 데이터 처리에
                                                            적합.
                                                        </li>
                                                        <li class="contents-item p2">
                                                            복제(replication)와 샤딩(sharding)을 통해 데이터의 안정성과 성능을 향상시킬 수 있으며
                                                            다양한
                                                            프로그래밍
                                                            언어와의 호환성을 제공하며 개발자 친화적인 환경을 지원.
                                                        </li>
                                                    </ul>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="platform-N8">
                                            <div class="container-full">
                                                <div class="title-area">
                                                    <h2 class="h4">기타 기술 지원 제품군</h2>
                                                </div>
                                                <div class="list-wrap">
                                                    <img class="list-img" src="/images/platform/database/redis.png"
                                                        alt="새로운 콘텐츠">
                                                    <img class="list-img"
                                                        src="/images/platform/database/couchbase.png" alt="콘텐츠 보증">
                                                    <img class="list-img" src="/images/platform/database/sqlite.png"
                                                        alt="새로운 콘텐츠">
                                                    <img class="list-img" src="/images/platform/database/mysql.png"
                                                        alt="새로운 콘텐츠">
                                                </div>
                                            </div>
                                        </div>
                                    </div>

                                </section>
                            </div>
                        </div>
                        <div class="platform-N01" id="bigdataplatform">
                            <div class="platform-inner">
                                <div class="data-N34" id="dPM64BM4jF">
                                    <div class="contents-inner">
                                        <div class="textset">
                                            <h2 class="h2 textset-tit">Big Data Platform</h2>
                                            <p class="h6 textset-desc">대량의 정형 및 비정형 데이터를 수집, 저장, 처리, 분석하여 가치 있는 정보를 추출하는
                                                통합 IT
                                                환경
                                        </div>
                                    </div>
                                </div>
                                <section class="data-N24" id="dPM64BM4jF">
                                    <div class="contents-inner">
                                        <div class="row row-cols-3 row-md-cols-2 row-sm-cols-1 technical-box">
                                            <div class="col cardset">
                                                <div class="img-box">
                                                    <figure class="cardset-figure">
                                                        <img class="cardset-img"
                                                            src="/images/platform/bigdataplatform/hadoop.png"
                                                            alt="이미지" />
                                                    </figure>
                                                </div>
                                                <div class="cardset-body">
                                                    <h2 class="h5">Hadoop</h2>
                                                    <ul class="contents-list">
                                                        <li class="contents-item p2">
                                                            Apache Hadoop은 대규모 데이터 세트를 분산 저장 및 처리하기 위한 오픈 소스 프레임워크.
                                                        </li>
                                                        <li class="contents-item p2">
                                                            일반적인 하드웨어로 구성된 컴퓨터 클러스터에서 동작하며, 대량의 정형 및 비정형 데이터를 효율적으로 관리하고
                                                            분석할 수
                                                            있도록 설계됨.
                                                        </li>
                                                        <li class="contents-item p2">
                                                            주요 구성 요소: Hadoop 분산 파일 시스템(HDFS), MapReduce, YARN.
                                                        </li>
                                                    </ul>
                                                </div>
                                            </div>
                                            <div class="col cardset">
                                                <div class="img-box">
                                                    <figure class="cardset-figure">
                                                        <img class="cardset-img"
                                                            src="/images/platform/bigdataplatform/hive.png"
                                                            alt="이미지" />
                                                    </figure>
                                                </div>
                                                <div class="cardset-body">
                                                    <h2 class="h5">HIVE</h2>
                                                    <ul class="contents-list">
                                                        <li class="contents-item p2">
                                                            Hadoop Distributed File System(HDFS) 위에서 동작하는 데이터웨어하우스
                                                            시스템으로, SQL과
                                                            유사한 쿼리 언어(HiveQL)를 통해 대량의 데이터를 처리하고 분석할 수 있는 기능을 제공.
                                                        </li>
                                                        <li class="contents-item p2">
                                                            주로 배치 처리와 데이터 분석에 적합하며, 구조화된 데이터를 다루는 데 최적화되어 있음.
                                                        </li>
                                                    </ul>
                                                </div>
                                            </div>
                                            <div class="col cardset">
                                                <div class="img-box">
                                                    <figure class="cardset-figure">
                                                        <img class="cardset-img"
                                                            src="/images/platform/bigdataplatform/spark.png"
                                                            alt="이미지" />
                                                    </figure>
                                                </div>
                                                <div class="cardset-body">
                                                    <h2 class="h5">Spark</h2>
                                                    <ul class="contents-list">
                                                        <li class="contents-item p2">
                                                            인메모리 데이터 처리 방식을 통해 고속 처리가 가능.
                                                        </li>
                                                        <li class="contents-item p2">
                                                            기존의 Hadoop MapReduce보다 훨씬 빠르게 데이터를 처리할 수 있는 기술로, 다양한
                                                            언어(Python,
                                                            Java, Scala 등)를 지원.
                                                        </li>
                                                    </ul>
                                                </div>
                                            </div>
                                            <div class="col cardset">
                                                <div class="img-box">
                                                    <figure class="cardset-figure">
                                                        <img class="cardset-img"
                                                            src="/images/platform/bigdataplatform/kafka.png"
                                                            alt="이미지" />
                                                    </figure>
                                                </div>
                                                <div class="cardset-body">
                                                    <h2 class="h5">Kafka</h2>
                                                    <ul class="contents-list">
                                                        <li class="contents-item p2">
                                                            대규모 실시간 데이터 스트리밍을 처리하기 위한 오픈 소스 분산 스트리밍 플랫폼.
                                                        </li>
                                                        <li class="contents-item p2">
                                                            높은 처리량, 확장성, 내결함성 등의 강점을 보유.
                                                        </li>
                                                    </ul>
                                                </div>
                                            </div>
                                            <div class="col cardset">
                                                <div class="img-box">
                                                    <figure class="cardset-figure">
                                                        <img class="cardset-img"
                                                            src="/images/platform/bigdataplatform/hbase.png"
                                                            alt="이미지" />
                                                    </figure>
                                                </div>
                                                <div class="cardset-body">
                                                    <h2 class="h5">HBASE</h2>
                                                    <ul class="contents-list">
                                                        <li class="contents-item p2">
                                                            Hadoop Distributed File System(HDFS) 위에서 동작하는 오픈 소스
                                                            비관계형(NoSQL) 분산
                                                            데이터베이스 관리 시스템(DBMS).
                                                        </li>
                                                        <li class="contents-item p2">
                                                            데이터 보안 기능이 강화되어 있으며, 고가용성 관리와 데이터베이스 운영 상태 모니터링 도구를 포함하여 기업
                                                            환경에서
                                                            효율적인 데이터 관리와 운영을 지원.
                                                        </li>
                                                    </ul>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </section>
                            </div>
                        </div>
                        <div class="platform-N01" id="web">
                            <div class="platform-inner">
                                <div class="data-N34" id="dPM64BM4jF">
                                    <div class="contents-inner">
                                        <div class="textset">
                                            <h2 class="h2 textset-tit">WEB</h2>
                                            <p class="h6 textset-desc">World Wide Web</p>
                                        </div>
                                        <div class="imageset">
                                            <img class="imageset-img" src="/images/platform/web/web_architecture.png"
                                                alt="이미지">
                                        </div>
                                        <div class="contents-box">
                                            <h2 class="h3 textset-tit">WEB 기본 기술</h2>

                                            <div class="row row-cols-3 row-md-cols-1 technical-box">
                                                <div class="col cardset">
                                                    <div class="cardset-body">
                                                        <h5 class="h5 cardset-tit">HTML</h5>
                                                        <p class="p1 cardset-desc">
                                                            웹 페이지의 구조와 내용을
                                                            정의하는 마크업 언어
                                                        </p>
                                                    </div>
                                                </div>
                                                <div class="col cardset">
                                                    <div class="cardset-body">
                                                        <h5 class="h5 cardset-tit">CSS</h5>
                                                        <p class="p1">
                                                            HTML로 작성된 웹 페이지의 디자인과 스타일을 지정
                                                        </p>
                                                    </div>
                                                </div>
                                                <div class="col cardset">
                                                    <div class="cardset-body">
                                                        <h5 class="h5 cardset-tit">JavaScript
                                                        </h5>
                                                        <p class="p1">
                                                            웹 페이지에 동적 기능을
                                                            추가하는 스크립트 언어
                                                        </p>
                                                    </div>
                                                </div>
                                                <div class="col cardset">
                                                    <div class="cardset-body">
                                                        <h5 class="h5 cardset-tit">
                                                            웹 서버와 클라이언트
                                                        </h5>
                                                        <p class="p1">
                                                            사용자의 요청을 받아 HTML, CSS 파일 등을 전달하는 서버 소프트웨어
                                                        </p>
                                                    </div>
                                                </div>
                                                <div class="col cardset">
                                                    <div class="cardset-body">
                                                        <h5 class="h5 cardset-tit">
                                                            프론트 엔드와 백 엔드
                                                        </h5>
                                                        <p class="p1" style="">
                                                            사용자가 직접 보는 웹
                                                            페이지의 시각적 요소와 사용자 인터페이스(UI)는 프론트 엔드이며 서버, 데이터베이스, 비즈니스 로직을 포함
                                                        </p>
                                                    </div>
                                                </div>
                                                <div class="col cardset">
                                                    <div class="cardset-body">
                                                        <h5 class="h5 cardset-tit">
                                                            데이터베이스
                                                        </h5>
                                                        <p class="p1">
                                                            웹 애플리케이션이 데이터를
                                                            저장하고 관리하는 데 사용
                                                        </p>
                                                    </div>
                                                </div>
                                                <div class="col cardset">
                                                    <div class="cardset-body">
                                                        <h5 class="h5 cardset-tit">
                                                            RESTful API
                                                        </h5>
                                                        <p class="p1">
                                                            웹 애플리케이션이 데이터를
                                                            주고받기 위해 사용하는 아키텍처 스타일
                                                        </p>
                                                    </div>
                                                </div>
                                                <div class="col cardset">
                                                    <div class="cardset-body">
                                                        <h5 class="h5 cardset-tit" th-hoverbox="true">
                                                            웹 표준
                                                        </h5>
                                                        <p class="p1">
                                                            W3C(World Wide Web Consortium)와 같은 기관에서 정의한
                                                            표준을 기반으로 웹 기술이 개발
                                                        </p>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <section class="data-N24" id="dPM64BM4jF">
                                    <div class="contents-inner">
                                        <div class="textset">
                                            <h2 class="h2 textset-tit">WEB Products</h2>
                                            <p class="h6 textset-desc">
                                        </div>
                                        <div class="row row-cols-3 row-md-cols-2 row-sm-cols-1 technical-box">
                                            <div class="col cardset">
                                                <div class="img-box">
                                                    <figure class="cardset-figure">
                                                        <img class="cardset-img" src="/images/platform/web/apach.png"
                                                            alt="이미지" />
                                                    </figure>
                                                </div>
                                                <div class="cardset-body">
                                                    <h2 class="h5">Apache Server</h2>
                                                    <ul class="contents-list">
                                                        <li class="contents-item p2">
                                                            Apache HTTP Server는 오픈소스 기반의 웹 서버 소프트웨어로, 전 세계적으로 가장 널리 사용됨.
                                                        </li>
                                                        <li class="contents-item p2">
                                                            HTTP/HTTPS 프로토콜을 지원하며, 웹사이트 및 애플리케이션을 호스팅하는 데 사용됨.
                                                        </li>
                                                        <li class="contents-item p2">
                                                            다양한 플랫폼에서 실행 가능하며, 모듈 방식을 통해 확장성과 유연성을 제공함.
                                                        </li>
                                                    </ul>
                                                </div>
                                            </div>
                                            <div class="col cardset">
                                                <div class="img-box">
                                                    <figure class="cardset-figure">
                                                        <img class="cardset-img"
                                                            src="/images/platform/web/Microsoftiis.png" alt="이미지" />
                                                    </figure>
                                                </div>
                                                <div class="cardset-body">
                                                    <h2 class="h5">Microsoft IIS</h2>
                                                    <ul class="contents-list">
                                                        <li class="contents-item p2">
                                                            IIS(Internet Information Services)는 Windows 서버 환경에서 웹
                                                            애플리케이션과 웹 사이트를
                                                            호스팅할 수 있도록 지원함.
                                                        </li>
                                                        <li class="contents-item p2">
                                                            HTTP, HTTPS, FTP 등 다양한 프로토콜을 지원하며, ASP.NET, PHP 등 여러 개발 언어와의
                                                            호환성을
                                                            제공.
                                                        </li>
                                                        <li class="contents-item p2">
                                                            직관적인 GUI 기반 관리 도구를 통해 쉽게 설정 및 관리할 수 있으며, 안정성과 보안 기능이 뛰어난 것이
                                                            특징.
                                                        </li>
                                                    </ul>
                                                </div>
                                            </div>
                                            <div class="col cardset">
                                                <div class="img-box">
                                                    <figure class="cardset-figure">
                                                        <img class="cardset-img" src="/images/platform/web/nginx.png"
                                                            alt="이미지" />
                                                    </figure>
                                                </div>
                                                <div class="cardset-body">
                                                    <h2 class="h5">NginX</h2>
                                                    <ul class="contents-list">
                                                        <li class="contents-item p2">
                                                            가볍고 고성능의 오픈소스 웹 서버로, 주로 HTTP 서버, 리버스 프록시, 로드 밸런서, 이메일 프록시
                                                            서버로 사용됨.
                                                        </li>
                                                        <li class="contents-item p2">
                                                            이벤트 기반 아키텍처로 높은 동시 연결 처리가 가능하며, 안정성과 확장성이 뛰어나 대규모 웹 서비스에
                                                            적합함.
                                                        </li>
                                                    </ul>
                                                </div>
                                            </div>
                                            <div class="col cardset">
                                                <div class="img-box">
                                                    <figure class="cardset-figure">
                                                        <img class="cardset-img"
                                                            src="/images/platform/web/webtob.png" alt="이미지" />
                                                    </figure>
                                                </div>
                                                <div class="cardset-body">
                                                    <h2 class="h5">WebtoB</h2>
                                                    <ul class="contents-list">
                                                        <li class="contents-item p2">
                                                            국내 웹 애플리케이션 서버(Web Server) 솔루션으로, 높은 안정성과 성능을 제공하며 다양한 운영체제와
                                                            연동이
                                                            가능함.
                                                        </li>
                                                        <li class="contents-item p2">
                                                            빠른 처리 속도와 효율적인 리소스 관리로 대규모 트래픽 환경에서도 안정적인 서비스를 지원하며, 보안 기능과
                                                            편리한 관리
                                                            도구를 갖춘 제품.
                                                        </li>
                                                    </ul>
                                                </div>
                                            </div>
                                            <div class="col cardset">
                                                <div class="img-box">
                                                    <figure class="cardset-figure">
                                                        <img class="cardset-img" src="/images/platform/web/resin.png"
                                                            alt="이미지" />
                                                    </figure>
                                                </div>
                                                <div class="cardset-body">
                                                    <h2 class="h5">Resin</h2>
                                                    <ul class="contents-list">
                                                        <li class="contents-item p2">
                                                            고성능 Java 애플리케이션 서버로, 웹 애플리케이션 개발 및 실행에 최적화된 플랫폼임. 빠른 처리 속도와
                                                            안정성을
                                                            제공함.
                                                        </li>
                                                        <li class="contents-item p2">
                                                            Java Servlets, JSP, 및 Java EE 표준을 지원하며 가볍고 유연한 구조로 대규모 웹
                                                            서비스와 클라우드
                                                            환경에서 활용되며, 웹 개발자들에게 효율적인 환경을 제공함.
                                                        </li>
                                                    </ul>
                                                </div>
                                            </div>
                                            <div class="col cardset">
                                                <div class="img-box">
                                                    <figure class="cardset-figure">
                                                        <img class="cardset-img" src="/images/platform/web/caddy.png"
                                                            alt="이미지" />
                                                    </figure>
                                                </div>
                                                <div class="cardset-body">
                                                    <h2 class="h5">Caddy</h2>
                                                    <ul class="contents-list">
                                                        <li class="contents-item p2">
                                                            Go 언어로 작성된 오픈소스 웹 서버로, 간단한 설정만으로 HTTPS를 기본 제공하며 자동 갱신 기능을
                                                            지원함.
                                                        </li>
                                                        <li class="contents-item p2">
                                                            가벼운 성능, 플러그인 확장성, HTTP/2 및 리버스 프록시 기능을 통해 개발자와 서버 관리자가 빠르고
                                                            안전한 웹
                                                            서비스를 구축할 수 있도록 지원.
                                                        </li>
                                                    </ul>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </section>
                            </div>
                        </div>
                        <div class="platform-N01" id="was">
                            <div class="platform-inner">
                                <div class="data-N34" id="dPM64BM4jF">
                                    <div class="contents-inner">
                                        <div class="textset">
                                            <h2 class="h2 textset-tit">WAS</h2>
                                            <p class="h6 textset-desc">Web Application Server</p>
                                        </div>
                                        <div class="imageset">
                                            <img class="imageset-img" src="/images/platform/was/was_architecture.png"
                                                alt="이미지">
                                        </div>
                                        <div class="contents-box">
                                            <h2 class="h3 textset-tit">WAS 기본 기술</h2>

                                            <div class="row row-cols-3 row-md-cols-1">
                                                <div class="col cardset">
                                                    <div class="cardset-body">
                                                        <h5 class="h5 cardset-tit">프로그래밍 언어</h5>
                                                        <p class="p1 cardset-desc">
                                                            Java, Python, PHP, Ruby, .NET 등 다양한 언어로 구현
                                                        </p>
                                                    </div>
                                                </div>
                                                <div class="col cardset">
                                                    <div class="cardset-body">
                                                        <h5 class="h5 cardset-tit">서블릿(Servlet)</h5>
                                                        <p class="p1">
                                                            Java 기반의 웹 애플리케이션을 위한 서버 측 기술로, 클라이언트 요청을 처리하고 응답 생성
                                                        </p>
                                                    </div>
                                                </div>
                                                <div class="col cardset">
                                                    <div class="cardset-body">
                                                        <h5 class="h5 cardset-tit">JSP(JavaServer Pages) </h5>
                                                        <p class="p1">
                                                            Java 기반의 웹 애플리케이션을 위한 서버 측 기술로, HTML
                                                            코드 안에 Java 코드를 삽입하여 동적인 콘텐츠 생성
                                                        </p>
                                                    </div>
                                                </div>
                                                <div class="col cardset">
                                                    <div class="cardset-body">
                                                        <h5 class="h5 cardset-tit">HTTP 프로토콜
                                                        </h5>
                                                        <p class="p1">
                                                            클라이언트와 WAS 간 통신에 사용되는 프로토콜
                                                        </p>
                                                    </div>
                                                </div>
                                                <div class="col cardset">
                                                    <div class="cardset-body">
                                                        <h5 class="h5 cardset-tit">
                                                            데이터베이스 연동
                                                        </h5>
                                                        <p class="p1">
                                                            JDBC(Java Database Connectivity), Hibernate, JPA와 같은 기술을 통해
                                                            데이터베이스와
                                                            연동.
                                                        </p>
                                                    </div>
                                                </div>
                                                <div class="col cardset">
                                                    <div class="cardset-body">
                                                        <h5 class="h5 cardset-tit">
                                                            컨테이너 기술 </h5>
                                                        <p class="p1">
                                                            서블릿/JSP를 실행하고 생명주기를 관리하는 컨테이너.
                                                        </p>
                                                    </div>
                                                </div>
                                                <div class="col cardset">
                                                    <div class="cardset-body">
                                                        <h5 class="h5 cardset-tit">
                                                            API 및 프레임워크
                                                        </h5>
                                                        <p class="p1">
                                                            Spring Framework: 엔터프라이즈급 애플리케이션 개발을 지원하는 Java 기반 프레임워크,
                                                            Python 기반의
                                                            웹 애플리케이션 프레임워크(Django)
                                                        </p>
                                                    </div>
                                                </div>
                                                <div class="col cardset">
                                                    <div class="cardset-body">
                                                        <h5 class="h5 cardset-tit">
                                                            세션 및 쿠키 관리
                                                        </h5>
                                                        <p class="p1">
                                                            사용자 상태를 유지하는 기술.
                                                        </p>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <section class="data-N24" id="dPM64BM4jF">
                                    <div class="contents-inner">
                                        <div class="textset">
                                            <h2 class="h2 textset-tit">WAS Products</h2>
                                            <p class="h6 textset-desc">
                                        </div>
                                        <div class="row row-cols-3 row-md-cols-2 row-sm-cols-1 technical-box">
                                            <div class="col cardset">
                                                <div class="img-box">
                                                    <figure class="cardset-figure">
                                                        <img class="cardset-img" src="/images/platform/was/jeus.png"
                                                            alt="이미지" />
                                                    </figure>
                                                </div>
                                                <div class="cardset-body">
                                                    <h2 class="h5">Tmax JEUS</h2>
                                                    <ul class="contents-list">
                                                        <li class="contents-item p2">
                                                            TmaxSoft에서 개발한 Java 기반 웹 애플리케이션 서버(WAS)로, 안정성과 확장성을 바탕으로 다양한
                                                            기업 환경에서 활용되고 있음.
                                                        </li>
                                                        <li class="contents-item p2">
                                                            JEUS는 Java EE 표준을 준수하며, 빠른 처리 성능, 높은 안정성, 효율적인 관리 도구를 제공.
                                                        </li>
                                                        <li class="contents-item p2">
                                                            특히 대용량 트랜잭션 처리에 강하며, 클라우드와의 호환성을 지원해 다양한 IT 환경에서 유연하게 적용될 수
                                                            있는 솔루션.
                                                        </li>
                                                    </ul>
                                                </div>
                                            </div>
                                            <div class="col cardset">
                                                <div class="img-box">
                                                    <figure class="cardset-figure">
                                                        <img class="cardset-img"
                                                            src="/images/platform/was/weblogic.png" alt="이미지" />
                                                    </figure>
                                                </div>
                                                <div class="cardset-body">
                                                    <h2 class="h5">Weblogic</h2>
                                                    <ul class="contents-list">
                                                        <li class="contents-item p2">
                                                            Oracle에서 제공하는 Java EE 기반의 애플리케이션 서버로, 기업용 웹 애플리케이션을 개발, 배포,
                                                            실행하는 데 사용됨.
                                                        </li>
                                                        <li class="contents-item p2">
                                                            주요 기능으로는 트랜잭션 관리, 데이터베이스 연결 풀링, 보안, 클러스터링 등을 제공하며, 대규모 분산
                                                            환경에서 안정성과 확장성을 지원하고 주로 엔터프라이즈급 애플리케이션 개발에 활용됨.
                                                        </li>
                                                    </ul>
                                                </div>
                                            </div>
                                            <div class="col cardset">
                                                <div class="img-box">
                                                    <figure class="cardset-figure">
                                                        <img class="cardset-img"
                                                            src="/images/platform/was/apachetomcat.png" alt="이미지" />
                                                    </figure>
                                                </div>
                                                <div class="cardset-body">
                                                    <h2 class="h5">Apache Tomcat</h2>
                                                    <ul class="contents-list">
                                                        <li class="contents-item p2">
                                                            Java Servlet, JSP, EL, WebSocket 등 Java 기반 웹 애플리케이션을 실행할 수
                                                            있는 오픈 소스 웹 서버이자 서블릿 컨테이너.
                                                        </li>
                                                        <li class="contents-item p2">
                                                            경량화된 구조로 성능이 우수하며, 다양한 플랫폼에서 실행 가능해 개발 및 테스트 환경에서 많이 사용되며
                                                            HTTP 서버 기능도 제공해 동적 웹 애플리케이션 배포에 적합함.
                                                        </li>
                                                    </ul>
                                                </div>
                                            </div>
                                            <div class="col cardset">
                                                <div class="img-box">
                                                    <figure class="cardset-figure">
                                                        <img class="cardset-img" src="/images/platform/was/jboss.png"
                                                            alt="이미지" />
                                                    </figure>
                                                </div>
                                                <div class="cardset-body">
                                                    <h2 class="h5">JBoss&Wildfly</h2>
                                                    <ul class="contents-list">
                                                        <li class="contents-item p2">
                                                            JBoss: Java EE 기반 오픈소스 애플리케이션 서버로, 안정성과 확장성이 뛰어난 서버 환경을 제공.
                                                        </li>
                                                        <li class="contents-item p2">
                                                            Wildfly: JBoss의 후속 프로젝트로, 경량화와 빠른 성능을 목표로 설계된 최신 Java 애플리케이션 서버임.
                                                        </li>
                                                    </ul>
                                                </div>
                                            </div>
                                            <div class="col cardset">
                                                <div class="img-box">
                                                    <figure class="cardset-figure">
                                                        <img class="cardset-img" src="/images/platform/was/resin.png"
                                                            alt="이미지" />
                                                    </figure>
                                                </div>
                                                <div class="cardset-body">
                                                    <h2 class="h5">Resin</h2>
                                                    <ul class="contents-list">
                                                        <li class="contents-item p2">
                                                            Java 기반의 고성능 웹 애플리케이션 서버(WAS)로, 안정성과 속도에 중점을 둔 경량 서버.
                                                        </li>
                                                        <li class="contents-item p2">
                                                            JSP/Servlet, EJB, Java EE 표준을 지원하며, 클러스터링 및 로드 밸런싱 기능으로 확장성이
                                                            뛰어남.
                                                        </li>
                                                        <li class="contents-item p2">
                                                            또한, 효율적인 메모리 관리와 빠른 실행 속도로 대규모 트래픽 처리에 적합하며, 유연한 설정 및 개발자
                                                            친화적인 환경을 제공함.
                                                        </li>
                                                    </ul>
                                                </div>
                                            </div>
                                            <div class="col cardset">
                                                <div class="img-box">
                                                    <figure class="cardset-figure">
                                                        <img class="cardset-img"
                                                            src="/images/platform/was/litespeed.png" alt="이미지" />
                                                    </figure>
                                                </div>
                                                <div class="cardset-body">
                                                    <h2 class="h5">LiteSpeed</h2>
                                                    <ul class="contents-list">
                                                        <li class="contents-item p2">
                                                            고성능 웹 애플리케이션 서버(WAS)로, 빠른 속도와 낮은 리소스 사용량이 특징.
                                                        </li>
                                                        <li class="contents-item p2">
                                                            Apache와 호환되며, HTTP/3, QUIC, TLS, 로드 밸런싱 등을 지원해 웹사이트의 속도와
                                                            안정성을 극대화.
                                                        </li>
                                                        <li class="contents-item p2">
                                                            주요 웹 서버보다 더 효율적이며, 특히 WordPress와 같은 CMS 환경에서 탁월한 성능을 발휘함.
                                                        </li>
                                                    </ul>
                                                </div>
                                            </div>
                                        </div>
                                </section>
                            </div>
                        </div>
                    </div>
                    <div class="th-layout-stickyright"></div>
                    <div class="th-layout-sideright"></div>
                    <%@ include file="../common/footer.jsp" %>

                        <script src="/js/setting.js"></script>
                        <script src="/js/plugin.js"></script>
                        <script src="/js/templatehouse.js"></script>
                        <script src="/js/style.js"></script>
            </body>

            </html>