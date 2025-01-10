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
            height: 200px;
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
        .images {
            display: flex;
            justify-content: center;
            gap: 10px;
            margin: 20px 0;
            flex-wrap: wrap;
        }
        .images img {
            width: 30%;
            height: auto;
            border-radius: 5px;
        }
        .address {
            text-align: center;
            margin: 20px 0;
            font-size: 1.2rem;
        }
        .map {
            display: flex;
            justify-content: center;
            margin: 20px auto;
            width: 90%;
            max-width: 1200px;
            height: 400px;
            border: 1px solid #ddd;
            border-radius: 5px;
            background-color: #f0f0f0;
        }
        .transport {
            display: flex;
            justify-content: center;
            gap: 50px;
            margin: 30px 10px;
            padding: 20px;
            background-color: #f9f9f9;
            flex-wrap: wrap;
        }
        .transport div {
            text-align: center;
            width: 100%;
            max-width: 400px;
            margin-bottom: 20px;
        }
        .transport div img {
            width: 60px;
            height: 60px;
            margin-bottom: 10px;
        }
        .transport div h3 {
            font-size: 1.5rem;
            margin-bottom: 10px;
        }
        .transport div ul {
            list-style: none;
            padding: 0;
        }
        .transport div ul li {
            margin: 5px 0;
        }
        @media (min-width: 768px) {
            .transport {
                flex-wrap: nowrap;
            }
            .transport div {
                width: 40%;
            }
        }
    </style>
  </head>
<body>
    <div class="header-section">
        <div class="header-blank"></div>
        <h1>OUR COMPANY</h1>
        <h2>오시는 길</h2>
        <hr>
    </div>
  <div class="nav-section">
        <a href="/Greeting">인사말</a>
        <a href="/Directions">오시는 길</a>
  </div>
    <section class="images">
        <img src="/images/surrounding_view_1.jpg" alt="Building Image 2">
        <img src="/images/surrounding_view_2.png" alt="Building Image 3">
    </section>
    <section class="address">
        <p><strong>주소:</strong> 서울 강남구 광평로 295 사이룩스오피스텔</p>
    </section>
    <section class="map" id="map">
    </section> 
    <section class="transport">
        <div>
            <img src="/images/car.png" alt="Car Icon">
            <h3>[자가용 이용시]</h3>
            <ul>
                <li>사이룩스 동관 지하주차장 무료 주차</li>
            </ul>
        </div>
        <div>
            <img src="/images/bus.png" alt="Transfer Icon">
            <h3>[대중교통 이용시]</h3>
            <ul>
                <li>3호선: 수서지하철역 하차, 3번 출구와 인접</li>
                <li>분당선: 수서지하철역 하차, 3번 출구와 인접</li>
                <li>SRT: 수서역 하차, 지하 통로로 수서지하철역 이동, 3번 출구와 인접</li>
            </ul>
        </div>
    </section>      
  <script type="text/javascript" src="https://dapi.kakao.com/v2/maps/sdk.js?appkey=45465a972bba01251806dfd3929bebf3"></script>
  <script>
    var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
        mapOption = { 
            center: new kakao.maps.LatLng(37.4885660, 127.1041591), // 지도의 중심좌표
            level: 4 // 지도의 확대 레벨
        };
    
    var map = new kakao.maps.Map(mapContainer, mapOption); // 지도를 생성합니다
    
    // 마커가 표시될 위치입니다 
    var markerPosition  = new kakao.maps.LatLng(37.4885660, 127.1041591); 
    
    // 마커를 생성합니다
    var marker = new kakao.maps.Marker({
        position: markerPosition
    });
    
    // 마커가 지도 위에 표시되도록 설정합니다
    marker.setMap(map);
    
    // 아래 코드는 지도 위의 마커를 제거하는 코드입니다
    // marker.setMap(null);    
    </script>
  </body>
  <%@ include file="../common/footer.jsp" %>
</html>