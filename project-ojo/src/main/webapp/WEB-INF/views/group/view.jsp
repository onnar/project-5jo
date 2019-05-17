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
	<div id="content" class="container pt-5 pb-5">
		<!-- page:s -->
		<div class="row">
			<div class="col-6 pb-3">
				<h1>${hi.title}</h1>
			</div>
			<div class="col-6 text-right pt-3">
				<span>조회수 : ${hi.cnt}</span>
			</div>
		</div>
		<table class="table table-sm">
			<colgroup>
				<col style="width:10%;">
				<col style="width:40%;">
				<col style="width:10%;">
				<col>
			</colgroup>
			<tbody>
				<tr>
					<th scope="row">그룹 번호</th>
					<td>${hi.gcode}</td>
					<th scope="row">회원 번호</th>
					<td>${hi.ucode}</td>
				</tr>
				<!-- 
				<tr>
					<th scope="row">룸 번호</th>
					<td>${hi.rcode}</td>
				</tr>
				-->
				<tr>
					<th scope="row">카테고리</th>
					<td>${hi.cate}</td>
					<th scope="row">등록일</th>
					<td>${hi.regdate}</td>
				</tr>
				<tr>
					<td colspan="4">
						<div class="pt-5 pb-5">${hi.content}</div>
						<div class="btn-group-lg pt-3 pr-3 text-right">
							<span>그룹에 참여하고 싶다면 '그룹신청'을 하세요!</span>
							<button type="button" onclick="alert('준비중입니다..');" class="btn btn-primary">그룹신청</button>
						</div>												
					</td>
				</tr>
			</tbody>
		</table>
		<hr class="pb-4">
		<div class="btn-group-lg text-right">
			<button type="button" onclick="location.href='modify?gcode=${hi.gcode}'" class="btn btn-outline-dark">수정하기</button>
			<button type="button" onclick="execDelete(${hi.gcode});" class="btn btn-outline-dark">삭제하기</button>
			<button type="button" onclick="location.href='list'" class="btn btn-dark">목록보기</button>
		</div>		
		<!-- //page:e -->
	</div>
	<!-- //#content:e -->
</div>
<!-- //#contentWrap:e -->
<jsp:include page="/include/footer.jsp"/>
<jsp:include page="/include/lib_footer.jsp"/>
<script>
function execDelete(gcode) {
	if(confirm('삭제하시겠습니까?') == true) {
		location.href='remove?gcode='+gcode;	
	} else {
		return;
	}
}
</script>
</body>
</html>