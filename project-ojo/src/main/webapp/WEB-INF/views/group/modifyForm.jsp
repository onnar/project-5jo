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
	<div id="content" class="container">
		<!-- page:s -->

		<form method="post" class="form-signin">
			<input type="hidden" name="gcode" value="${groupVo.gcode}">
			<div class="pb-3 border-bottom">
				<div class="row mb-3">
					<div class="col-6 pb-3">
						<label for="cnt">모집인원</label>
						<select name="cnt" id="cnt" class="custom-select d-block w-100">
							<option value="">모집인원 선택</option>
							<option value="2" <c:out value="${groupVo.cnt eq 2? 'selected' : ''}"/>>2명</option>
							<option value="3" <c:out value="${groupVo.cnt eq 3? 'selected' : ''}"/>>3명</option>
							<option value="4" <c:out value="${groupVo.cnt eq 4? 'selected' : ''}"/>>4명</option>
							<option value="5" <c:out value="${groupVo.cnt eq 5? 'selected' : ''}"/>>5명</option>
							<option value="6" <c:out value="${groupVo.cnt eq 6? 'selected' : ''}"/>>6명</option>
							<option value="7" <c:out value="${groupVo.cnt eq 7? 'selected' : ''}"/>>7명</option>
							<option value="8" <c:out value="${groupVo.cnt eq 8? 'selected' : ''}"/>>8명</option>
						</select>
					</div>
					<div class="col-6 pb-3">
						<label for="ucode">작성자</label>
						<input type="text" name="ucode" id="ucode" class="form-control" value="${groupVo.ucode}" readonly>
					</div>
					<div class="col-12 pb-3">
						<label for="title">제목</label>
						<input type="text" name="title" id="title" value="${groupVo.title}" class="form-control" placeholder="">
					</div>
					<div class="col-6 mb-3">
					  <label for="cate">분류</label>
					  <input type="text" name="cate" id="cate" value="${groupVo.cate}" class="form-control" placeholder="">
					</div>
					<div class="col-6 mb-3">
					  <label for="rcode">방번호(지울예정)</label>
					  <input type="hidden" name="rcode" id="rcode" value="${groupVo.rcode}" class="form-control" placeholder="">
					</div>
					<div class="col-12 mb-3">
						<textarea name="content" rows="5" cols="30" class="form-control" placeholder="내용 입력">${groupVo.content}</textarea>
					</div>
				</div>
			</div>
			<div class="btn-group-lg mt-4 text-center">
				<input type="submit" value="수정" class="btn btn-dark">
				<input type="button" value="취소" class="btn btn-outline-dark" onclick="location.href='${pageContext.request.contextPath}/group/list';">
			</div>
		</form>
		<!-- //page:e -->
	</div>
	<!-- //#content:e -->
</div>
<!-- //#contentWrap:e -->
<jsp:include page="/include/footer.jsp"/>
<jsp:include page="/include/lib_footer.jsp"/>
</body>
</html>