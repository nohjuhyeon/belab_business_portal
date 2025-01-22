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
  <style>
    .table th.title-column,
    .table td.title-column {
      width: 60%;
    }
  </style>
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
    <div class="contact-N24" id="uFM5Z21BnK">
      <div class="contents-container container-md">
        <div class="contents-inner">
          <form action="/files/editBoard" method="post">
            <input type="hidden" name="refer_board_id" value="${board.refer_board_id}">
            <div class="form-group">
              <div class="textset">
                <h2 class="h2 textset-tit">공지사항 작성하기</h2>
              </div>
              <div class="form-box">
                <div class="inputset" th-hoverbox="true">

                  <label for="contact-N24-inputset-a-1" class="form-tit h6" data-listener-added_05080d17="true">글
                    제목</label><input id="contact-N24-inputset-a-1" type="text" name="title" id="title"
                                     class="inputset-input form-control" placeholder="제목을 입력하세요." value="${board.title}"
                                     required />
                </div>
              </div>
              <div class="form-box">
                <div class="inputset">
                  <label for="contact-N24-textarea-a-1" class="form-tit h6">내용</label>
                  <textarea id="contact-N24-textarea-a-1" name="content" class="inputset-textarea form-control"
                            placeholder="내용을 입력해주세요." required>${board.content}</textarea>
                  <div class="inputset-langth">
                    <span class="p1 inputset-count">0</span>
                    <span class="p1 inputset-total">/4000</span>
                  </div>
                </div>
              </div>
              <div class="form-btn">
                <button class="btnset btnset-primary" type="submit">저장</button><a
                      href="/files/viewBoard/${board.refer_board_id}" class="btnset cancel-button">취소</a>
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

<%@ include file="../common/footer.jsp" %>
</body>


</html>

