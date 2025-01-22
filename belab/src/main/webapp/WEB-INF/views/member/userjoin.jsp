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
          <div class="mypage-N10" id="aWm5xKrhew">
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
                    <h2 class="h1 textset-tit">회원가입</h2>
                  </div>
                </div>
              </div>
            </div>
          </div>
          <div class="bagic-N55" id="ksm5XKRHgO">
            <div class="contents-container container-md">
              <div class="tabset tabset-solid border-bottom">
              </div>
            </div>
          </div>
          <div class="mypage-N37" id="xxm5yRsU3Q">
            <div class="contents-container container-md">
              <div class="contents-inner">
                <div class="imageset">
                  <img class="imageset-img" src="/images/img_basic_N37_1.png" alt="이미지" />
                </div>
                <div class="form-group">
                  <form action="/member/userjoin" method="post" onsubmit="validateForm(event)">
                    <div class="form-box">
                      <div class="inputset inputset-line">
                        <label for="username" class="form-tit h6">이름 <span>*</span>
                        </label>
                        <input id="username" type="text" name="username" class="inputset-input form-control"
                          placeholder="이름을 입력해주세요." required="" />
                      </div>
                    </div>
                    <div class="form-box">
                      <div class="inputset inputset-line">
                        <label for="email" class="form-tit h6">E-mail <span>*</span>
                        </label>
                        <input id="email" type="email" name="email" class="inputset-input form-control"
                          placeholder="이메일을 입력해주세요." required="" />
                      </div>
                    </div>
                    <div class="form-box">
                      <div class="inputset inputset-line">
                        <label for="password" class="form-tit h6">비밀번호 <span>*</span></label>
                        <input id="password" type="password" name="password" class="inputset-input form-control"
                          placeholder="비밀번호를 입력해주세요." required="" />
                      </div>
                    </div>
                    <div class="form-box">
                      <div class="inputset inputset-line">
                        <label for="confirmPassword" class="form-tit h6"> 비밀번호 확인<span>*</span> </label>
                        <input id="confirmPassword" type="password" name="confirmPassword"
                          class="inputset-input form-control" placeholder="비밀번호를 다시 입력하세요." required="" />
                      </div>
                    </div>
                    <div class="form-box">
                      <div class="inputset inputset-line">
                        <label for="hp" class="form-tit h6">전화번호 <span>*</span>
                        </label>
                        <input id="hp" type="hp" name="hp" class="inputset-input form-control"
                          placeholder="전화번호를 입력해주세요." required="" />
                      </div>
                    </div>
                    <div class="form-box">
                      <legend class="form-tit h6">소속<span>*</span>
                      </legend>
                      <div class="checkset-wrap">
                        <div class="checkset checkset-fill">
                          <input id="belab" name="role" class="checkset-input" type="radio" value="belab" />
                          <label for="belab" class="checkset-label">비이랩</label>
                        </div>
                        <div class="checkset checkset-fill">
                          <input id="user" name="role" class="checkset-input" type="radio" value="user" checked />
                          <label for="user" class="checkset-label">기타 소속</label>
                        </div>
                      </div>
                    </div>
                    <div class="form-box">
                      <div class="inputset">
                      </div>
                    </div>
                    <div class="contents-agree">
                      <div class="checkset checkset-fill">
                        <input id="checkset-mypage-N37-b-1" name="개인정보 수집동의" class="checkset-input" type="checkbox"
                          required="" value="개인정보 수집동의" onchange="toggleSubmitButton()" />
                        <label for="checkset-mypage-N37-b-1" class="checkset-label">개인정보 수집동의</label>
                      </div>
                      <a href="javascript:void(0);" class="btnset btnset-link modalset-open-btn modal-privacy-btn"
                        data-modal-target="modalset-N37-1">보기</a>
                    </div>
                    <div class="form-btn">
                      <button id="submitButton" class="btnset btnset-primary" type="submit" disabled>회원가입</button>
                    </div>
                  </form>
                </div>
              </div>
            </div>
            <div class="modalset modalset-md" data-modal-id="modalset-N37-1">
              <div class="modalset-content">
                <div class="modalset-header">
                  <h2 class="h5 modalset-title">개인정보 수집동의</h2>
                  <button class="modalset-close" data-modal-close="modalset"></button>
                </div>
                <div class="modalset-body">
                  <div class="modalset-textarea">
                    <div class="info-area">
                      <div class="info-group">
                        <strong class="h6">1. 수집하는 개인정보 항목</strong>
                        <div class="info-desc">
                          <p>회사명(이하 ‘회사’라 한다)는 개인정보 보호법 제30조에 따라 정보 주체의 개인정보를 보호하고 이와 관련한 고충을 신속하고 원활하게 처리할 수 있도록 하기 위하여
                            다음과
                            같이 개인정보 처리지침을 수립, 공개합니다.</p>
                          <ul class="info-list">
                            <li class="p1">
                              <em>01. 개인정보의 수집·이용 목적</em>
                            </li>
                            <li class="p1">
                              <p>개인정보는 오직 고객 상담 및 마케팅 용도로만 사용됩니다.</p>
                            </li>
                            <li class="p1">
                              <em>02. 수집항목</em>
                            </li>
                            <li class="p1">
                              <p>회사는 고객상담 및 각종 서비스를 위하여 아래와 같은 최소한의 개인정보를 수집합니다.</p>
                              <p>- 성명, 이메일 주소, 전화번호</p>
                            </li>
                            <li class="p1">
                              <em>03. 개인정보 공유 및 제공</em>
                            </li>
                            <li class="p1">
                              <p>000회사에서 수집한 개인정보는 기타 법에 의해 요구된다고 선의로 판단되는 경우에(예, 관련 법령에 의거 적법한 절차에 의한 정부/수사기관의 요청이 있는
                                경우
                                등)외에는 외부에 공개되지 않습니다.</p>
                            </li>
                            <li class="p1">
                              <em>04. 개인정보 파기</em>
                            </li>
                            <li class="p1">
                              <p>이용자의 개인정보는 원칙적으로 개인정보의 수집 및 이용목적이 달성되면 지체 없이 파기합니다.
                              </p>
                            </li>
                            <li class="p1">
                              <em>05. 개인정보관리책임자 및 담당자의 연락처</em>
                            </li>
                            <li class="p1">
                              <p>개인정보 관리책임자 전화: <a href="tel:02-000-0000">02-000-0000</a>, 메일: <a
                                  href="mailto:test@temha.io">test@temha.io</a>
                              </p>
                            </li>
                          </ul>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
                <div class="modalset-footer">
                  <button class="btnset btnset-primary" data-modal-close="modalset">확인</button>
                  <button class="btnset btnset-line-light" data-modal-close="modalset">취소</button>
                </div>
              </div>
            </div>
          </div>
        </div>
        <div class="th-layout-stickyright"></div>
        <div class="th-layout-sideright"></div>
        <!-- 커스텀 팝업 -->
        <div class="mypage-N66">
          <div class="popup-overlay" onclick="closePopup()"></div>
          <div class="custom-popup">
            <h4>알림</h4>
            <p></p>
            <button class="btnset btnset-primary" onclick="closePopup()">확인</button>
          </div>
        </div>

      </main>
      <%@ include file="../common/footer.jsp" %>

      <script src="/js/setting.js"></script>
      <script src="/js/plugin.js"></script>
      <script src="/js/templatehouse.js"></script>
      <script src="/js/style.js"></script>
              <script>
          function toggleSubmitButton() {
            const agreeCheckbox = document.getElementById('checkset-mypage-N37-b-1');
            const username = document.getElementById('username').value.trim();
            const email = document.getElementById('email').value.trim();
            const password = document.getElementById('password').value.trim();
            const confirmPassword = document.getElementById('confirmPassword').value.trim();
            const phone = document.getElementById('hp').value.trim();
            const role = document.querySelector('input[name="role"]:checked');
        
            const submitButton = document.getElementById('submitButton');
        
            // 모든 필수 입력 필드가 채워지고, 체크박스가 체크되었을 경우 버튼 활성화
            if (agreeCheckbox.checked && username && email && password && confirmPassword && phone && role) {
              submitButton.disabled = false;
            } else {
              submitButton.disabled = true;
            }
          }
        
          function validateForm(event) {
            const password = document.getElementById("password").value;
            const confirmPassword = document.getElementById("confirmPassword").value;
        
            if (password !== confirmPassword) {
              event.preventDefault(); // 폼 제출 방지
              showPopup("비밀번호가 일치하지 않습니다. 다시 확인해주세요.");
            }
          }
        
          document.querySelectorAll('input').forEach(input => {
            input.addEventListener('input', toggleSubmitButton);
          });
        
          document.querySelectorAll('input[type="radio"]').forEach(input => {
            input.addEventListener('change', toggleSubmitButton);
          });

          function showPopup(message) {
            const popup = document.querySelector('.mypage-N66 .custom-popup');
            const overlay = document.querySelector('.mypage-N66 .popup-overlay');
            popup.querySelector('p').innerText = message;
            popup.style.display = 'block';
            overlay.style.display = 'block';
          }

          function closePopup() {
            const popup = document.querySelector('.custom-popup');
            const overlay = document.querySelector('.popup-overlay');
            popup.style.display = 'none';
            overlay.style.display = 'none';
          }

          function validateForm(event) {
            const password = document.getElementById("password").value;
            const confirmPassword = document.getElementById("confirmPassword").value;

            if (password !== confirmPassword) {
              event.preventDefault(); // 폼 제출 방지
              showPopup("비밀번호가 일치하지 않습니다. 다시 확인해주세요.");
            }
          }

          window.onload = function () {
            const errorMessage = '<%= request.getAttribute("error") != null ? request.getAttribute("error") : "" %>';
            if (errorMessage) {
              showPopup(errorMessage);
            }
          };


        </script>

    </body>

    </html>