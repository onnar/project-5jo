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
		
		<div class="">
			<h1>gcode : ${hi.gcode }</h1>
			<h1>${hi.ucode }</h1>
			<h1>${hi.rcode }</h1>
			<h1>${hi.cnt }</h1>
			<h1>${hi.cate }</h1>
			<h1>${hi.regdate }</h1>
			<h1>${hi.content }</h1>
			<h1>${hi.title }</h1>
		</div>

		<div>
			<button type="button" onclick="location.href='modify?gcode=${hi.gcode}' ">수정하기</button>
			<button type="button" onclick="location.href='remove?gcode=${hi.gcode}' ">삭제하기</button>
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