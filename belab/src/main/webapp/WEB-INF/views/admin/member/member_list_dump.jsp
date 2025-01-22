<%@ page contentType="text/html;charset=UTF-8" language="java" %>
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
    </head>

    <body>

      <main class="th-layout-main">
        <div class="th-layout-sideleft"></div>
        <div class="th-layout-stickyleft"></div>
        <div class="th-layout-content">
          <div class="mypage-N10" id="HtM5yS8Tf5">
            <div class="contents-container container-full">
              <div class="contents-inner">
                <div class="contents-visual">
                  <picture>
                    <source srcset="/images/img_subvisual_mobile.png" media="(max-width: 992px)" />
                    <img src="/images/img_subvisual.png" alt="비주얼 이미지" />
                  </picture>
                </div>
                <div class="contents-body">
                  <div class="textset">
                    <h2 class="h1 textset-tit">개인정보 수정</h2>
                  </div>
                </div>
              </div>
            </div>
          </div>
          <div class="basic-N55" id="pFM5yS8tiD">
            <div class="contents-container container-md">
              <div class="tabset tabset-solid border-bottom">
              </div>
            </div>
          </div>
          <div class="mypage-N58">
            <!-- 드롭다운 버튼 -->
            <button class="dropdown-btn btnset-primary" onclick="toggleSidebar()">메뉴</button>

            <!-- 좌측 사이드바 -->
            <div class="sidebar" id="sidebar">
              <a href="/mypage/intro">마이페이지</a>
              <a href="/member/validateForm">개인정보 수정</a>
              <a href="/member/inquiry">문의내역</a>
              <a href="/member/DeletevalidateForm">회원 탈퇴</a>

            </div>

            <!-- 우측 내용 -->
            <div class="content">
              <div class="mypage-N38" id="xxm5yRsU3Q">
                <div class="contents-container container-md">
                  <div class="contents-inner">
                    <div class="form-group">
                      <form id="modifyForm" action="/admin/modify" method="post" onsubmit="return validateForm(event)">
                        <div class="form-box">
                          <div class="inputset inputset-line">
                            <label for="username" class="form-tit h6">이름 <span>*</span>
                            </label>
                            <input id="username" type="text" name="username" class="inputset-input form-control"
                              placeholder="이름을 입력해주세요." value="${member.username}" required="" />
                          </div>
                        </div>
                        <div class="form-box">
                          <div class="inputset inputset-line">
                            <label for="email" class="form-tit h6">E-mail <span>*</span>
                            </label>
                            <input id="email" type="email" name="email" class="inputset-input form-control"
                              value="${member.email}" readonly required />
                          </div>
                        </div>
                        <div class="form-box">
                          <div class="inputset inputset-line">
                            <label for="hp" class="form-tit h6">전화번호 <span>*</span>
                            </label>
                            <input id="hp" type="hp" name="hp" class="inputset-input form-control"
                              value="${member.hp}" placeholder="전화번호를 입력해주세요." required="" />
                          </div>
                        </div>
                        <div class="form-box">
                          <legend class="form-tit h6">소속<span>*</span>
                          </legend>
                          <div class="checkset-wrap">
                            <div class="checkset checkset-fill">
                              <c:choose>
                                <c:when test="${not empty member && member.role == 'belab'}">
                                  <input id="belab" name="role" class="checkset-input" type="radio" value="belab"
                                    checked />
                                </c:when>
                                <c:otherwise>
                                  <input id="belab" name="role" class="checkset-input" type="radio" value="belab" />
                                </c:otherwise>
                              </c:choose>
                              <label for="belab" class="checkset-label">비이랩</label>
                            </div>
                            <div class="checkset checkset-fill">
                              <c:choose>
                                <c:when test="${not empty member && member.role == 'user'}">
                                  <input id="user" name="role" class="checkset-input" type="radio" value="user"
                                    checked />
                                </c:when>
                                <c:otherwise>
                                  <input id="user" name="role" class="checkset-input" type="radio" value="user" />
                                </c:otherwise>
                              </c:choose>
                              <label for="user" class="checkset-label">기타 소속</label>
                            </div>
                            <div class="checkset checkset-fill">
                              <c:choose>
                                <c:when test="${not empty member && member.role == 'admin'}">
                                  <input id="admin" name="role" class="checkset-input" type="radio" value="admin"
                                    checked />
                                </c:when>
                                <c:otherwise>
                                  <input id="admin" name="role" class="checkset-input" type="radio" value="admin" />
                                </c:otherwise>
                              </c:choose>
                              <label for="user" class="checkset-label">관리자</label>
                            </div>
                          </div>
                        </div>
                        <div class="form-box">
                          <div class="inputset">
                          </div>
                        </div>
                        <div class="form-btn">
                          <button id="submitButton" class="btnset btnset-primary" type="submit">수정하기</button>
                          <a id="cancleButton" class="btnset cancel-button" href="/mypage/intro">취소하기</a>
                        </div>
                      </form>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
          <div class="mypage-N66">
            <div class="popup-overlay" onclick="closePopup()"></div>
            <div class="custom-popup">
              <h4>알림</h4>
              <p>비밀번호가 일치하지 않습니다.</p>
              <button class="btnset btnset-primary" onclick="closePopup()">확인</button>
            </div>
          </div>
          <%@ include file="../common/footer.jsp" %>
    </body>
    <script src="/js/setting.js"></script>
    <script src="/js/plugin.js"></script>
    <script src="/js/templatehouse.js"></script>
    <script src="/js/style.js"></script>
    
<script>
      function toggleSubmitButton() {
        const username = document.getElementById('username').value.trim();
        const phone = document.getElementById('hp').value.trim();
        const role = document.querySelector('input[name="role"]:checked');

        const submitButton = document.getElementById('submitButton');

        // 모든 필수 입력 필드가 채워지고, 체크박스가 체크되었을 경우 버튼 활성화
        if (username && phone && role) {
          submitButton.disabled = false;
        } else {
          submitButton.disabled = true;
        }
      }

      document.querySelectorAll('input').forEach(input => {
        input.addEventListener('input', toggleSubmitButton);
      });

      document.querySelectorAll('input[type="radio"]').forEach(input => {
        input.addEventListener('change', toggleSubmitButton);
      });

      function toggleSidebar() {
        const sidebar = document.getElementById('sidebar');
        sidebar.classList.toggle('open');
      }    // 팝업 표시 함수

      function showPopup(message) {
        const popup = document.querySelector('.custom-popup');
        const overlay = document.querySelector('.popup-overlay');
        popup.querySelector('p').innerText = message;
        popup.style.display = 'block';
        overlay.style.display = 'block';
      }

      function closePopup() {
        const popup = document.querySelector('.custom-popup');
        const overlay = document.querySelector('.popup-overlay');
        popup.style.display = 'none';
        overlay.style.display = 'none';
      }

    </script>

    </html>