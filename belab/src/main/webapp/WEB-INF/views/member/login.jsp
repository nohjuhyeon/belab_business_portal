<%@ page contentType="text/html;charset=UTF-8" language="java" %>
  <%@ include file="../common/header.jsp" %>
    <!DOCTYPE html>
    <html lang="en">

    <head>
      <meta charset="UTF-8">
      <title>로그인</title>
      <style>
        .header-blank {
          height: 270px;
        }

        .header-section {
          background-color: rgb(124, 124, 124);
          /* 남색 배경 + 투명도 */
          color: #fff;
          text-align: center;
          padding: 20px 0;
          top: 0;
          left: 0;
          width: 100%;
          box-shadow: 0 2px 5px rgba(0, 0, 0, 0.2);
          padding-top: 0px;
          padding-bottom: 0px;
          height: 375px;
        }

        .login-body {
          font-family: Arial, sans-serif;
          display: flex;
          justify-content: center;
          align-items: center;
          height: 50vh;
          margin: 0;
          background-color: #f9f9f9;
        }

        .login-container {
          width: 1200px;
          height : 400px;
          background: #fff;
          padding: 20px;
          border-radius: 10px;
          box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
        }

        .login-container .form-group {
          display: flex;
          align-items: center;
          margin-bottom: 15px;
        }

        .login-container label {
          font-weight: bold;
          margin-right: 10px;
          color: #ff9800;
          width: 80px;
        }

        .login-container input[type="email"],
        .login-container input[type="password"] {
          flex: 1;
          padding: 10px;
          border: 1px solid #ddd;
          border-radius: 5px;
          font-size: 14px;
        }

        .login-container button {
          margin-left: 10px;
          padding: 10px 20px;
          background-color: #ffcccb;
          border: none;
          border-radius: 5px;
          font-size: 16px;
          font-weight: bold;
          color: #000;
          cursor: pointer;
        }

        .login-container button:hover {
          background-color: #ffa6a3;
        }

        .login-container .links {
          display: flex;
          justify-content: space-between;
          margin-top: 10px;
        }

        .login-container .links a {
          font-size: 12px;
          color: #007bff;
          text-decoration: none;
        }

        .login-container .links a:hover {
          text-decoration: underline;
        }
      </style>
    </head>
    <div class="header-section">
      <div class="header-blank"></div>
      <h2>Login</h2>

    </div>



    <div class="login-body">
      <div class="login-container">
        <form action="/member/login" method="post">
          <!-- 아이디 -->
          <div class="row">
            <div class="col-8">
              <div class="form-group">
                <label for="email">아이디</label>
                <input type="email" id="email" name="email" placeholder="example@example.com" required />
              </div>

              <!-- 비밀번호 -->
              <div class="form-group">
                <label for="password">비밀번호</label>
                <input type="password" id="password" name="password" placeholder="********" required />
                <!-- 로그인 버튼 -->
              </div>
            </div>

            <div class="col-4">
              <button type="submit">login</button>
            </div>
          </div>
          <!-- 링크 -->
          <div class="links">
            <a href="/find-id-password">아이디/비밀번호 찾기</a>
            <a href="/register">회원가입</a>
          </div>
        </form>
      </div>
    </div>
    </body>

    <%@ include file="../common/footer.jsp" %>

    </html>