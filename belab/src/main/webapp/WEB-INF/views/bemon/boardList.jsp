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
            <link rel="stylesheet" href="/css/bemon.css" />
            <style>
                .table th.title-column,
                .table td.title-column {
                    width: 50%;
                }

                body {
                    min-width: 720px;
                    /* 최소 너비 설정 */
                    overflow-x: auto;
                    /* 가로 스크롤 활성화 */
                    white-space: nowrap;
                    /* 내용이 줄바꿈되지 않도록 설정 */

                }

                th {
                    padding: 2rem 1rem !important;
                }

                td {
                    padding: 2rem 1rem !important;
                }
            </style>
        </head>

        <body>
            <%@ include file="../common/header.jsp" %>

                <main class="th-layout-main bemon-main">
                    <div class="th-layout-sideleft"></div>
                    <div class="th-layout-stickyleft"></div>
                    <div class="th-layout-content">
                        <div class="basic-N10" id="HtM5yS8Tf5">
                            <div class="contents-container ">
                                <div class="contents-inner">
                                    <div class="contents-visual">
                                        <picture>
                                            <source srcset="/images/img_subvisual_mobile.png"
                                                media="(max-width: 992px)" />
                                            <img src="/images/img_subvisual.png" alt="비주얼 이미지" />
                                        </picture>
                                    </div>
                                    <div class="contents-body">
                                        <div class="textset">
                                            <h2 class="h1 textset-tit">BeMON </h2>
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
                            <form action="/bemon" method="POST">
                                <section class="bemon-N9" id="OSMAXjKO12">
                                    <div class="contents-container container-md">
                                        <div class="contents-inner">
                                            <div class="title-area">
                                                <h2 class="h2">나라장터 입찰공고 확인하기</h2>
                                            </div>
                                            <div class="form-group">
                                                <div class="form-box radio-box">
                                                    <legend class="form-tit">공고 상태</legend>
                                                    <div class="contents-form">
                                                        <div class="inputset">
                                                            <div class="checkset-wrap">
                                                                <div class="checkset checkset-fill">
                                                                    <input id="radio-all" class="checkset-input"
                                                                        type="radio" name="noticeRange" value="전체 공고"
                                                                        ${noticeRange==null || noticeRange=='전체 공고'
                                                                        ? 'checked' : '' }>
                                                                    <label for="radio-all" class="checkset-label">전체
                                                                        공고</label>
                                                                </div>
                                                                <div class="checkset checkset-fill">
                                                                    <input id="radio-open" class="checkset-input"
                                                                        type="radio" name="noticeRange"
                                                                        value="마감되지 않은 공고" ${noticeRange=='마감되지 않은 공고'
                                                                        ? 'checked' : '' }>
                                                                    <label for="radio-open" class="checkset-label">마감되지
                                                                        않은 공고</label>
                                                                </div>
                                                                <div class="checkset checkset-fill">
                                                                    <input id="radio-close" class="checkset-input"
                                                                        type="radio" name="noticeRange" value="마감된 공고"
                                                                        ${noticeRange=='마감된 공고' ? 'checked' : '' }>
                                                                    <label for="radio-close" class="checkset-label">마감된
                                                                        공고</label>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="form-box">
                                                    <legend class="form-tit">키워드 검색</legend>
                                                    <div class="inputset inputset-keyword">
                                                        <div class="contents-form">
                                                            <div class="selectset">
                                                                <div class="selectset-area">
                                                                    <!-- 선택된 값을 저장할 숨겨진 input -->
                                                                    <input type="hidden" name="keywordLogic"
                                                                        id="keyword-logic-input"
                                                                        value="${keywordLogic != Null ? keywordLogic : 'all'}">

                                                                    <button class="selectset-toggle btn" type="button">
                                                                        <span
                                                                            id="keyword-logic-display">${keywordLogicStr
                                                                            != Null ? keywordLogicStr : '전체'}</span>
                                                                    </button>
                                                                    <ul class="selectset-list">
                                                                        <li class="selectset-item">
                                                                            <button class="selectset-link btn"
                                                                                type="button" data-value="all"
                                                                                onclick="updateKeywordLogicValue('all')">
                                                                                <span>전체</span>
                                                                            </button>
                                                                        </li>
                                                                        <li class="selectset-item">
                                                                            <button class="selectset-link btn"
                                                                                type="button" data-value="noticeId"
                                                                                onclick="updateKeywordLogicValue('noticeId')">
                                                                                <span>공고 번호</span>
                                                                            </button>
                                                                        </li>
                                                                        <li class="selectset-item">
                                                                            <button class="selectset-link btn"
                                                                                type="button" data-value="title"
                                                                                onclick="updateKeywordLogicValue('title')">
                                                                                <span>공고명</span>
                                                                            </button>
                                                                        </li>
                                                                        <li class="selectset-item">
                                                                            <button class="selectset-link btn"
                                                                                type="button"
                                                                                data-value="publishingAgency"
                                                                                onclick="updateKeywordLogicValue('publishingAgency')">
                                                                                <span>공고 기관</span>
                                                                            </button>
                                                                        </li>
                                                                        <li class="selectset-item">
                                                                            <button class="selectset-link btn"
                                                                                type="button"
                                                                                data-value="requestingAgency"
                                                                                onclick="updateKeywordLogicValue('requestingAgency')">
                                                                                <span>수요 기관</span>
                                                                            </button>
                                                                        </li>
                                                                    </ul>
                                                                </div>
                                                            </div>
                                                            <div class="inputset inputset-icon icon-right">
                                                                <label for="basic-N22-inputset-a-1"
                                                                    class="form-tit h6 blind">텍스트 <span>*</span></label>
                                                                <input id="basic-N22-inputset-a-1" type="text"
                                                                    name="keyword"
                                                                    class="inputset-input form-control icon-left"
                                                                    placeholder="내용을 입력하세요." value="${keyword}">
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="form-box">
                                                    <legend class="form-tit">카테고리 (복수선택 가능) <span>*</span></legend>
                                                    <div class="contents-form">
                                                        <div class="selectset">
                                                            <div class="selectset-area">
                                                                <!-- 선택된 값을 저장할 숨겨진 input -->
                                                                <input type="hidden" name="categoryLogic"
                                                                    id="category-logic-input"
                                                                    value="${categoryLogic != null ? categoryLogic : 'OR'}">

                                                                <button class="selectset-toggle btn" type="button">
                                                                    <span id="category-logic-display">${categoryLogic !=
                                                                        null ? categoryLogic : 'OR'}</span>
                                                                </button>
                                                                <ul class="selectset-list">
                                                                    <li class="selectset-item">
                                                                        <button class="selectset-link btn" type="button"
                                                                            data-value="OR"
                                                                            onclick="updateCategoryLogicValue('OR')">
                                                                            <span>OR</span>
                                                                        </button>
                                                                    </li>
                                                                    <li class="selectset-item">
                                                                        <button class="selectset-link btn" type="button"
                                                                            data-value="AND"
                                                                            onclick="updateCategoryLogicValue('AND')">
                                                                            <span>AND</span>
                                                                        </button>
                                                                    </li>
                                                                </ul>
                                                            </div>
                                                        </div>
                                                        <div class="inputset">
                                                            <div class="checkset-wrap">
                                                                <div class="checkset checkset-fill">
                                                                    <input id="check-all"
                                                                        class="checkset-input category-input"
                                                                        type="checkbox" name="category" value="all"
                                                                        ${categories==null or categories.contains('all')
                                                                        ? 'checked' : '' }>
                                                                    <label for="check-all"
                                                                        class="checkset-label">전체</label>
                                                                </div>
                                                                <div class="checkset checkset-fill">
                                                                    <input id="check-ai"
                                                                        class="checkset-input category-input"
                                                                        type="checkbox" name="category" value="ai"
                                                                        ${categories==null or categories.contains('ai')
                                                                        ? 'checked' : '' }>
                                                                    <label for="check-ai"
                                                                        class="checkset-label">인공지능</label>
                                                                </div>
                                                                <div class="checkset checkset-fill">
                                                                    <input id="check-data"
                                                                        class="checkset-input category-input"
                                                                        type="checkbox" name="category" value="data"
                                                                        ${categories==null or
                                                                        categories.contains('data') ? 'checked' : '' }>
                                                                    <label for="check-data"
                                                                        class="checkset-label">데이터베이스</label>
                                                                </div>
                                                                <div class="checkset checkset-fill">
                                                                    <input id="check-cloud"
                                                                        class="checkset-input category-input"
                                                                        type="checkbox" name="category" value="cloud"
                                                                        ${categories==null or
                                                                        categories.contains('cloud') ? 'checked' : '' }>
                                                                    <label for="check-cloud" class="checkset-label">클라우드
                                                                        컴퓨팅</label>
                                                                </div>
                                                                <div class="checkset checkset-fill">
                                                                    <input id="check-software"
                                                                        class="checkset-input category-input"
                                                                        type="checkbox" name="category" value="software"
                                                                        ${categories==null or
                                                                        categories.contains('software') ? 'checked' : ''
                                                                        }>
                                                                    <label for="check-software"
                                                                        class="checkset-label">소프트웨어 개발 및 관리</label>
                                                                </div>
                                                            </div>
                                                            <div class="checkset-wrap">
                                                                <div class="checkset checkset-fill">
                                                                    <input id="check-iot"
                                                                        class="checkset-input category-input"
                                                                        type="checkbox" name="category" value="iot"
                                                                        ${categories==null or categories.contains('iot')
                                                                        ? 'checked' : '' }>
                                                                    <label for="check-iot"
                                                                        class="checkset-label">IoT</label>
                                                                </div>
                                                                <div class="checkset checkset-fill">
                                                                    <input id="check-blockchain"
                                                                        class="checkset-input category-input"
                                                                        type="checkbox" name="category"
                                                                        value="blockchain" ${categories==null or
                                                                        categories.contains('blockchain') ? 'checked'
                                                                        : '' }>
                                                                    <label for="check-blockchain"
                                                                        class="checkset-label">블록체인</label>
                                                                </div>
                                                                <div class="checkset checkset-fill">
                                                                    <input id="check-metabus"
                                                                        class="checkset-input category-input"
                                                                        type="checkbox" name="category" value="metabus"
                                                                        ${categories==null or
                                                                        categories.contains('metabus') ? 'checked' : ''
                                                                        }>
                                                                    <label for="check-metabus"
                                                                        class="checkset-label">AR/VR 및 메타버스</label>
                                                                </div>
                                                                <div class="checkset checkset-fill">
                                                                    <input id="check-network"
                                                                        class="checkset-input category-input"
                                                                        type="checkbox" name="category" value="network"
                                                                        ${categories==null or
                                                                        categories.contains('network') ? 'checked' : ''
                                                                        }>
                                                                    <label for="check-network"
                                                                        class="checkset-label">네트워크 및 보안</label>
                                                                </div>
                                                                <div class="checkset checkset-fill">
                                                                    <input id="check-isp"
                                                                        class="checkset-input category-input"
                                                                        type="checkbox" name="category" value="isp"
                                                                        ${categories==null or categories.contains('isp')
                                                                        ? 'checked' : '' }>
                                                                    <label for="check-isp"
                                                                        class="checkset-label">ISP/ISMP</label>
                                                                </div>
                                                                <div class="checkset checkset-fill">
                                                                    <input id="check-others"
                                                                        class="checkset-input category-input"
                                                                        type="checkbox" name="category" value="others"
                                                                        ${categories==null or
                                                                        categories.contains('others') ? 'checked' : ''
                                                                        }>
                                                                    <label for="check-others"
                                                                        class="checkset-label">기타</label>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="form-wrap">
                                                <div class="form-btn">
                                                    <button class="btnset btnset-primary" type="submit"
                                                        formaction="?page=1">검색하기</button>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                        </div>
                        </section>
                        <section class="bemon-N25" id="lPm5z1y19z">
                            <div class="contents-container container-full">
                                <div class="contents-inner">
                                    <div class="title-area">
                                        <span class="p2"></span>
                                        <div class="inputset inputset-line inputset-lg">
                                        </div>
                                    </div>
                                    <div class="tableset tableset-fract">
                                        <table class="tableset-table table bemon-table">
                                            <colgroup>
                                                <col class="width-100" />
                                                <col />
                                                <col class="width-120" />
                                            </colgroup>
                                            <thead class="thead-light thead-border-top">
                                                <tr>
                                                    <th scope="col" class="p2" style="width: 5%;">공고 번호</th>
                                                    <th scope="col" class="p2" style="width: 45%;">제목</th>
                                                    <th style="width: 10%;">가격(부가세 포함)</th>
                                                    <th style="width: 10%;">공고 기관</th>
                                                    <th style="width: 10%;">수요 기관</th>
                                                    <th scope="col" class="p2" style="width: 10%;">게시 일시</th>
                                                    <th scope="col" class="p2" style="width: 10%;">마감 일시</th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                                    <c:forEach var="board" items="${boards}" varStatus="status">
                                                    <tr onclick="window.location.href='/bemon/viewBoard/${board.id}'">
                                                            <td class="p2 tableset-mobile">
                                                                <c:out value="${(currentPage-1)*10 + status.index + 1}"/>
                                                            </td>
                                                        <td
                                                            class="p2 text-left tableset tableset-tit-ellipsis tableset-tit">
                                                            <a href="/bemon/viewBoard/${board.id}">
                                                                <div class="p1">${board.title}</div>
                                                                <div class="p3"
                                                                    style="color:#505050; line-height:1.5em; min-height:1.5em;">
                                                                    ${board.type}</div>
                                                            </a>
                                                        </td>
                                                        <td class="p2">${board.priceSummary}</td>
                                                        <td class="p2">${board.publishingAgency}</td>
                                                        <td class="p2">${board.requestingAgency}</td>
                                                        <td class="p2">${board.startDate}</td>
                                                        <td class="p2">${board.endDate}<br><span style="font-size:0.85em; color:#888;">${board.remainDaysText}</span></td>
                                                    </tr>
                                                </c:forEach>

                                            </tbody>
                                        </table>
                                    </div>
                                    <nav class="pagiset pagiset-circ">
                                        <!-- 처음 버튼 -->
                                        <div class="pagiset-ctrl">
                                            <c:if test="${currentPage > 1}">
                                                <button class="pagiset-link pagiset-first" style="margin-right: 5px;"
                                                    formaction="?page=1" type="submit"></button>
                                            </c:if>
                                        </div>

                                        <!-- 이전 버튼 -->
                                        <div class="pagiset-ctrl">
                                            <c:if test="${currentBlock > 1}">
                                                <button class="pagiset-link pagiset-prev" style="margin-right: 5px;"
                                                    formaction="?page=${currentBlock*10 - 19}" type="submit"></button>
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
                                                        <button class="pagiset-link" style="margin-right: 5px;"
                                                            formaction="?page=${pageNum}"
                                                            type="submit">${pageNum}</button>
                                                    </c:otherwise>
                                                </c:choose>
                                            </c:forEach>
                                        </div>

                                        <!-- 다음 버튼 -->
                                        <div class="pagiset-ctrl">
                                            <c:if test="${currentBlock < totalBlock}">
                                                <button class="pagiset-link pagiset-next" style="margin-left: 5px;"
                                                    formaction="?page=${currentBlock*10 + 1}" type="submit"></button>
                                            </c:if>
                                        </div>

                                        <!-- 마지막 버튼 -->
                                        <div class="pagiset-ctrl">
                                            <c:if test="${currentPage < totalPages}">
                                                <button class="pagiset-link pagiset-last" style="margin-left: 5px;"
                                                    formaction="?page=${totalPages}" type="submit"></button>
                                            </c:if>
                                        </div>
                                    </nav>
                                </div>
                            </div>
                        </section>
                        </form>

                    </div>
                    </div>
                </main>

                <%@ include file="/WEB-INF/views/common/footer.jsp" %>
                    <script src="/js/bemon.js"></script>
                    <script src="/js/setting.js"></script>
                    <script src="/js/plugin.js"></script>
                    <script src="/js/templatehouse.js"></script>
                    <script src="/js/style.js"></script>
                    <script>
                        function updateCategoryLogicValue(value) {
                            // 숨겨진 input의 값을 업데이트
                            const logicInput = document.getElementById('category-logic-input');
                            const logicDisplay = document.getElementById('category-logic-display');

                            logicInput.value = value; // 숨겨진 input 업데이트
                            logicDisplay.textContent = value; // 버튼에 표시된 텍스트 업데이트
                        }
                        function updateKeywordLogicValue(value) {
                            // 숨겨진 input의 값을 업데이트
                            const logicInput = document.getElementById('keyword-logic-input');
                            const logicDisplay = document.getElementById('keyword-logic-display');

                            logicInput.value = value; // 숨겨진 input 업데이트
                            logicDisplay.textContent = value; // 버튼에 표시된 텍스트 업데이트
                        }

                    </script>

        </body>

        </html>