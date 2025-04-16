<%@ page language="java" contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<%@ include file="../common/header.jsp" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml" lang="ko">

<head>
    <meta charset="UTF-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <meta http-equiv="imagetoolbar" content="no"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <meta name="format-detection" content="telephone=no"/>

    <!-- CSS 파일 경로 수정 -->
    <link rel="stylesheet" href="<c:url value='./css/setting.css' />"/>
    <link rel="stylesheet" href="<c:url value='./css/plugin.css' />"/>
    <link rel="stylesheet" href="<c:url value='./css/templatehouse.css' />"/>
    <link rel="stylesheet" href="<c:url value='./css/style.css' />"/>
</head>

<body>
<div class="th-layout-sideleft"></div>
<div class="th-layout-stickyleft"></div>
<div class="th-layout-content">
    <div class="basic-N10" id="cUm5xkHrdW">
        <div class="contents-container ">
            <div class="contents-inner">
                <div class="contents-visual">
                    <picture>
                        <source srcset="/images/img_subvisual_mobile.png" media="(max-width: 992px)"/>
                        <img src="/images/img_subvisual.png" alt="비주얼 이미지"/>
                    </picture>
                </div>
                <div class="contents-body">
                    <div class="textset">
                        <h2 class="h1 textset-tit"></h2>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <section class="campland-N18" id="SOM67953k1">
        <div class="contents-container container-md">
            <div class="contents-inner">
                <div class="iconset">
                    <img class="iconset-icon" src="/icons/ico_circle_illust.svg" alt="404"/>
                </div>
                <div class="textset textset-center">
                    <h2 class="textset-tit h6">404 Not Found</h2>
                    <p class="textset-desc p2">해당 페이지의 내용은 추후에 업데이트될 예정입니다. </p>
                    <a href="/" class="btnset btnset-primary btnset-round">메인으로</a>
                </div>
            </div>
        </div>
    </section>
</div>
<div class="th-layout-stickyright"></div>
<div class="th-layout-sideright"></div>
<%@ include file="../common/footer.jsp" %>

<!-- JS 파일 -->
<script src="/js/setting.js"></script>
<script src="/js/plugin.js"></script>
<script src="/js/templatehouse.js"></script>
<script src="/js/style.js"></script>
</body>

</html>
