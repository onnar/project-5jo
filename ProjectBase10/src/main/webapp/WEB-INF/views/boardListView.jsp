<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
				<table>
						<tr>
							<th>그룹번호</th>
							<th>회원번호</th>
							<th>방번호</th>
							<th>인원수</th>
							<th>카테고리</th>
							<th>등록일자</th>
							<th>내용</th>
							<th>제목</th>
						</tr>

						<c:forEach items="${hi}" var="hi2">
						
							<tr>
								<td><a href="boardView?gcode=${hi2.gcode}">${hi2.gcode}</a></td>
								<td><a href="boardView?gcode=${hi2.gcode}">${hi2.ucode}</a></td>
								<td>${hi2.rcode}</td>
								<td>${hi2.cnt}</td>
								<td>${hi2.cate}</td>
								<td>${hi2.regdate}</td>
								<td><a href="boardView?gcode=${hi2.gcode}">${hi2.content}</a></td>
								<td><a href="boardView?gcode=${hi2.gcode}">${hi2.title}</a></td>
							</tr>
									
						</c:forEach>
					</table>
					<button type="button" onclick="location.href='boardRegi' ">글 등록</button>
</body>
</html>