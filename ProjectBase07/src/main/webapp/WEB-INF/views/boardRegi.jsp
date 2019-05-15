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

<%
request.setCharacterEncoding("UTF-8");
response.setCharacterEncoding("utf-8");
if (request.getMethod().equalsIgnoreCase("POST")) {  
  
  String subtype = request.getParameter("subtype");  
  if (subtype.equals("create-user")) {  
   BoardVo bd = new BoardVo();
   bd.setGcode(Integer.parseInt(request.getParameter("gcode")));  
   bd.setUcode(Integer.parseInt(request.getParameter("ucode")));
   bd.setRcode(Integer.parseInt(request.getParameter("rcode")));
   bd.setCnt(Integer.parseInt(request.getParameter("cnt")));
   bd.setCate(request.getParameter("cate"));
   bd.setRegdate(request.getParameter("regdate"));
   bd.setContent(request.getParameter("content"));
   bd.setTitle(request.getParameter("title"));
  }
 }
%>
  




</body>
</html>

