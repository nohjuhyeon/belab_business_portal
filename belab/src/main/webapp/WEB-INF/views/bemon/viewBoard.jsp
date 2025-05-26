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
            <link rel="stylesheet" href="/css/bemon.css" />
            <style>
                body {
                    min-width: 720px;
                    /* 최소 너비 설정 */
                    overflow-x: auto;
                    /* 가로 스크롤 활성화 */
                    white-space: nowrap;
                    /* 내용이 줄바꿈되지 않도록 설정 */

                }
            </style>
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
                                        <h2 class="h1 textset-tit">공고 상세 정보</h2>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="bemon-N32">
                        <div class="container">
                            <table>
                                <colgroup>
                                    <col style="width: 15%;">
                                    <col style="width: 35%;">
                                    <col style="width: 15%;">
                                    <col style="width: 35%;">
                                </colgroup>
                                <tr>
                                    <th>공고명</th>
                                    <td colspan="3">${bemon.title}</td>
                                </tr>
                                <tr>
                                    <th>공고 번호</th>
                                    <td>${bemon.boardId}</td>
                                    <th>공고 유형</th>
                                    <td>${bemon.noticeClass}</td>
                                </tr>
                                <tr>
                                    <th>수요 기관</th>
                                    <td>${bemon.requestingAgency}</td>
                                    <th>공급 기관</th>
                                    <td>${bemon.publishingAgency}</td>
                                </tr>
                                <tr>
                                    <th>입찰 등록 일시</th>
                                    <td>${bemon.startDate}</td>
                                    <th>추정 가격</th>
                                    <td>${bemon.price}</td>
                                </tr>
                                <tr>
                                    <th>입찰 마감 일시</th>
                                    <td>${bemon.startDate}</td>
                                    <th>개찰 일시</th>
                                    <td>${bemon.openDate}</td>
                                </tr>
                                <tr>
                                    <th>공고 카테고리</th>
                                    <td colspan="3">
                                        ${bemon.type != '' ? bemon.type : '-'}
                                    </td>
                                </tr>
                                <tr>
                                    <th>첨부파일</th>
                                    <td colspan="3">
                                        <ul>
                                            <c:forEach var="file" items="${bemon.fileList}">
                                                <li>
                                                    <a class="file-link"
                                                        href="${file.download_link}">${file.file_name}</a>
                                                </li>
                                            </c:forEach>
                                        </ul>
                                    </td>
                                </tr>
                            </table>

                            <!-- 본문 내용 -->
                            <div class="content-section">
                                <pre>${bemon.summary}</pre>
                            </div>
                            <div class="button-container">
                                <!-- 목록 버튼 -->
                                <a type="button" class="btn" href='${bemon.link}'>공고 원문 보러 가기</a>
                                <a type="button" class="btn" href='/bemon'>목록</a>
                            </div>
                        </div>
                    </div>
                </div>
            </main>
            <%@ include file="../common/footer.jsp" %>

        </body>

        </html>