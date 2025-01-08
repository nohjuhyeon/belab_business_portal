<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<head>
<style>
    /* 푸터 스타일 */
    footer {
        background-color: #333; /* 배경색: 어두운 회색 */
        color: #fff; /* 텍스트 색상: 흰색 */
        padding: 20px;
        font-size: 14px;
    }

    .footer-container {
        display: flex;
        flex-wrap: wrap; /* 반응형: 줄바꿈 가능 */
        justify-content: space-between;
        align-items: center;
        max-width: 1200px;
        margin: 0 auto;
    }

    .footer-section {
        flex: 1 1 50px; /* 최소 너비 300px, 공간 나눔 */
        margin: 10px;
    }

    .footer-section p {
        margin: 5px 0;
        line-height: 1.5;
    }

    .copyright {
        text-align: center;
        margin-top: 10px;
        font-size: 12px;
        color: #ccc; /* 저작권 텍스트 색상 */
    }

    /* 반응형 디자인 */
    @media (max-width: 768px) {
        .footer-container {
            flex-direction: column; /* 모바일에서는 세로 정렬 */
            text-align: center;
        }

        .footer-section {
            margin: 10px 0;
        }
    }
</style>
</head>
<footer>

<div class="footer-container">
    <!-- 회사 정보 -->
    <div class="footer-section">
        <p><strong>상호:</strong> 주식회사 비이랩</p>
        <p><strong>개인정보책임자:</strong> 김성걸</p>
        <p><strong>이메일:</strong> sk.kim@belab.co.kr</p>
        <p><strong>소재지:</strong> (06349) 서울 강남구 광평로 295 사이룩스오피스텔 동관동1714호</p>
    </div>

    <!-- 연락처 -->
    <div class="footer-section">
        <p><strong>사업자등록번호:</strong> 457-87-02772</p>
        <p><strong>Tel:</strong> 02-451-0902</p>
        <p><strong>팩스:</strong> 02-451-0905</p>
    </div>

    <!-- 저작권 -->
    <div class="footer-section">
        <p>Copyright © Belab. All Rights Reserved.</p>
    </div>
</div>

<!-- 저작권 문구 -->
<div class="copyright">
    Copyright @ Belab. All Rights Reserved.
</div>
</footer>
