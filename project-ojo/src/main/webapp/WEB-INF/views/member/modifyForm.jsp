<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<jsp:include page="/include/lib_header.jsp"/>
<title>insert title</title>
</head>
<body id="page-top" class="bg-white">
<jsp:include page="/include/topNav.jsp"/>
<!-- #contentWrap:s -->
<div id="contentWrap">
	<!-- #content:s -->
	<div id="content" class="container">
		<!-- page:s -->

			<p>${member.uid}님회원정보수정</p>
			<form method="POST">
				<input type="hidden" id="uid" name="uid" value="${member.uid}" /><br>
				비밀번호 : <input type="text" id="pwd" name="pwd" /><br> 이름 : <input
					type="text" id="name" name="name" /><br> 변경할 전화번호 : <input
					type="text" id="phone" name="phone" /><br> 성별 : <input
					type="text" id="gender" name="gender" /><br> 프로필이미지: <input
					type="file" id="profile" name="profile" /><br>
				<!-- 파일 업로드로 바꾸는거 아직 안했음 -->
				메일 : <input type="text" id="email" name="email" /><br>

				<button type="submit">수정</button>
			</form>
			<div>
				<a href="/">메인으로 가기</a> <a href="withdrawal">이 웹사이트 탈주하기</a>
			</div>

			<!-- //page:e -->
	</div>
	<!-- //#content:e -->
</div>
<!-- //#contentWrap:e -->
<jsp:include page="/include/footer.jsp"/>
<jsp:include page="/include/lib_footer.jsp"/>
</body>
</html>