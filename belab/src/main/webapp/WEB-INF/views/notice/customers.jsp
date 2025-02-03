<%@ page language="java" contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" %>
  <%@ include file="../common/header.jsp" %>

    <!DOCTYPE html>
    <html lang="en">

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
      <link rel="stylesheet" href="/css/contact.css" />
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
                            <h2 class="h1 textset-tit">고객 문의</h2>
                          </div>
                        </div>
                      </div>
                    </div>
                  </div>
              <div class="basic-N55" id="okM6043mWX">
                <div class="contents-container container-md">
                  <div class="tabset tabset-solid border-bottom">
                  </div>
                </div>
              </div>
        
              <div class="contact-N37" id="LyM60E124V">
                <div class="contents-container container-md">
                  <div class="contents-inner">
                    <div class="imageset">
                      <img class="imageset-img" src="/images/img_basic_N37_1.png" alt="이미지" />
                    </div>
                    <div class="form-group">
                      <form action="/notice/sendInquiryEmail" method="post">
                        <div class="form-box">
                          <legend class="form-tit h6"><span>
                              <font color="#111111">유형</font>*
                            </span>
                          </legend>
                          <div class="selectset">
                            <div class="selectset-area">
                              <!-- 현재 선택된 값을 표시하는 버튼 -->
                              <button class="selectset-toggle btn" type="button" id="currentSelection">문의</button>
                              <!-- 옵션 목록 -->
                              <ul class="selectset-list" id="dropdownList" style="display: none;">
                                <li class="selectset-item">
                                  <button class="selectset-link btn" type="button" data-value="불만">문의</button>
                                </li>
                                <li class="selectset-item">
                                  <button class="selectset-link btn" type="button" data-value="문의">불만</button>
                                </li>
                                <li class="selectset-item">
                                  <button class="selectset-link btn" type="button" data-value="기타">기타</button>
                                </li>
                              </ul>
                            </div>
                          </div>
                          <!-- 숨겨진 input 필드 -->
                          <input type="hidden" name="type" id="selectedType" value="불만">
                        </div>
                        <div class="form-box">
                          <div class="inputset inputset-line">
                            <label for="contact-N37-inputset-a-1" class="form-tit h6">이름 <span>*</span>
                            </label>
                            <input id="contact-N37-inputset-a-1" type="text" name="name" class="inputset-input form-control" placeholder="이름을 입력해주세요." required="" />
                          </div>
                        </div>
                        <div class="form-box">
                          <div class="inputset inputset-line">
                            <label for="contact-N37-inputset-a-2" class="form-tit h6">E-mail <span>*</span>
                            </label>
                            <input id="contact-N37-inputset-a-2" type="email" name="email" class="inputset-input form-control" placeholder="이메일을 입력해주세요." required="" />
                          </div>
                        </div>
                        <div class="form-box">
                          <div class="inputset inputset-line">
                            <label for="contact-N37-inputset-a-2" class="form-tit h6">전화번호 <span>*</span>
                            </label>
                            <input id="contact-N37-inputset-a-2" type="tel" name="phone" class="inputset-input form-control" placeholder="전화번호를 입력해주세요." required="" />
                          </div>
                        </div>
                        <div class="form-box">
                          <div class="inputset inputset-line">
                            <label for="contact-N37-inputset-a-1" class="form-tit h6">제목 <span>*</span>
                            </label>
                            <input id="contact-N37-inputset-a-1" type="text" name="subject" class="inputset-input form-control" placeholder="제목을 입력하세요." required="" />
                          </div>
                        </div>
                        <div class="form-box">
                          <div class="inputset">
                            <label for="contact-N37-textarea-a-1" class="form-tit h6">문의 내용 <span>*</span>
                            </label>
                            <textarea id="contact-N37-textarea-a-1" name="content" class="inputset-textarea form-control" placeholder="문의 내용을 입력해주세요." required=""></textarea>
                          </div>
                        </div>
                        <div class="form-btn">
                          <button class="btnset btnset-primary" type="submit">문의하기</button>
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
                              <p>회사명(이하 ‘회사’라 한다)는 개인정보 보호법 제30조에 따라 정보 주체의 개인정보를 보호하고 이와 관련한 고충을 신속하고 원활하게 처리할 수 있도록 하기 위하여 다음과 같이 개인정보 처리지침을 수립, 공개합니다.</p>
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
                                  <p>000회사에서 수집한 개인정보는 기타 법에 의해 요구된다고 선의로 판단되는 경우에(예, 관련 법령에 의거 적법한 절차에 의한 정부/수사기관의 요청이 있는 경우 등)외에는 외부에 공개되지 않습니다.</p>
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
                                  <p>개인정보 관리책임자 전화: <a href="tel:02-000-0000">02-000-0000</a>, 메일: <a href="mailto:test@temha.io">test@temha.io</a>
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
                <div class="modalset modalset-xs modalset-dark modalset-confirm modalset-success" data-modal-id="modalset-N37-2">
                  <div class="modalset-content">
                    <button class="modalset-close" data-modal-close="modalset"></button>
                    <div class="modalset-body">
                      <div class="modalset-state modalset-success"></div>
                      <div class="modalset-textarea">
                        <p class="modalset-text">
                          성공적으로 메시지가 접수 되었으며,
                          <br />
                          빠른시일내에 연락드리겠습니다.
                          <br />
                          감사합니다.
                        </p>
                        <button class="btnset btnset-sm btnset-line-light" data-modal-close="modalset">확인</button>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
        
            </div>
            <div class="th-layout-stickyright"></div>
            <div class="th-layout-sideright"></div>
          </main>
      <%@ include file="../common/footer.jsp" %>
    </body>
    <script src="/js/setting.js"></script>
    <script src="/js/plugin.js"></script>
    <script src="/js/templatehouse.js"></script>
    <script src="/js/style.js"></script>
        <script>
        document.addEventListener('DOMContentLoaded', () => {
            const toggleButton = document.getElementById('currentSelection'); // 현재 선택된 값 표시 버튼
            const dropdownList = document.getElementById('dropdownList'); // 드롭다운 리스트
            const listItems = document.querySelectorAll('.selectset-link'); // 드롭다운 옵션들
            const hiddenInput = document.getElementById('selectedType'); // 숨겨진 input 필드
          
            // 드롭다운 열기/닫기
            toggleButton.addEventListener('click', () => {
              const isDropdownVisible = dropdownList.style.display === 'block';
              dropdownList.style.display = isDropdownVisible ? 'none' : 'block';
            });
          
            // 옵션 선택하기
            listItems.forEach(item => {
              item.addEventListener('click', (event) => {
                const selectedValue = item.getAttribute('data-value'); // 선택된 값
                const selectedText = item.textContent; // 선택된 텍스트
          
                // 버튼에 선택된 값 표시
                toggleButton.textContent = selectedText;
          
                // 숨겨진 input 필드 값 업데이트
                hiddenInput.value = selectedValue;
          
                // 드롭다운 닫기
                dropdownList.style.display = 'none';
              });
            });
          
            // 드롭다운 외부 클릭 시 닫기
            document.addEventListener('click', (event) => {
              if (!event.target.closest('.selectset')) {
                dropdownList.style.display = 'none';
              }
            });
          });
          
    </script>
    </html>