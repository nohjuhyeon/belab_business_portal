<%--
  Created by IntelliJ IDEA.
  User: ksk07
  Date: 25. 1. 17.
  Time: 오후 12:54
  To change this template use File | Settings | File Templates.
--%>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="../common/header.jsp" %>
<html>
<head>
    <style>
        /* 기본 설정 */
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f8f9fa;
            color: #333;
        }

        .container {
            width: 600px;
            margin: 50px auto;
            padding: 20px;
            background: #fff;
            border-radius: 8px;
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
        }

        /* 제목 스타일 */
        h1 {
            text-align: center;
            font-size: 24px;
            margin-bottom: 20px;
            color: #007bff;
        }

        /* 입력 폼 스타일 */
        form {
            display: flex;
            flex-direction: column;
            gap: 15px;
        }

        label {
            font-size: 14px;
            margin-bottom: 5px;
            font-weight: bold;
        }

        input[type="text"],
        input[type="email"],
        textarea,
        select {
            width: 100%;
            padding: 10px;
            font-size: 14px;
            border: 1px solid #ced4da;
            border-radius: 4px;
            box-sizing: border-box;
        }

        textarea {
            height: 150px;
            resize: none;
        }

        input[type="text"]:focus,
        input[type="email"]:focus,
        textarea:focus,
        select:focus {
            border-color: #80bdff;
            outline: none;
        }

        /* 전화번호 및 이메일 스타일 */
        .phone-email-group {
            display: flex;
            gap: 10px;
        }

        input[type="text"].short {
            flex: 1;
        }

        select.short {
            flex: 1;
        }

        /* 버튼 스타일 */
        button {
            width: 100%;
            padding: 10px;
            font-size: 16px;
            font-weight: bold;
            color: #fff;
            background-color: #007bff;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            transition: background-color 0.3s ease;
        }

        button:hover {
            background-color: #0056b3;
        }

    </style>
    <title>Title</title>
</head>
<body>
<div class="container">
    <h1>고객문의</h1>
    <form action="/contact/sendInquiryEmail" method="post">
        <label for="type">유형</label>
        <select id="type" name="type">
            <option value="불만">문의</option>
            <option value="문의">불만</option>
            <option value="기타">기타</option>
        </select>

        <label for="name">이름</label>
        <input type="text" id="name" name="name" placeholder="이름을 입력하세요." required>

        <label for="phone">전화번호</label>
        <input type="text" id="phone" name="phone" placeholder="숫자만 입력하세요." required>

        <label for="email">Email</label>
        <input type="email" id="email" name="email" placeholder="이메일 (예: user@gmail.com)" required>
        <label for="subject">제목</label>
        <input type="text" id="subject" name="subject" placeholder="제목을 입력하세요." required>

        <label for="content">내용</label>
        <textarea id="content" name="content" placeholder="내용을 입력하세요." required></textarea>

        <button type="submit">제출하기</button>
    </form>

    <script>
        document.querySelector('form').addEventListener('submit', function (event) {
            const emailId = document.getElementById('email').value.trim();
            if (emailId && emailDomain) {
                document.getElementById('fullEmail').value = fullEmail;
            } else {
                alert('이메일 ID와 도메인을 모두 입력해주세요.');
                event.preventDefault();
            }
        });
    </script>
    <%@ include file="../common/footer.jsp" %>
</body>
</html>
