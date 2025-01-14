<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../common/header.jsp" %>

<div class="container mt-5">
  <h1 class="text-center mb-4">게시글 상세보기</h1>

  <div class="p-4 border rounded bg-light shadow-sm">
    <h4 class="mb-3">제목: ${board.title}</h4>
    <p><strong>작성자:</strong> ${board.username}</p>
    <p><strong>작성일:</strong> ${board.formattedCreatedAt}</p>
    <p><strong>수정일:</strong> ${board.formattedUpdatedAt}</p>

    <h5 class="mt-4">내용:</h5>
    <pre>${board.content}</pre> <!-- 내용을 보기 좋게 출력 -->

    <!-- 로그인한 사용자만 수정 및 삭제 버튼이 보이도록 조건 추가 -->

      <div class="mt-4">
        <a href="/contact/editBoard/${board.dashboard_id}" class="btn btn-warning btn-sm">수정</a>
        <form action="/contact/deleteBoard" method="post" class="d-inline">
          <input type="hidden" name="dashboard_id" value="${board.dashboard_id}">
          <button type="submit" class="btn btn-danger btn-sm">삭제</button>
        </form>
      </div>
  </div>
</div>

<%@ include file="../common/footer.jsp" %>
