<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<jsp:include page="/include/lib_header.jsp"/>
<title>그룹 모집 리스트</title>
</head>
<body id="page-top" class="bg-white">
<jsp:include page="/include/topNav.jsp"/>
<!-- #contentWrap:s -->
<div id="contentWrap">
	<!-- #content:s -->
	<div id="content" class="container pt-5 pb-5">
		<!-- page:s -->
		<h1 class="pb-3">스터디 그룹 모집</h1>
		<div class="table-responsive">
			<table class="table table-hover">
				<caption style="display:none;">그룹 모집 게시물 리스트</caption>
				<colgroup>
					<col style="width:;">
					<col style="width:;">
					<col style="width:;">
					<col style="width:;">
					<col style="width:;">
					<col style="width:;">
					<col style="width:;">
					<col style="width:;">
				</colgroup>
				<thead class="thead-dark">
					<tr>
						<th scope="col">번호</th>
						<th scope="col">방번호</th>
						<th scope="col">카테고리</th>
						<th scope="col">제목</th>
						<th scope="col">인원수</th>
						<th scope="col">회원번호</th>
						<th scope="col">등록일자</th>
					</tr>
				</thead>
				<tbody>
					<c:if test="${!empty hi}">
					<c:forEach items="${hi}" var="hi2">
					<tr class="row-subject">
						<td>${hi2.gcode}</std>
						<td>${hi2.rcode}</td>
						<td>${hi2.cate}</td>
						<td><a href="${pageContext.request.contextPath}/group/view?gcode=${hi2.gcode}">${hi2.title}</a></td>
						<td>${hi2.cnt}</td>
						<td>${hi2.ucode}</td>
						<td>${hi2.regdate}</td>
					</tr>
					</c:forEach>
					</c:if>
					<c:if test="${empty hi}">
					<tr>
						<td colspan="8">
							<p class="txt-empty">모집 글이 없습니다.</p>
						</td>
					</tr>
					</c:if>
				</tbody>
			</table>
		</div>
		<div class="btn-group-lg text-right">
			<a href="${pageContext.request.contextPath}/group/register" class="btn btn-outline-dark">글쓰기</a>
		</div>
		<!-- //page:e -->
	</div>
	<!-- //#content:e -->
</div>
<!-- //#contentWrap:e -->
<jsp:include page="/include/footer.jsp"/>
<jsp:include page="/include/lib_footer.jsp"/>
<script>
$(document).ready(function(){
	var rowsCnt = $('table tbody tr').length;
	$('table tbody tr').each(function(idx){
		$(this).find('td:first-child').text((rowsCnt-idx));
	});
});
</script>
</body>
</html>