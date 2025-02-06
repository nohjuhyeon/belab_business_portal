<%@ page contentType="text/html;charset=UTF-8" language="java" %>
    <%@ include file="../../common/header.jsp" %>
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
                                        <h2 class="h1 textset-tit">회원 관리</h2>
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
                    <div class="th-layout-sideleft"></div>
                    <div class="th-layout-stickyleft"></div>
                    <div class="th-layout-content">
                        <section class="member-N25" id="lPm5z1y19z">
                            <div class="contents-container container-md">
                                <div class="contents-inner">
                                    <div class="title-area">
                                        <span class="p2"></span>
                                    </div>
                                    <div class="tableset tableset-fract">
                                        <table class="tableset-table table">
                                            <colgroup>
                                                <col class="width-100" />
                                                <col />
                                                <col class="width-120" />
                                            </colgroup>
                                            <thead class="thead-light thead-border-top">
                                                <tr>
                                                    <th scope="col" class="p1">회원 ID</th>
                                                    <th scope="col" class="p1">이름</th>
                                                    <th scope="col" class="p1">이메일</th>
                                                    <th scope="col" class="p1">연락처</th>
                                                    <th scope="col" class="p1">소속</th>
                                                    <th scope="col" class="p1" style="min-width: 187px;">관리</th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                                <c:forEach var="member" items="${memberList}">
                                                    <tr>
                                                        <td class="p1 tableset-mobile">${member.user_id}</td>
                                                        <td class="p1">
                                                            ${member.username}
                                                        </td>
                                                        <td class="p1">${member.email}</td>
                                                        <td class="p1">${member.hp}</td>
                                                        <td class="p1">${member.role}</td>
                                                        <td class="p1">
                                                            <form style="display:inline;">
                                                                <input type="hidden" name="user_id"
                                                                    value="${member.user_id}">
                                                                <button class="btnset btnset-primary"
                                                                    formaction="/admin/modifyForm?user_id=${member.user_id}">수정</button>
                                                                </button>
                                                            </form>
                                                            <form id="deleteUserForm-${member.user_id}"
                                                                style="display:inline;">
                                                                <button type="button" class="btnset cancel-button"
                                                                    onclick="showDeletePopup('${member.user_id}')">삭제</button>
                                                            </form>
                                                        </td>
                                                    </tr>
                                                </c:forEach>

                                            </tbody>
                                        </table>
                                    </div>
                                </div>
                            </div>
                        </section>
                    </div>
                </div>
            </main>
            <div class="basic-N68">
                <div class="popup-overlay" id="popup-overlay">
                    <div class="popup" id="popup-confirm-delete">
                        <h3>정말 회원을 삭제하시겠습니까?</h3>
                        <p>이 작업은 되돌릴 수 없습니다.</p>
                        <p><strong>삭제할 회원 ID:</strong> <span id="popup-user-id"></span></p>
                        <button id="confirm-delete-button" class="btnset btnset-primary">삭제</button>
                        <button class="btnset cancel-button" id="cancel-delete-button">취소</button>
                    </div>
                    <div class="popup" id="popup-delete-success" style="display: none;">
                        <h3>회원이 삭제되었습니다.</h3>
                        <button id="close-success-button" class="btnset btnset-primary">닫기</button>
                    </div>
                </div>
            </div>
            </div>
            <%@ include file="../../common/footer.jsp" %>
        </body>

        <script src="/js/setting.js"></script>
        <script src="/js/plugin.js"></script>
        <script src="/js/templatehouse.js"></script>
        <script src="/js/style.js"></script>
        <script>
            const popupOverlay = document.getElementById("popup-overlay");
            const confirmDeletePopup = document.getElementById("popup-confirm-delete");
            const deleteSuccessPopup = document.getElementById("popup-delete-success");
            const popupUserIdSpan = document.getElementById("popup-user-id");
            const confirmDeleteButton = document.getElementById("confirm-delete-button");
            const cancelDeleteButton = document.getElementById("cancel-delete-button");
            const closeSuccessButton = document.getElementById("close-success-button");

            let targetUserId = null;

            function showDeletePopup(userId) {
                // userId를 받아와 팝업에 표시
                targetUserId = userId;
                popupUserIdSpan.textContent = userId;

                // 팝업 표시
                popupOverlay.style.display = "flex";
                confirmDeletePopup.style.display = "block";
            }

            // 삭제 확인 버튼 클릭 시
            confirmDeleteButton.addEventListener("click", function () {
                if (targetUserId) {
                    fetch(`/admin/delete`, {
                        method: "POST",
                        headers: {
                            "Content-Type": "application/x-www-form-urlencoded"
                        },
                        body: "user_id=" + encodeURIComponent(targetUserId)
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
                location.reload();
            });

        </script>

        </html>