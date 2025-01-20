<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/WEB-INF/views/common/header.jsp" %>
<!DOCTYPE html>
<html lang="ko">

<head>
  <meta charset="UTF-8"/>
  <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
  <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
  <meta name="format-detection" content="telephone=no"/>
  <link rel="stylesheet" href="/css/style.css"/>
  <style>
    body {
      margin: 0;
      padding: 0;
      font-family: Arial, sans-serif;
      background-color: #f4f4f9;
    }

    .dropdown-btn {
      margin: 10px;
      padding: 10px 20px;
      background-color: #007bff;
      color: #fff;
      border: none;
      border-radius: 5px;
      cursor: pointer;
    }

    .sidebar {
      display: none;
      position: fixed;
      top: 0;
      left: 0;
      height: 100%;
      width: 200px;
      background-color: #333;
      color: white;
      padding: 20px;
      z-index: 1000;
      box-shadow: 2px 0 5px rgba(0, 0, 0, 0.5);
    }

    .sidebar.open {
      display: block;
    }

    .sidebar a {
      color: #fff;
      text-decoration: none;
      display: block;
      margin: 10px 0;
    }

    .form-box {
      margin: 20px 0;
    }

    .form-box label {
      font-weight: bold;
      display: block;
      margin-bottom: 5px;
    }

    .form-box input, .form-box select {
      width: 100%;
      padding: 10px;
      margin-bottom: 10px;
      border: 1px solid #ddd;
      border-radius: 5px;
    }

    .form-btn button {
      padding: 10px 20px;
      background-color: #007bff;
      color: white;
      border: none;
      border-radius: 5px;
      cursor: pointer;
    }

    .form-btn .cancel-button {
      background-color: #dc3545;
      margin-left: 10px;
    }
  </style>
</head>

<body>
<main class="th-layout-main">
  <div class="th-layout-content">
    <div class="mypage-N10">
      <div class="contents-container container-full">
        <div class="contents-body">
          <h2>회원정보 수정</h2>
        </div>
      </div>
    </div>

    <div class="mypage-N58">
      <button class="dropdown-btn btnset-primary" onclick="toggleSidebar()">메뉴</button>
      <div class="sidebar" id="sidebar">
        <a href="/mypage/intro">마이페이지</a>
        <a href="/member/validateForm">개인정보 수정</a>
        <a href="/member/inquiry">문의내역</a>
        <a href="/member/DeletevalidateForm">회원 탈퇴</a>
      </div>

      <div class="content">
        <form id="modifyForm" action="/member/modify" method="post">
          <div class="form-box">
            <label for="username">이름 <span>*</span></label>
            <input id="username" type="text" name="username" value="${member.username}" required/>
          </div>
          <div class="form-box">
            <label for="email">E-mail <span>*</span></label>
            <input id="email" type="email" name="email" value="${member.email}" readonly required/>
          </div>
          <div class="form-box">
            <label for="hp">전화번호 <span>*</span></label>
            <input id="hp" type="tel" name="hp" value="${member.hp}" required/>
          </div>
          <div class="form-box">
            <label for="password">패스워드 <span>*</span></label>
            <input id="password" type="text" name="password" value="${member.password}" required/>
          </div>
          <div class="form-box">
            <label for="role">소속</label>
            <div>
              <input type="radio" id="belab" name="role" value="belab" ${member.role == 'belab' ? 'checked' : ''}>
              <label for="belab">비이랩</label>
              <input type="radio" id="user" name="role" value="user" ${member.role == 'user' ? 'checked' : ''}>
              <label for="user">기타 소속</label>
              <input type="radio" id="admin" name="role" value="admin" ${member.role == 'admin' ? 'checked' : ''}>
              <label for="admin">관리자</label>
            </div>
          </div>
          <div class="form-btn">
            <button type="submit">수정</button>
            <a class="cancel-button" href="/mypage/intro">취소</a>
          </div>
        </form>
      </div>
    </div>
  </div>
</main>

<div class="mypage-N66">
  <div class="popup-overlay" onclick="closePopup()"></div>
  <div class="custom-popup">
    <h4>알림</h4>
    <p>비밀번호가 일치하지 않습니다.</p>
    <button class="btnset btnset-primary" onclick="closePopup()">확인</button>
  </div>
</div>

<script>
  function toggleSidebar() {
    const sidebar = document.getElementById('sidebar');
    sidebar.classList.toggle('open');
  }

  function closePopup() {
    document.querySelector('.popup-overlay').style.display = 'none';
    document.querySelector('.custom-popup').style.display = 'none';
  }
</script>
<%@ include file="/WEB-INF/views/common/footer.jsp" %>
</body>
</html>
