<%@page import="kr.mycom.ojo.model.BoardVo"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<title>Insert title here</title>
</head>
<body>
<h2><%=request.getAttribute("gcode") %></h2> <!-- 뷰 - 이런 자바코드를 없애자 해서 아랫줄 처럼-->
<h2> ${gcode} 삭제</h2>
</body>
</html>

