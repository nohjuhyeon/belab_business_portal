<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/WEB-INF/views/common/header.jsp" %>
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
  <title>관리자 페이지 </title>
</head>

<body>
<main class="th-layout-main">
  <div class="th-layout-sideleft"></div>
  <div class="th-layout-stickyleft"></div>
  <div class="th-layout-content">
    <!-- 상단 비주얼 -->
    <div class="mypage-N10">
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
              <h2 class="h1 textset-tit">관리자 페이지</h2>
            </div>
          </div>
        </div>
      </div>
    </div>

    <!-- 콘텐츠 영역 -->
    <div class="mypage-N58">
      <!-- 드롭다운 버튼 -->
      <button class="dropdown-btn btnset-primary" onclick="toggleSidebar()">메뉴</button>

      <!-- 좌측 사이드바 -->
      <div class="sidebar" id="sidebar">
        <a href="/admin/memberList">회원 관리</a>
        <a href="/admin/users">공지사항 관리</a>
        <a href="/admin/validatePasswordForm">자료실 관리</a>
      </div>

      <!-- 우측 내용 -->
      <div class="content">
        <h2>환영합니다!</h2>
        <div class="welcome-card">
          <!-- 세션에서 사용자 이름을 가져와서 표시 -->
          <h3>${loggedInUser.username}님, 반갑습니다!</h3>
          <p>관리자 페이지에서 회원정보를 확인하고 관리할 수 있습니다.</p>
        </div>
      </div>
    </div>
  </div>
</main>

<script src="/js/setting.js"></script>
<script src="/js/plugin.js"></script>
<script src="/js/templatehouse.js"></script>
<script src="/js/style.js"></script>
<script>
  function toggleSidebar() {
    const sidebar = document.getElementById('sidebar');
    sidebar.classList.toggle('open');
  }
</script>

<%@ include file="/WEB-INF/views/common/footer.jsp" %>
</body>
</html>
