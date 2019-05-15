<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>

<h1>${hi.gcode }</h1>
<h1>${hi.ucode }</h1>
<h1>${hi.rcode }</h1>
<h1>${hi.cnt }</h1>
<h1>${hi.cate }</h1>
<h1>${hi.regdate }</h1>
<h1>${hi.content }</h1>
<h1>${hi.title }</h1>
<button type="button" onclick="location.href='boardModi?gcode=${hi.gcode}' ">수정하기</button>
<button type="button" onclick="location.href='boardRemove?gcode=${hi.gcode}' ">삭제하기</button>
</body>
</html>