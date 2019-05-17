<%@ page import="kr.mycom.ojo.model.GroupVo"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<jsp:include page="/include/lib_header.jsp"/>
<title>스터디 그룹 모집 등록</title>
</head>
<body id="page-top" class="bg-white">
<jsp:include page="/include/topNav.jsp"/>
<!-- #contentWrap:s -->
<div id="contentWrap">
	<!-- #content:s -->
	<div id="content" class="container pt-5 pb-5">
		<!-- page:s -->
		<h1 class="pb-3">스터디 그룹 모집 등록</h1>
		<c:if test="${empty sessionScope.member}">
		<script>
			alert('로그인이 필요한 서비스 입니다.');
			location.href='${pageContext.request.contextPath}/member/login';
		</script>
		</c:if>
		<c:if test="${!empty sessionScope.member}">
		<form method="post" class="form-signin">
			<input type="hidden" name="ucode" value="${sessionScope.member.ucode}">
			<input type="hidden" name="regdate" value="">
			<div class="pb-3 border-bottom">
				<div class="row mb-3">
					<div class="col-12 pb-3">
						<label for="title">제목</label>
						<input type="email" name="title" id="title" class="form-control" placeholder="">
					</div>
				</div>
				<div class="row mb-3">
					<div class="col-6 pb-3">
						<label for="uname">작성자</label>
						<input type="text" name="" id="uname" class="form-control" value="${sessionScope.member.name}" readonly>
					</div>
					<div class="col-6 pb-3">
						<label for="uname">모집인원</label>
						<input type="text" name="cnt" id="cnt" class="form-control" value="">
					</div>
				</div>
				<div class="form-label-group mb-3">
				  <label for="title">모집인원</label>
				  <input type="email" name="title" id="title" class="form-control" placeholder="">
				</div>
			</div>
			

			카테고리: <input type="text" name="cate"><br>
			<div>
				<textarea name="content" rows="5" cols="30" class="form-control" placeholder="내용 입력"></textarea>
			</div>
			<div class="btn-group-lg">
				<input type="submit" value="새 글 등록" class="btn btn-outline-dark">
			</div>
		</form>
		</c:if>
		<!-- //page:e -->
	</div>
	<!-- //#content:e -->
</div>
<!-- //#contentWrap:e -->
<jsp:include page="/include/footer.jsp"/>
<jsp:include page="/include/lib_footer.jsp"/>
</body>
</html>