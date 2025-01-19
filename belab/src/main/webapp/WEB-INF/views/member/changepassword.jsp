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
                    <h2 class="h1 textset-tit">비밀번호 변경</h2>
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
          <div class="mypage-N24" id="Vgm5ys8tOU">
            <div class="contents-container container-valid-box">
              <div class="contents-inner">
                <form id="changePasswordForm" action="/member/changepassword" method="post">
                  <div class="form-group">
                    <div class="textset">
                      <h2 class="h2 textset-tit">새 비밀번호를 입력하세요.</h2>
                    </div>
                    <div class="form-box">
                      <div class="inputset">
                      </div>

                      <div class="inputset">
                        <label for="password" class="form-tit h6">새 비밀번호</label>
                        <input class="inputset-input form-control" type="password" id="password" name="password"
                          placeholder="새 비밀번호를 입력하세요" required="">
                      </div>
                      <div class="inputset">
                        <label for="confirmPassword" class="form-tit h6">새 비밀번호 확인</label>
                        <input class="inputset-input form-control" type="password" id="confirmPassword"
                          name="confirmPassword" placeholder="새 비밀번호를 다시 입력하세요" required="">
                      </div>
                    </div>
                    <div class="form-btn">
                      <button class="btnset btnset-primary" type="submit">확인</button>
                    </div>
                    <div id="error-message" class="error-message" style="display: none;"></div>
                  </div>
                </form>
              </div>
            </div>
          </div>
        </div>
        <div class="th-layout-stickyright"></div>
        <div class="th-layout-sideright"></div>
        <!-- 팝업 -->
        <div class="mypage-N66">
          <div class="popup-overlay" onclick="closePopup()"></div>
          <div class="custom-popup">
            <h4>알림</h4>
            <p>비밀번호가 일치하지 않습니다.</p>
            <button class="btnset btnset-primary" onclick="closePopup()">확인</button>
          </div>
        </div>
      </main>
      <script src="/js/setting.js"></script>
      <script src="/js/plugin.js"></script>
      <script src="/js/templatehouse.js"></script>
      <script src="/js/style.js"></script>
      
      <script>

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
        // 비밀번호 확인 로직
        document.getElementById("changePasswordForm").addEventListener("submit", function (e) {
          e.preventDefault(); // 폼 제출 방지

          const newPassword = document.getElementById("password").value; // 새 비밀번호
          const confirmPassword = document.getElementById("confirmPassword").value; // 새 비밀번호 확인

          // 비밀번호 확인 로직
          if (newPassword !== confirmPassword) {
            showPopup("새 비밀번호와 비밀번호 확인이 일치하지 않습니다.");
          } else {
            this.submit(); // 모든 조건이 만족되면 폼 제출
          }
        });
        window.onload = function () {
          const errorMessage = '<%= request.getAttribute("error") != null ? request.getAttribute("error") : "" %>';
          if (errorMessage) {
            showPopup(errorMessage);
          }
        };
      </script>
    </body>
    <%@ include file="../common/footer.jsp" %>

    </html>