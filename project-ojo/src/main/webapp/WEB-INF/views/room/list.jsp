<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<jsp:include page="/include/lib_header.jsp"/>
<title>스터디룸 리스트</title>
</head>
<body id="page-top" class="bg-white">
<jsp:include page="/include/topNav.jsp"/>
<!-- #contentWrap:s -->
<div id="contentWrap">
	<!-- #content:s -->
	<div id="content" class="container">
		<!-- page:s -->
		<h1>스터디룸 리스트</h1>
		<div class="row col-6">
			<div class="input-group mb-3">
				<select name="searchType" class="custom-select">
					<option value="n"
						<c:out value="${cri.searchType == null?'selected':''}"/>>
						카테고리</option>
					<option value="addr"
						<c:out value="${cri.searchType eq 'addr'?'selected':''}"/>>지역</option>
					<option value="name"
						<c:out value="${cri.searchType eq 'name'?'selected':''}"/>>가게명</option>
					<option value="rcode"
						<c:out value="${cri.searchType eq 'rcode'?'selected':''}"/>>글번호</option>
				</select>
				<input type="text" name="keyword" id="keywordInput" class="form-control mr-sm-2" value='${cri.keyword }'>
				<div class="input-group-append">
				  <button id='searchBtn' class="input-group-text">Search</button>
				</div>				
			</div>
		</div>
		<div class="row">
			<c:forEach var="Room_infoVo" items="${list}">
			<div class="col-md-4">
				<div class="card mb-4 shadow-sm">
					<div class="thumb">
						<!-- <img src="/data-images/${Room_infoVo.rprofile}.jpg">-->
						<img src="/include/room-thumb-01.jpg">
					</div>
					<div class="card-body">
						<p>${Room_infoVo.rcode}</p>
						<p>${Room_infoVo.name}</p>
						<p>${Room_infoVo.thumb}</p>
						<p>${Room_infoVo.rtype}</p>
						<p>${Room_infoVo.thumb}</p>
						<p class="card-text">${Room_infoVo.addr}</p>
						<div class="d-flex justify-content-between align-items-center">
							<div class="btn-group">
							  <button type="button" class="btn btn-sm btn-outline-secondary">View</button>
							  <button type="button" class="btn btn-sm btn-outline-secondary">Edit</button>
							</div>
							<small class="text-muted">${Room_infoVo.prc}</small>
						</div>
					</div>
				</div>
			</div>
			</c:forEach>
		</div>

		<div class="col-md-4 text-center" style="margin:0 auto;">
			<div class="pagination">
				<c:if test="${pageMaker.prev}">
					<a href="list${pageMaker.makeSearch(pageMaker.startPage - 1) }" class="page-link">&laquo;</a>
				</c:if>
				<c:forEach begin="${pageMaker.startPage}" end="${pageMaker.endPage}" var="idx">
					<a href="list${pageMaker.makeSearch(idx)}" class="page-link">${idx}</a>
				</c:forEach>
				<c:if test="${pageMaker.next && pageMaker.endPage > 0}">
					<a href="list${pageMaker.makeSearch(pageMaker.endPage +1) }" class="page-link">&raquo;</a>
				</c:if>
			</div>
		</div>

		<!-- //page:e -->
	</div>
	<!-- //#content:e -->
</div>
<!-- //#contentWrap:e -->
<jsp:include page="/include/footer.jsp"/>
<jsp:include page="/include/lib_footer.jsp"/>
<script>
$(document).ready(function() {
	$('#searchBtn').on('click', function(event) {
		self.location = "list"
			+ '${pageMaker.makeQuery(1)}'
			+ "&searchType="
			+ $("select option:selected").val()
			+ "&keyword=" + $('#keywordInput').val();
	});
});
</script>
</body>
</html>