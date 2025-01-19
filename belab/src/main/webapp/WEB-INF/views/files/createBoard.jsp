<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="../common/header.jsp" %>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml" lang="ko">

<head>
    <meta charset="UTF-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <meta name="format-detection" content="telephone=no"/>
    <link rel="stylesheet" href="/css/setting.css"/>
    <link rel="stylesheet" href="/css/plugin.css"/>
    <link rel="stylesheet" href="/css/templatehouse.css"/>
    <link rel="stylesheet" href="/css/style.css"/>
    <style>
        .table th.title-column,
        .table td.title-column {
            width: 60%;
        }

        .file-upload {
            margin-top: 20px;
        }

        .file-upload input[type="file"] {
            display: block;
            margin-bottom: 10px;
        }

        .uploaded-file-list {
            margin-top: 10px;
        }

        .uploaded-file-item {
            display: flex;
            align-items: center;
            margin-bottom: 5px;
        }

        .uploaded-file-item span {
            margin-right: 10px;
        }

        .uploaded-file-item .btn {
            margin-left: 5px;
        }
    </style>
    <script>
        function addFileInput() {
            const fileInputContainer = document.getElementById('fileInputs');
            const fileInputDiv = document.createElement('div');
            fileInputDiv.className = 'uploaded-file-item';

            const input = document.createElement('input');
            input.type = 'file';
            input.name = 'files[]';
            input.className = 'form-control';

            const removeBtn = document.createElement('button');
            removeBtn.type = 'button';
            removeBtn.className = 'btn btn-delete';
            removeBtn.textContent = '삭제';
            removeBtn.onclick = () => fileInputContainer.removeChild(fileInputDiv);

            fileInputDiv.appendChild(input);
            fileInputDiv.appendChild(removeBtn);
            fileInputContainer.appendChild(fileInputDiv);
        }
    </script>
</head>

<body>
<main class="th-layout-main">
    <div class="th-layout-sideleft"></div>
    <div class="th-layout-stickyleft"></div>
    <div class="th-layout-content">
        <div class="basic-N10" id="ytM5Z21bIr">
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
                            <h2 class="h1 textset-tit">공지사항</h2>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="contact-N24" id="uFM5Z21BnK">
            <div class="contents-container container-md">
                <div class="contents-inner">
                    <form action="/files/createBoard" method="post" enctype="multipart/form-data">
                        <div class="form-group">
                            <div class="textset">
                                <h2 class="h2 textset-tit">공지사항 작성하기</h2>
                            </div>
                            <div class="form-box">
                                <div class="inputset">
                                    <label for="title" class="form-tit h6">글 제목</label>
                                    <input id="title" type="text" name="title" class="inputset-input form-control"
                                           placeholder="제목을 입력하세요" required/>
                                </div>
                            </div>
                            <div class="form-box">
                                <div class="inputset">
                                    <label for="content" class="form-tit h6">내용</label>
                                    <textarea id="content" name="content" class="inputset-textarea form-control"
                                              placeholder="내용을 입력해주세요." required></textarea>
                                </div>
                            </div>
                            <div class="form-box">
                                <label class="form-tit h6">첨부파일</label>
                                <div id="fileInputs">
                                    <!-- 초기 파일 입력 필드 -->
                                    <div class="uploaded-file-item">
                                        <input type="file" name="files[]" class="form-control"/>
                                        <button type="button" class="btn btn-delete" onclick="this.parentElement.remove()">삭제</button>
                                    </div>
                                </div>
                                <button type="button" class="btn btn-primary" onclick="addFileInput()">파일 추가</button>
                            </div>

                            <div class="form-btn">
                                <button class="btnset btnset-primary" type="submit">저장</button>
                                <a href="/files/boardList" class="btnset cancel-button">취소</a>
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
