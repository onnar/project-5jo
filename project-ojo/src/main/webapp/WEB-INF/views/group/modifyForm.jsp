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


		<form role="form" action="${pageContext.request.contextPath}/group/modify" method="post">
			그룹번호: <input type="text" name="gcode" value="${groupVo.gcode}" readonly="readonly"><br>
			유저번호: <input type="text" name="ucode" value="${groupVo.ucode}" readonly="readonly"><br>
			룸번호: <input type="text" name="rcode" value="${groupVo.rcode}" readonly="readonly"><br>
			인원수: <input type="text" name="cnt" value="${groupVo.cnt}"><br>
			카테고리: <input type="text" name="cate" value="${groupVo.cate}"><br>
			등록일자: <input type="text" name="regdate" value="${groupVo.regdate}"><br>
			내용: <textarea name="content" rows="5" cols="30">${groupVo.content}</textarea><br>
			제목: <input type="text" name="title" value="${groupVo.title}"><br>
			<input type="submit" value="SAVE">
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