<%@ page language="java" contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" %>
  <%@ include file="../common/header.jsp" %>

    <!DOCTYPE html>
    <html lang="en">

    <head>
      <meta charset="UTF-8">
      <title>게시글 상세보기</title>
      <script>
        function navigateTo(url) {
          window.location.href = url;
        }
      </script>
    </head>

    <body>
      <main class="th-layout-main">
        <div class="th-layout-sideleft"></div>
        <div class="th-layout-stickyleft"></div>
        <div class="th-layout-content">
          <div class="basic-N10" id="ytM5Z21bIr">
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
                    <h2 class="h1 textset-tit">공지사항</h2>
                  </div>
                </div>
              </div>
            </div>
          </div>
          <div class="contact-N32">
          <div class="container">
            <table>
              <tr>
                <th>제목</th>
                <td colspan="3">${board.title}</td>
              </tr>
              <tr>
                <th style="width: 10%">작성자</th>
                <td style="width: 40%">${board.username}</td>
                <th style="width: 10%">작성일</th>
                <td style="width: 40%">${board.formattedCreatedAt}</td>
              </tr>
            </table>

            <!-- 본문 내용 -->
            <div class="content-section">
              <h3>본문 내용</h3>
              <pre>${board.content}</pre>
            </div>
            <div class="button-container">
              <!-- 목록 버튼 -->
              <button type="button" class="btn" onclick="navigateTo('/notice/boardList')">목록</button>
              <c:if test="${loggedInUser != null && loggedInUser.role == 'admin'}">
                <!-- 수정 버튼 -->
                <button type="button" class="btn"
                  onclick="navigateTo('/notice/editBoard/${board.dashboard_id}')">수정</button>

                <!-- 삭제 버튼 -->
                <form action="/notice/deleteBoard" method="post" style="margin-bottom: 0px;">
                  <input type="hidden" name="dashboard_id" value="${board.dashboard_id}">
                  <button type="submit" class="btn btn-danger">삭제</button>
                </form>
              </c:if>
            </div>
          </div>
        </div>
        </main>
      <%@ include file="../common/footer.jsp" %>
    </body>
    <script src="/js/setting.js"></script>
    <script src="/js/plugin.js"></script>
    <script src="/js/templatehouse.js"></script>
    <script src="/js/style.js"></script>
    
    </html>