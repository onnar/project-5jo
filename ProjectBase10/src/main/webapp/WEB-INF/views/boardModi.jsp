<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<form role="form" action="boardModi" method="post">
	룸번호: <input type="text" name="gcode" value="${boardVo.gcode}" readonly="readonly"><br>
	유저번호: <input type="text" name="ucode" value="${boardVo.ucode}" readonly="readonly"><br>
	룸번호: <input type="text" name="rcode" value="${boardVo.rcode}" readonly="readonly"><br>
	인원수: <input type="text" name="cnt" value="${boardVo.cnt}"><br>
	카테고리: <input type="text" name="cate" value="${boardVo.cate}"><br>
	등록일자: <input type="text" name="regdate" value="${boardVo.regdate}"><br>
	내용: <textarea name="content" rows="5" cols="30">${boardVo.content}</textarea><br>
	제목: <input type="text" name="title" value="${boardVo.title}"><br>
	<input type="submit" value="SAVE">
</form>
</body>
</html>