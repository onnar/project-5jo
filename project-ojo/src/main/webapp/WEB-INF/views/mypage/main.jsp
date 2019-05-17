<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<jsp:include page="/include/lib_header.jsp"/>
<title>insert title</title>
</head>
<body id="page-top" class="cover-container">
<jsp:include page="/include/topNav.jsp"/>
<!-- #contentWrap:s -->
<div id="contentWrap">
	<!-- #content:s -->
	<div id="content" class="container">

		<!-- page:s -->
		<c:if test="${!empty sessionScope.member}">
		<h1 class="">마이페이지</h1>
		<div class="text-center pt-5 pb-5">
			<p>${member.name}(${member.uid})님 반갑습니다.</p>
			<h3>페이지는 준비중입니다...</h3>
		</div>
		</c:if>
		<c:if test="${empty sessionScope.member}">
		<script>
			alert('로그인이 필요한 서비스 입니다');
			location.href='${pageContext.request.contextPath}/member/login';
		</script>
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