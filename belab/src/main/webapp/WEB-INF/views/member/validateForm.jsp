<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="../common/header.jsp" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <title>비밀번호 확인</title>
    <style>
        .header-blank {
            height: 270px;
        }

        .header-section {
            background-image: url('../images/universe2.jpg');
            background-size: 100% auto;
            background-position: top;
            background-repeat: no-repeat;
            color: #fff;
            text-align: center;
            padding: 20px 0;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
            height: 375px;
        }

        .header-section h2 {
            font-size: 36px;
            margin: 0;
            font-weight: bold;
        }

        .verify-body {
            display: flex;
            justify-content: center;
            align-items: center;
            height: calc(50vh);
            background-color: #f4f4f4;
            margin: 0;
            font-family: Arial, sans-serif;
        }

        .verify-container {
            width: 100%;
            max-width: 600px;
            background: #fff;
            padding: 40px;
            border-radius: 10px;
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
        }

        .verify-container h3 {
            text-align: center;
            margin-bottom: 30px;
            font-size: 24px;
            color: #333;
        }

        .verify-container .form-group {
            margin-bottom: 20px;
        }

        .verify-container label {
            font-weight: bold;
            margin-bottom: 5px;
            display: block;
            color: #555;
        }

        .verify-container input[type="password"] {
            width: 100%;
            padding: 12px;
            border: 1px solid #ddd;
            border-radius: 5px;
            font-size: 16px;
        }

        .verify-container button {
            width: 100%;
            padding: 14px;
            background-color: #eae0d5;
            border: none;
            border-radius: 5px;
            font-size: 18px;
            font-weight: bold;
            color: #6a1b1b;
            cursor: pointer;
            box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
            transition: background-color 0.3s ease, color 0.3s ease;
        }

        .verify-container button:hover {
            background-color: #6a1b1b;
            color: #fff;
        }

        .verify-container .error-message {
            color: #d9534f;
            font-size: 14px;
            margin-top: 10px;
            text-align: center;
        }

        @media (max-width: 992px) {
            .header-section h2 {
                font-size: 28px;
            }

            .verify-container {
                padding: 30px;
            }

            .verify-container h3 {
                font-size: 20px;
            }

            .verify-container input[type="password"] {
                font-size: 14px;
                padding: 10px;
            }

            .verify-container button {
                font-size: 16px;
                padding: 12px;
            }
        }

        @media (max-width: 480px) {
            .header-section h2 {
                font-size: 24px;
            }

            .verify-container {
                padding: 20px;
            }

            .verify-container h3 {
                font-size: 18px;
            }

            .verify-container input[type="password"] {
                font-size: 12px;
                padding: 8px;
            }

            .verify-container button {
                font-size: 14px;
                padding: 10px;
            }
        }
    </style>
</head>

<body>
<div class="header-section">
    <div class="header-blank"></div>
    <h2>비밀번호 확인</h2>
</div>

<div class="verify-body">
    <div class="verify-container">
        <h3>비밀번호를 입력하세요</h3>
        <form id="validatePasswordForm">
            <div class="form-group">
                <label for="password">비밀번호</label>
                <input type="password" id="password" name="password" placeholder="비밀번호를 입력하세요" required>
            </div>
            <button type="submit">확인</button>
            <div id="error-message" class="error-message" style="display: none;"></div>
        </form>
    </div>
</div>

<script>
    document.getElementById("validatePasswordForm").addEventListener("submit", function(event) {
        event.preventDefault();

        const password = document.getElementById("password").value;

        fetch("/member/validatePassword", {
            method: "POST",
            headers: {
                "Content-Type": "application/x-www-form-urlencoded"
            },
            body: "password=" + encodeURIComponent(password)
        })
            .then(response => response.text())
            .then(data => {
                if (data === "valid") {
                    window.location.href = "/member/modifyForm";  // 비밀번호가 올바르면 수정 페이지로 리다이렉트
                } else {
                    document.getElementById("error-message").textContent = "비밀번호가 올바르지 않습니다.";
                    document.getElementById("error-message").style.display = "block";
                }
            })
            .catch(error => console.error("Error:", error));
    });
</script>
</body>

<%@ include file="../common/footer.jsp" %>
</html>
