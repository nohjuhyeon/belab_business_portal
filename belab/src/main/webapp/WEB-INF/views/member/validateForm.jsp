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
  <link rel="stylesheet" href="/css/member.css" />
</head>

<body>

  <main class="th-layout-main">
    <div class="th-layout-sideleft"></div>
    <div class="th-layout-stickyleft"></div>
    <div class="th-layout-content">
      <div class="basic-N10" id="HtM5yS8Tf5">
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
      <div class="member-N24" id="Vgm5ys8tOU">
        <div class="contents-container container-valid-box">
          <div class="contents-inner">
            <form id="validatePasswordForm">
              <div class="form-group">
                <div class="textset">
                  <h2 class="h2 textset-tit">비밀번호를 입력하세요.</h2>
                </div>
                <div class="form-box">
                  <div class="inputset">
                    <label for="password" class="form-tit h6" >비밀번호</label>
                    <input class="inputset-input form-control" type="password" id="password" name="password" placeholder="비밀번호를 입력하세요" required="">
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
  </main>
  <script src="/js/setting.js"></script>
  <script src="/js/plugin.js"></script>
  <script src="/js/templatehouse.js"></script>
  <script src="/js/style.js"></script>
  
  <script>
    document.getElementById("validatePasswordForm").addEventListener("submit", function(event) {
        event.preventDefault();

        const password = document.getElementById("password").value;

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
                    window.location.href = "/member/modifyForm";  // 비밀번호가 올바르면 수정 페이지로 리다이렉트
                } else {
                    document.getElementById("error-message").textContent = "비밀번호가 올바르지 않습니다.";
                    document.getElementById("error-message").style.display = "block";
                }
            })
            .catch(error => console.error("Error:", error));
    });
</script>
</body>
<%@ include file="../common/footer.jsp" %>

</html>