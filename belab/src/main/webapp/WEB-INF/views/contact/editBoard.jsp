<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="../common/header.jsp" %>

<div class="container mt-5">
  <h1 class="text-center mb-4">게시글 수정</h1>

  <form action="/contact/editBoard" method="post" class="p-4 border rounded bg-light shadow-sm">
    <input type="hidden" name="dashboard_id" value="${board.dashboard_id}">
    <div class="form-group">
      <label for="title">제목</label>
      <input type="text" class="form-control" id="title" name="title" value="${board.title}" required>
    </div>
    <div class="form-group">
      <label for="content">내용</label>
      <textarea class="form-control" id="content" name="content" rows="6" required>${board.content}</textarea>
    </div>
    <div class="text-right">
      <button type="submit" class="btn btn-primary">저장</button>
    </div>
  </form>
</div>

<%@ include file="../common/footer.jsp" %>
