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
                    <h2 class="h1 textset-tit">비밀번호 확인</h2>
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
                <form id="validatePasswordForm">
                  <div class="form-group">
                    <div class="textset">
                      <h2 class="h2 textset-tit">비밀번호를 입력하세요.</h2>
                    </div>
                    <div class="form-box">
                      <div class="inputset">
                        <label for="password" class="form-tit h6">비밀번호</label>
                        <input class="inputset-input form-control" type="password" id="password" name="password"
                          placeholder="비밀번호를 입력하세요" required="">
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
        <div class="mypage-N68">
            <div id="popup-overlay" class="popup-overlay">
                <div class="popup" id="popup-confirm-delete">
                  <h3>정말 회원을 삭제하시겠습니까?</h3>
                  <p>이 작업은 되돌릴 수 없습니다.</p>
                  <button id="confirm-delete-button" class="btnset btnset-primary">삭제</button>
                  <button class="btnset cancel-button" id="cancel-delete-button">취소</button>
                </div>
  
                <div class="popup" id="popup-delete-success" style="display: none;">
                  <h3>회원이 삭제되었습니다.</h3>
                  <p>이용해 주셔서 감사합니다.</p>
                  <button id="close-success-button" class="btnset btnset-primary">닫기</button>
                </div>
              </div>
            </div>
      </main>

      <script>
        const popupOverlay = document.getElementById("popup-overlay");
        const confirmDeletePopup = document.getElementById("popup-confirm-delete");
        const deleteSuccessPopup = document.getElementById("popup-delete-success");
        const confirmDeleteButton = document.getElementById("confirm-delete-button");
        const cancelDeleteButton = document.getElementById("cancel-delete-button");
        const closeSuccessButton = document.getElementById("close-success-button");

        document.getElementById("validatePasswordForm").addEventListener("submit", function (event) {
          event.preventDefault();

          const password = document.getElementById("password").value;

          // 비밀번호 확인 요청
          fetch("/member/validatePassword", {
            method: "POST",
            headers: {
              "Content-Type": "application/x-www-form-urlencoded"
            },
            body: "password=" + encodeURIComponent(password)
          })
            .then(response => response.text())
            .then(data => {
              if (data === "valid") {
                // 팝업 표시
                popupOverlay.style.display = "flex";
                confirmDeletePopup.style.display = "block";
              } else {
                document.getElementById("error-message").textContent = "비밀번호가 올바르지 않습니다.";
                document.getElementById("error-message").style.display = "block";
              }
            })
            .catch(error => {
              console.error("Error:", error);
              alert("서버 오류가 발생했습니다. 다시 시도해주세요.");
            });
        });

        confirmDeleteButton.addEventListener("click", function () {
          // 삭제 요청
          fetch("/member/delete", {
            method: "POST",
            headers: {
              "Content-Type": "application/x-www-form-urlencoded"
            }
          })
            .then(response => response.json())
            .then(data => {
              if (data.status === "success") {
                confirmDeletePopup.style.display = "none";
                deleteSuccessPopup.style.display = "block";
              } else {
                alert("삭제 과정에서 오류가 발생했습니다. 다시 시도해주세요.");
              }
            })
            .catch(error => {
              console.error("Error:", error);
              alert("삭제 과정에서 오류가 발생했습니다. 다시 시도해주세요.");
            });
        });

        cancelDeleteButton.addEventListener("click", function () {
          popupOverlay.style.display = "none";
        });

        closeSuccessButton.addEventListener("click", function () {
          popupOverlay.style.display = "none";
          window.location.href = "/";
        });
      </script>
    </body>
    <%@ include file="../common/footer.jsp" %>

    </html>