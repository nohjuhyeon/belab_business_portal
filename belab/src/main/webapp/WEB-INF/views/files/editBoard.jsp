<%@ page contentType="text/html;charset=UTF-8" language="java" %>
  <%@ include file="../common/header.jsp" %>
    <!DOCTYPE html>
    <html xmlns="http://www.w3.org/1999/xhtml" lang="ko">

    <head>
      <meta charset="UTF-8" />
      <meta http-equiv="X-UA-Compatible" content="IE=edge" />
      <meta name="viewport" content="width=device-width, initial-scale=1.0" />
      <meta name="format-detection" content="telephone=no" />
      <link rel="stylesheet" href="/css/setting.css" />
      <link rel="stylesheet" href="/css/plugin.css" />
      <link rel="stylesheet" href="/css/templatehouse.css" />
      <link rel="stylesheet" href="/css/style.css" />
      <style>
        .uploaded-file-item-list {
          background-color: #ffffff;
          /* 흰색 배경 */
          border: 1px solid #ddd;
          /* 테두리 추가 */
          padding: 10px;
          /* 내부 여백 */
          margin-bottom: 5px;
          /* 항목 간 간격 */
          border-radius: 5px;
          /* 모서리 둥글게 */
          box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
          /* 약간의 그림자 */
        }

        .uploaded-file-item {
          display: flex;
          align-items: center;
          justify-content: space-between;
          margin-bottom: 16px;

        }

        .uploaded-file-item span {
          font-size: 14px;
          color: #333;
          /* 텍스트 색상 */
          flex: 1;
          /* 파일 이름이 버튼을 밀어냄 */
          word-break: break-word;
          /* 긴 파일 이름 줄바꿈 */
        }

        .uploaded-file-item .filebtn {
          font-size: 14px;
          margin-left: 10px;
          margin-right: 10px;
          /* 버튼 간 간격 */
          border: none;
          padding: 0px 0px;
          border-radius: 3px;
          cursor: pointer;
          text-decoration: none;
          height: fit-content;
        }
      </style>
      <script>
        function handleFileChange(input) {
          const file = input.files[0];
          if (file) {
            // 파일 정보를 표시할 컨테이너
            const uploadedFilesContainer = document.getElementById('uploadedFiles');

            // 새로운 파일 정보를 표시할 요소 생성
            const fileItemDiv = document.createElement('div');
            fileItemDiv.className = 'uploaded-file-item';

            // 파일 이름 표시
            const fileNameSpan = document.createElement('span');
            fileNameSpan.textContent = file.name;

            // 삭제 버튼
            const removeBtn = document.createElement('a');
            removeBtn.type = 'button';
            removeBtn.className = 'filebtn';
            removeBtn.textContent = '삭제';
            removeBtn.onclick = () => {
              fileItemDiv.remove();
              toggleUploadedFilesVisibility();
            };

            // 기존 파일 입력 필드를 숨겨진 상태로 복제하여 파일 데이터 전송
            const hiddenFileInput = document.createElement('input');
            hiddenFileInput.type = 'file';
            hiddenFileInput.name = 'files[]';
            hiddenFileInput.style.display = 'none';

            // 클론된 파일 데이터를 숨겨진 필드에 복사
            const dataTransfer = new DataTransfer();
            dataTransfer.items.add(file);
            hiddenFileInput.files = dataTransfer.files;

            // 구성 요소 추가
            fileItemDiv.appendChild(fileNameSpan);
            fileItemDiv.appendChild(removeBtn);
            fileItemDiv.appendChild(hiddenFileInput); // 숨겨진 파일 입력 필드 추가
            uploadedFilesContainer.appendChild(fileItemDiv);

            // 입력 필드를 초기화하여 다시 파일을 선택할 수 있도록 함
            input.value = '';

            // 파일 목록 표시 상태 업데이트
            toggleUploadedFilesVisibility();
          }
        }

        function toggleUploadedFilesVisibility() {
          const uploadedFilesContainer = document.getElementById('uploadedFiles');
          if (uploadedFilesContainer.children.length === 0) {
            uploadedFilesContainer.style.display = 'none';
          } else {
            uploadedFilesContainer.style.display = 'block';
          }
        }

        // 초기 상태에서 파일 목록 숨기기
        document.addEventListener('DOMContentLoaded', () => {
          toggleUploadedFilesVisibility();
        });

        function removeUploadedFile(fileId, element) {
          // 삭제된 파일 ID를 숨겨진 필드로 추가
          const hiddenDeleteInput = document.createElement('input');
          hiddenDeleteInput.type = 'hidden';
          hiddenDeleteInput.name = 'filesToDelete[]';
          hiddenDeleteInput.value = fileId;

          // 폼에 숨겨진 필드 추가
          const form = document.querySelector('form');
          form.appendChild(hiddenDeleteInput);

          // 화면에서 파일 항목 제거
          element.parentElement.remove();
          toggleUploadedFilesVisibility();
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
                    <h2 class="h1 textset-tit">공지사항 수정</h2>
                  </div>
                </div>
              </div>
            </div>
          </div>
          <div class="contact-N24" id="uFM5Z21BnK">
            <div class="contents-container container-md">
              <div class="contents-inner">
                <form action="/files/editBoard" method="post" enctype="multipart/form-data">
                  <input type="hidden" name="refer_board_id" value="${board.refer_board_id}">
                  <div class="form-group">
                    <div class="textset">
                      <h2 class="h2 textset-tit">공지사항 수정하기</h2>
                    </div>
                    <div class="form-box">
                      <div class="inputset">
                        <label for="title" class="form-tit h6">글 제목</label>
                        <input id="title" type="text" name="title" class="inputset-input form-control"
                          placeholder="제목을 입력하세요." value="${board.title}" required />
                      </div>
                    </div>
                    <div class="form-box">
                      <div class="inputset">
                        <label for="content" class="form-tit h6">내용</label>
                        <textarea id="content" name="content" class="inputset-textarea form-control"
                          placeholder="내용을 입력해주세요." required>${board.content}</textarea>
                      </div>
                    </div>
                    <div class="form-box">
                      <label class="form-tit h6">첨부파일</label>
                      <div id="fileInputs">
                        <!-- 파일 입력 필드 -->
                        <input type="file" name="files[]" class="form-control" onchange="handleFileChange(this)" />
                      </div>
                      <!-- 업로드된 파일 목록 -->
                      <div id="uploadedFiles" class="uploaded-file-item-list" style="display: none;">
                        <c:forEach var="file" items="${attachedFiles}">
                          <div class="uploaded-file-item">
                            <span>${file.file_name}</span>
                            <a type="button" class="filebtn"
                              onclick="removeUploadedFile('${file.file_id}', this)">삭제</a>
                            <input type="file" name="files[]" style="display:none;">
                          </div>
                        </c:forEach>
                      </div>
                    </div>
                    <div class="form-btn">
                      <button class="btnset btnset-primary" type="submit">저장</button>
                      <a href="/files/viewBoard/${board.refer_board_id}" class="btnset cancel-button">취소</a>
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