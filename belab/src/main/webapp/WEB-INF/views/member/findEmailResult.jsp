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
                <h2 class="h1 textset-tit">이메일 찾기</h2>
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
        <div class="contents-container container-sm">
          <div class="contents-inner">
            <form action="/member/findEmail" method="post">
              <div class="form-group">
                <c:if test="${not empty email}">
                  <!-- 이메일이 존재하는 경우 -->
                  <input type="hidden" id="foundEmail" value="${email}" />
                  <div class="textset">
                    <div class="h4 textset-tit">고객님의 이메일</div>
                  </div>
                  <br>
                  <div class="textset">
                    <div class="h2 textset-tit" id="emailResult">${email}</h2>
                    </div>
                  </div>
                </c:if>
          
                <c:if test="${not empty error}">
                  <!-- 오류 메시지 표시 -->
                  <div class="h2 textset-tit">${error}</div>
                </c:if>
          
                <div class="form-btn">
                  <a href="/member/login" class="btnset btnset-primary" style="width: 80%;">로그인으로 돌아가기</a>
                </div>
              </div>
            </form>
          </div>
        </div>
      </div>
    </div>
    <div class="th-layout-stickyright"></div>
    <div class="th-layout-sideright"></div>
  </main>

</body>
<%@ include file="../common/footer.jsp" %>

</html>