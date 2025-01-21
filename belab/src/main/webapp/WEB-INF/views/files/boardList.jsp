<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="../common/header.jsp" %>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml" lang="ko">

<head>
    <meta charset="UTF-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <meta http-equiv="imagetoolbar" content="no"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <meta name="format-detection" content="telephone=no"/>
    <link rel="stylesheet" href="/css/setting.css"/>
    <link rel="stylesheet" href="/css/plugin.css"/>
    <link rel="stylesheet" href="/css/templatehouse.css"/>
    <link rel="stylesheet" href="/css/style.css"/>
    <style>

        .table th.title-column, .table td.title-column {
            width: 60%;
        }

    </style>
</head>

<body>
<%@ include file="../common/header.jsp" %>

<main class="th-layout-main">
    <div class="th-layout-sideleft"></div>
    <div class="th-layout-stickyleft"></div>
    <div class="th-layout-content">
        <div class="mypage-N10" id="HtM5yS8Tf5">
            <div class="contents-container container-full">
                <div class="contents-inner">
                    <div class="contents-visual">
                        <picture>
                            <source srcset="/images/img_subvisual_mobile.png" media="(max-width: 992px)"/>
                            <img src="/images/img_subvisual.png" alt="비주얼 이미지"/>
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
        <div class="basic-N55" id="pFM5yS8tiD">
            <div class="contents-container container-md">
                <div class="tabset tabset-solid border-bottom">
                </div>
            </div>
        </div>
        <div class="th-layout-sideleft"></div>
        <div class="th-layout-stickyleft"></div>
        <div class="th-layout-content">
            <section class="butti-N10" id="ktM5Z1Y14R">
            </section>
            <div class="butti-N11" id="PaM5Z1y16M">
            </div>
            <section class="butti-N25" id="lPm5z1y19z">
                <div class="contents-container container-md">
                    <div class="contents-inner">
                        <div class="title-area">
                            <span class="p2"></span>
                            <div class="inputset inputset-line inputset-lg">
                                <!-- 글 작성 버튼 (로그인한 사용자만 보임) -->
                                <c:if test="${not empty loggedInUser && loggedInUser.role == 'admin'}">
                                    <div class="d-flex justify-content-end mb-3">
                                        <a href="/files/createBoard" class="btnset btnset-primary">글 작성</a>
                                    </div>
                                </c:if>
                            </div>
                        </div>
                        <div class="tableset tableset-fract">
                            <table class="tableset-table table">
                                <colgroup>
                                    <col class="width-100"/>
                                    <col/>
                                    <col class="width-120"/>
                                </colgroup>
                                <thead class="thead-light thead-border-top">
                                <tr>
                                    <th scope="col" class="p2">번호</th>
                                    <th scope="col" class="p2 title-column">제목</th>
                                    <th>작성자</th>
                                    <th scope="col" class="p2">작성일</th>
                                </tr>
                                </thead>
                                <tbody>
                                <c:forEach var="board" items="${boards}">
                                    <tr>
                                        <td class="p2 tableset-mobile">${board.refer_board_id}</td>
                                        <td class="p2 text-left tableset tableset-tit-ellipsis tableset-tit">
                                            <a href="/files/viewBoard/${board.refer_board_id}">${board.title}</a>
                                        </td>
                                        <td>${board.username}</td>
                                        <td class="p2">${board.formattedUpdatedAt}</td>
                                    </tr>
                                </c:forEach>

                                </tbody>
                            </table>
                        </div>
                        <nav class="pagiset pagiset-circ">
                            <!-- 이전 버튼 -->
                            <div class="pagiset-ctrl">
                                <c:if test="${currentPage > 1}">
                                    <a href="/files/boardList?page=${currentPage - 1}&size=${size}"
                                       class="pagiset-link pagiset-prev"
                                       style="margin-right: 5px;"></a>
                                </c:if>
                            </div>
                            <!-- 페이지 번호 -->
                            <div class="pagiset-list">
                                <c:forEach begin="${startPage}" end="${endPage}" var="pageNum">
                                    <c:choose>
                                        <c:when test="${pageNum == currentPage}">
                            <span class="pagiset-link active-fill"
                                  style="margin-right: 5px;">${pageNum}</span>
                                        </c:when>

                                        <c:otherwise>
                                            <a href="/notice/boardList?page=${pageNum}&size=${size}"
                                               class="pagiset-link"
                                               style="margin-right: 5px;">${pageNum}</a>
                                        </c:otherwise>
                                    </c:choose>
                                </c:forEach>
                            </div>

                            <!-- 다음 버튼 -->
                            <div class="pagiset-ctrl">
                                <c:if test="${currentPage < totalPages}">

                                    <a href="/notice/boardList?page=${currentPage + 1}&size=${size}"
                                       class="pagiset-link pagiset-next"
                                       style="margin-left: 5px;"></a>
                                </c:if>
                            </div>
                        </nav>
                    </div>
                </div>
            </section>
</body>

<%@ include file="/WEB-INF/views/common/footer.jsp" %>

</html>