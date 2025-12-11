<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="../common/header.jsp" %>
<head>
  <script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=45465a972bba01251806dfd3929bebf3"></script>
</head>
<main class="th-layout-main">
    <div class="th-layout-sideleft"></div>
    <div class="th-layout-stickyleft"></div>
    <div class="th-layout-content">
      <div class="basic-N10" id="cUm5xkHrdW">
        <div class="contents-container ">
          <div class="contents-inner">
            <div class="contents-visual">
              <picture>
                <source srcset="/images/img_subvisual_mobile.png" media="(max-width: 992px)" />
                <img src="/images/img_subvisual.png" alt="비주얼 이미지" />
              </picture>
            </div>
            <div class="contents-body">
              <div class="textset">
                <h2 class="h1 textset-tit">회사소개</h2>
              </div>
            </div>
          </div>
        </div>
      </div>
      <div class="basic-N55" id="iLM5XkhrhE">
        <div class="contents-container container-md">
          <div class="tabset tabset-solid border-bottom">
            <ul class="tabset-list tabset-sm">
              <li class="tabset-item">
                <a class="tabset-link" href="/Greeting">
                  <span>인사말</span>
                </a>
              </li>
              <li class="tabset-item">
                <a class="tabset-link active" href="/Directions">
                  <span>오시는 길</span>
                </a>
              </li>
            </ul>
          </div>
        </div>
      </div>
      <div class="basic-N23" id="JVM5XkHrK6">
        <div class="contents-container container-md">
          <div class="contents-inner">
            <div class="textset">
              <h2 class="h2 textset-tit">오시는 길</h2>
            </div>
            <div class="imageset">
              <section class="map imageset-img" id="map">
              </section> 

            </div>
            <ul class="row contents-list">
              <li class="col col-6 contents-item">
                <strong class="h6">주소</strong>
                <p class="p1">서울시 강남구 밤고개로 1길 30 우곡빌딩 5층 (수서동 714-3)</p>
                <p class="p1">
                  5F, Ugok Building, 30, Bamgogae-ro 1-gil, Gangnam-gu, Seoul, Republic of Korea (Suseo-dong 714-3)
                </p>
              </li>
              <li class="col col-3 contents-item">
                <strong class="h6">이메일</strong>
                <p class="p1">
                  help@belab.co.kr
                </p>
              </li>
              <li class="col col-3 contents-item">
                <strong class="h6">전화번호</strong>
                <p class="p1">
                  02-451-0902</p>
              </li>
            </ul>
            <section class="transport">
              <div>
                  <img src="/images/introduce/car.png" alt="Car Icon">
                  <h3>[자가용 이용시]</h3>
                  <ul>
                      <li>사이룩스 동관 지하주차장 무료 주차</li>
                  </ul>
              </div>
              <div>
                  <img src="/images/introduce/bus.png" alt="Transfer Icon">
                  <h3>[대중교통 이용시]</h3>
                  <ul>
                      <li>3호선: 수서지하철역 하차, 3번 출구와 인접</li>
                      <li>분당선: 수서지하철역 하차, 3번 출구와 인접</li>
                      <li>SRT: 수서역 하차, 지하 통로로 수서지하철역 이동, 3번 출구와 인접</li>
                  </ul>
              </div>
          </section>   
          </div>
        </div>
      </div>
    </div>
    <div class="th-layout-stickyright"></div>
    <div class="th-layout-sideright"></div>
  </main>

</section>      
<script>
  var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
      mapOption = { 
          center: new kakao.maps.LatLng(37.488665746531, 127.10325529516), // 지도의 중심좌표
          level: 4 // 지도의 확대 레벨
      };
  
  var map = new kakao.maps.Map(mapContainer, mapOption); // 지도를 생성합니다
  
  // 마커가 표시될 위치입니다 
  var markerPosition  = new kakao.maps.LatLng(37.488665746531, 127.10325529516); 
  
  // 마커를 생성합니다
  var marker = new kakao.maps.Marker({
      position: markerPosition
  });
  
  // 마커가 지도 위에 표시되도록 설정합니다
  marker.setMap(map);
  
  // 아래 코드는 지도 위의 마커를 제거하는 코드입니다
  // marker.setMap(null);    
  </script>
<script src="/js/setting.js"></script>
<script src="/js/plugin.js"></script>
<script src="/js/templatehouse.js"></script>
<script src="/js/style.js"></script>

<%@ include file="../common/footer.jsp" %>
</html>