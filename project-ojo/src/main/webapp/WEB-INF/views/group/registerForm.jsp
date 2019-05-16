<%@ page import="kr.mycom.ojo.model.GroupVo"%>
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

		<form method="post">
			<input name="subtype" value="create-user" />  
				유저번호: <input type="text" name="ucode"><br>
				룸번호: <input type="text" name="rcode"><br>
				인원수: <input type="text" name="cnt"><br>
				카테고리: <input type="text" name="cate"><br>
				등록일자: <input type="text" name="regdate"><br>
				내용: <textarea name="content" rows="5" cols="30"></textarea><br>
				제목: <input type="text" name="title"><br>
			<input type="submit" value="새 글 등록">
		</form>
		<!-- //page:e -->
	</div>
	<!-- //#content:e -->
</div>
<!-- //#contentWrap:e -->
<jsp:include page="/include/footer.jsp"/>
<jsp:include page="/include/lib_footer.jsp"/>
</body>
</html>