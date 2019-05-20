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
			<div class="pb-3 border-bottom">
				<div class="row mb-3">
					<div class="col-6 pb-3">
						<label for="cnt">모집인원</label>
						<select name="cnt" id="cnt" class="custom-select d-block w-100">
							<option value="">모집인원 선택</option>
							<option value="2">2명</option>
							<option value="3">3명</option>
							<option value="4">4명</option>
							<option value="5">5명</option>
							<option value="6">6명</option>
							<option value="7">7명</option>
							<option value="8">8명</option>
						</select>
					</div>
					<div class="col-6 pb-3">
						<label for="name">작성자</label>
						<input type="text" name="name" id="name" class="form-control" value="${sessionScope.member.name}" readonly>
					</div>
					<div class="col-12 pb-3">
						<label for="title">제목</label>
						<input type="text" name="title" id="title" class="form-control" placeholder="">
					</div>
					<div class="col-6 mb-3">
					  <label for="cate">분류</label>
					  <input type="text" name="cate" id="cate" class="form-control" placeholder="">
					</div>
					<div class="col-6 mb-3">
					  <label for="rcode">방번호(지울예정)</label>
					  <input type="hidden" name="rcode" id="rcode" class="form-control" value="1" placeholder="">
					</div>
					<div class="col-12 mb-3">
						<textarea name="content" rows="5" cols="30" class="form-control" placeholder="내용 입력"></textarea>
					</div>
				</div>
			</div>
			<div class="btn-group-lg mt-4 text-center">
				<input type="submit" value="등록" class="btn btn-dark">
				<input type="button" value="취소" class="btn btn-outline-dark" onclick="location.href='${pageContext.request.contextPath}/group/list';">
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