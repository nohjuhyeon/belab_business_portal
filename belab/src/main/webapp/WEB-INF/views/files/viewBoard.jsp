<%@ page language="java" contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" %>
  <%@ include file="../common/header.jsp" %>

    <!DOCTYPE html>
    <html lang="en">

    <head>
      <meta charset="UTF-8" />
      <meta http-equiv="X-UA-Compatible" content="IE=edge" />
      <meta name="viewport" content="width=device-width, initial-scale=1.0" />
      <meta name="format-detection" content="telephone=no" />
      <link rel="stylesheet" href="/css/setting.css" />
      <link rel="stylesheet" href="/css/plugin.css" />
      <link rel="stylesheet" href="/css/templatehouse.css" />
      <link rel="stylesheet" href="/css/style.css" />
      <link rel="stylesheet" href="/css/contact.css" />
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
                    <h2 class="h1 textset-tit">자료실</h2>
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
                <tr>
                  <th style="width: 10%">첨부파일</th>
                  <td colspan="3">
                    <ul>
                      <c:forEach var="file" items="${attachedFiles}">
                        <li>
                          <a href="/files/download/${file.file_id}">${file.file_name}</a>
                        </li>
                      </c:forEach>
                    </ul>
                  </td>
                </tr>
              </table>

              <!-- 본문 내용 -->
              <div class="content-section">
                <pre>${board.content}</pre>
              </div>
              <div class="button-container">
                <!-- 목록 버튼 -->
                <a type="button" class="btn" href='/files/boardList'>목록</a>
                <c:if test="${loggedInUser != null && loggedInUser.role == 'admin'}">
                  <!-- 수정 버튼 -->
                  <form action="/files/editBoard/${board.refer_board_id}" method="get" style="margin-bottom: 0px;">
                    <input type="hidden" name="referBoardId" value="${board.refer_board_id}">
                    <button type="submit" class="btn">수정</button>
                  </form>
                  <!-- 삭제 버튼 -->
                  <form id="deleteboard-${board.refer_board_id}" style="display:inline;">
                    <button type="button" class="btn" onclick="showDeletePopup('${board.refer_board_id}')">삭제</button>
                  </form>
                </c:if>
              </div>
            </div>
          </div>
          <div class="basic-N68">
            <div class="popup-overlay" id="popup-overlay">
              <div class="popup" id="popup-confirm-delete">
                <h3>정말 게시글을 삭제하시겠습니까?</h3>
                <p>이 작업은 되돌릴 수 없습니다.</p>
                <button id="confirm-delete-button" class="btnset btnset-primary">삭제</button>
                <button class="btnset cancel-button" id="cancel-delete-button">취소</button>
              </div>
              <div class="popup" id="popup-delete-success" style="display: none;">
                <h3>게시글이 삭제되었습니다.</h3>
                <button id="close-success-button" class="btnset btnset-primary">닫기</button>
              </div>
            </div>
          </div>

      </main>
      <%@ include file="../common/footer.jsp" %>
    </body>
    <script>
      const popupOverlay = document.getElementById("popup-overlay");
      const confirmDeletePopup = document.getElementById("popup-confirm-delete");
      const deleteSuccessPopup = document.getElementById("popup-delete-success");
      const confirmDeleteButton = document.getElementById("confirm-delete-button");
      const cancelDeleteButton = document.getElementById("cancel-delete-button");
      const closeSuccessButton = document.getElementById("close-success-button");

      let targetUserId = null;

      function showDeletePopup(userId) {
        // userId를 받아와 팝업에 표시
        targetUserId = userId;

        // 팝업 표시
        popupOverlay.style.display = "flex";
        confirmDeletePopup.style.display = "block";
      }

      // 삭제 확인 버튼 클릭 시
      confirmDeleteButton.addEventListener("click", function () {
        if (targetUserId) {
          fetch(`/files/deleteBoard`, {
            method: "POST",
            headers: {
              "Content-Type": "application/x-www-form-urlencoded"
            },
            body: "referBoardId=" + encodeURIComponent(targetUserId)
          })
            .then(response => response.json())
            .then(data => {
              if (data.status === "success") {
                confirmDeletePopup.style.display = "none";
                deleteSuccessPopup.style.display = "block";
              }
            })
            .catch(error => console.error("Error:", error));
        }
      });

      // 삭제 취소 버튼 클릭 시 팝업 닫기
      cancelDeleteButton.addEventListener("click", function () {
        popupOverlay.style.display = "none";
        confirmDeletePopup.style.display = "none";
      });

      closeSuccessButton.addEventListener("click", function () {
        popupOverlay.style.display = "none";
        deleteSuccessPopup.style.display = "none";
        // 페이지를 새로고침하거나 삭제된 데이터를 UI에서 제거
        window.location.href = "/files/boardList";
      });

    </script>

    </html>