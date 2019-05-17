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
	<div id="content" class="container pt-5 pb-5">
		<!-- page:s -->
		<div id="page-room-list">
			<h1 class="pb-3">스터디룸 리스트</h1>
			<div class="row col-8">
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
			<c:if test="${empty list}">
			<div class="text-center mt-5 mb-5">
				<h2 class="pt-5 pb-5">결과값이 없습니다.</h2>
			</div>
			</c:if>
			<c:if test="${!empty list}">
			<div class="row roomList">
				<c:forEach var="Room_infoVo" items="${list}">
				<div class="col-md-4 item item${Room_infoVo.rcode}">
					<div class="card mb-4 shadow-sm">
						<div class="thumb" style="background:url('resources/img/home-bg.jpg') no-repeat left top #eee;">
							<span class="alert alert-success type-label" role="alter">${Room_infoVo.rtype}</span>
							<a href="javascript:alert('준비중입니다...');"><img src="../resources/data/${Room_infoVo.rprofile}"></a>
						</div>
						<div class="card-body">
							<div class="border-bottom pb-3 mb-3">
								<h4 class="mb-3"><a href="javascript:alert('준비중입니다...');">${Room_infoVo.name}</a></h4>
								<p class="mb-1 mt-1">${Room_infoVo.addr}</p>
							</div>
							<div class="d-flex justify-content-between align-items-center">
								<div class="btn-group">
								  <button type="button" class="btn btn-sm btn-outline-secondary" onclick="alert('준비중입니다...');">View</button>
								  <button type="button" class="btn btn-sm btn-outline-secondary" onclick="alert('준비중입니다...');">Edit</button>
								</div>
								<!-- 
								<small class="text-muted">${Room_infoVo.prc}</small>
								 -->
							</div>
						</div>
					</div>
				</div>
				</c:forEach>
			</div>
			<div class="col-md-2 text-center" style="margin:0 auto;">
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
			</c:if>			
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
	
	function imgLoad() {
		var imgSrc = new Array();
		imgSrc[0] = '20190507_285/1557223926339v8BiT_JPEG/05.01_%C6%C4%B5%B5%BB%EC%B7%D5_15.jpeg?type=f753_421';
		imgSrc[1] = '20190502_135/1556778987680tib6y_JPEG/IMG_2012.JPG?type=f753_421';
		imgSrc[2] = '20190509_293/1557353500435QpFcn_JPEG/1557049048208-7.jpg?type=f753_421';
		imgSrc[3] = '20170111_181/1484117598501cMuUi_PNG/KakaoTalk_Photo_2017-01-11-15-52-04_42.png?type=f753_421';
		imgSrc[4] = '20181101_159/1541065988594SDxwU_JPEG/IMG_0013.jpg?type=f753_421';
		imgSrc[5] = '20170624_223/1498233364482fulc4_JPEG/%BC%D2%BC%C8%C6%D1%C5%E4%B8%AE_%C8%AB%B4%EB_%C8%B8%C0%C7%BD%C7_%BD%BA%C5%CD%B5%F0%B7%EB_H_%282%29.jpg?type=f753_421';
	
		$('.thumb img').each(function(idx){
			$(this).attr('src', 'https://scloud.pstatic.net/' + imgSrc[idx]);
		});
	}
	
	imgLoad();
});
</script>
</body>
</html>