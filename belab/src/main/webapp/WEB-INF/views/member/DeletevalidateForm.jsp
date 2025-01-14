<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="../common/header.jsp" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <title>회원 탈퇴</title>
    <style>
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
        .header-blank {
            height: 270px;
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
        /* Popup Overlay */
        .popup-overlay {
            position: fixed;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            background-color: rgba(0, 0, 0, 0.6);
            display: flex;
            justify-content: center;
            align-items: center;
            z-index: 1000;
            display: none;
        }

        /* Popup Box */
        .popup {
            background: #ffffff;
            padding: 30px;
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
            text-align: center;
            width: 90%;
            max-width: 400px;
        }

        .popup h3 {
            margin-bottom: 20px;
            font-size: 22px;
            color: #333;
        }

        .popup p {
            font-size: 16px;
            color: #666;
            margin-bottom: 30px;
        }

        .popup button {
            padding: 12px 20px;
            background-color: #6a1b1b;
            color: #fff;
            border: none;
            border-radius: 5px;
            font-size: 16px;
            cursor: pointer;
            margin: 0 10px;
            transition: background-color 0.3s ease;
        }

        .popup button:hover {
            background-color: #eae0d5;
            color: #6a1b1b;
        }

        .popup .cancel-button {
            background-color: #ccc;
        }

        .popup .cancel-button:hover {
            background-color: #bbb;
        }
    </style>
</head>

<body>
    <div class="header-section">
        <div class="header-blank"></div>
        <h2>회원 탈퇴</h2>
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

    <!-- 팝업 -->
    <div id="popup-overlay" class="popup-overlay">
        <div class="popup" id="popup-confirm-delete">
            <h3>정말 회원을 삭제하시겠습니까?</h3>
            <p>이 작업은 되돌릴 수 없습니다.</p>
            <button id="confirm-delete-button">삭제</button>
            <button class="cancel-button" id="cancel-delete-button">취소</button>
        </div>

        <div class="popup" id="popup-delete-success" style="display: none;">
            <h3>회원이 삭제되었습니다.</h3>
            <p>이용해 주셔서 감사합니다.</p>
            <button id="close-success-button">닫기</button>
        </div>
    </div>

    <script>
        const popupOverlay = document.getElementById("popup-overlay");
        const confirmDeletePopup = document.getElementById("popup-confirm-delete");
        const deleteSuccessPopup = document.getElementById("popup-delete-success");
        const confirmDeleteButton = document.getElementById("confirm-delete-button");
        const cancelDeleteButton = document.getElementById("cancel-delete-button");
        const closeSuccessButton = document.getElementById("close-success-button");

        document.getElementById("validatePasswordForm").addEventListener("submit", function (event) {
            event.preventDefault();

            const password = document.getElementById("password").value;

            // 비밀번호 확인 요청
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
                        // 팝업 표시
                        popupOverlay.style.display = "flex";
                        confirmDeletePopup.style.display = "block";
                    } else {
                        document.getElementById("error-message").textContent = "비밀번호가 올바르지 않습니다.";
                        document.getElementById("error-message").style.display = "block";
                    }
                })
                .catch(error => {
                    console.error("Error:", error);
                    alert("서버 오류가 발생했습니다. 다시 시도해주세요.");
                });
        });

        confirmDeleteButton.addEventListener("click", function () {
            // 삭제 요청
            fetch("/member/delete", {
                method: "POST",
                headers: {
                    "Content-Type": "application/x-www-form-urlencoded"
                }
            })
                .then(response => response.json())
                .then(data => {
                    if (data.status === "success") {
                        confirmDeletePopup.style.display = "none";
                        deleteSuccessPopup.style.display = "block";
                    } else {
                        alert("삭제 과정에서 오류가 발생했습니다. 다시 시도해주세요.");
                    }
                })
                .catch(error => {
                    console.error("Error:", error);
                    alert("삭제 과정에서 오류가 발생했습니다. 다시 시도해주세요.");
                });
        });

        cancelDeleteButton.addEventListener("click", function () {
            popupOverlay.style.display = "none";
        });

        closeSuccessButton.addEventListener("click", function () {
            popupOverlay.style.display = "none";
            window.location.href = "/";
        });
    </script>
</body>

<%@ include file="../common/footer.jsp" %>
</html>