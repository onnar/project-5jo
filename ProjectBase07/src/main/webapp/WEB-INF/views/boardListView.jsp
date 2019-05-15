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
								<td>${hi2.gcode}</td>
								<td>${hi2.ucode}</td>
								<td>${hi2.rcode}</td>
								<td>${hi2.cnt}</td>
								<td>${hi2.cate}</td>
								<td>${hi2.regdate}</td>
								<td>${hi2.content}</td>
								<td>${hi2.title}</td>
							</tr>

						</c:forEach>

					</table>
</body>
</html>