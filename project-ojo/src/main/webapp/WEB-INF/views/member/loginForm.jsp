<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<jsp:include page="/include/lib_header.jsp"/>
<title>Login</title>
</head>
<body id="page-top" class="bg-white">
<jsp:include page="/include/topNav.jsp"/>
<!-- #contentWrap:s -->
<div id="contentWrap">
	<!-- #content:s -->
	<div id="content" class="container">
		<!-- page:s -->
		<div id="page-login" class="page-inner pt-5 pb-5 <c:if test="${msg eq false}">is-login-fail</c:if>">
			<form method="post" class="form-signin">
				<h1 class="h3 mb-3 font-weight-normal">LOGIN <c:if test="${msg eq false}"><span class="text-danger">Fail...</span></c:if></h1>
				<div class="form-row mb-2">
					<label for="inputEmail" class="sr-only">아이디</label>
					<input type="text" id="inputUid" name="uid" class="form-control" placeholder="아이디" required autocomplete="off">
				</div>
				<div class="form-row">
					<label for="inputPwd" class="sr-only">비밀번호</label>
					<input type="password" id="inputPwd" name="pwd" class="form-control" placeholder="비밀번호" required autocomplete="off">
				</div>
				<div class="checkbox mb-3">
					<label>
						<input type="checkbox" value="remember-me">
						Remember me
					</label>
				</div>
				<button class="btn btn-lg btn-primary btn-block" type="submit">LOGIN</button>
			</form>
		</div>
		<!-- //page:e -->
	</div>
	<!-- //#content:e -->
</div>
<!-- //#contentWrap:e -->
<jsp:include page="/include/footer.jsp"/>
<jsp:include page="/include/lib_footer.jsp"/>
<c:if test="${msg eq false}">
<script>
$(function(){
	//alert('로그인에 실패하였습니다.\n아이디와 비밀번호를 다시 확인해주세요!');
});
</script>
</c:if>
</body>
</html>