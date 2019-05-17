<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<jsp:include page="/include/lib_header.jsp"/>
<title>회원정보 수정 폼</title>
</head>
<body id="page-top" class="bg-white">
<jsp:include page="/include/topNav.jsp"/>
<!-- #contentWrap:s -->
<div id="contentWrap">
	<!-- #content:s -->
	<div id="content" class="container pt-5 pb-5 bg-white">
		<!-- page:s -->
		<div id="page-member-reg">
			<h1 class="mb-3 font-weight-normal">회원 정보 수정</h1>
			
			<form class="needs-validation" method="POST">
				<div class="mb-3">
					<label for="uid">아이디</label>
					<input type="text" name="uid" id="uid" value="${member.uid}" class="form-control" readonly>
				</div>
				
				<div class="mb-3">
					<label for="name">이름</label>
					<input type="text" name="name" id="name" value="${member.name}" class="form-control" placeholder="" required autocomplete="off">
				</div>

				<div class="row">
					<div class="col-md-6 mb-3">
						<label for="pwd1">비밀번호</label>
						<input type="password" name="pwd" id="pwd1" value="${member.pwd}" class="form-control" placeholder="" autocomplete="off">
					</div>
					<div class="col-md-6 mb-3">
						<label for="pwd1">비밀번호 확인</label>
						<input type="text" name="pwd2" id="pwd2" value="${member.pwd}" class="form-control" placeholder="" autocomplete="off">
					</div>
				</div>
				
				<div class="mb-3">
					<label for="email">이메일 <span class="text-muted">(@ 포함하여 적어주세요)</span></label>
					<input type="email" class="form-control" id="email" value="${member.email}" placeholder="ex)you@example.com" autocomplete="off">
				</div>
							
				<div class="row">
					<div class="col-md-6 mb-3">
						<label for="phone">전화번호 <span class="text-muted">(- 포함하여 적어주세요)</span></label>
						<input type="text" name="phone" id="phone" value="${member.phone}" class="form-control" placeholder="ex)010-0000-0000" autocomplete="off">
					</div>
				
					<div class="col-md-6 mb-3">
						<label for="gender">성별 ${member.gender}</label>
						<div>
							<div class="btn-group btn-group-toggle" data-toggle="buttons">
							  <label class="btn btn-info <c:if test="${member.gender eq '남'}">active</c:if>">
							    <input type="radio" name="gender" id="option1" value="남" autocomplete="off" <c:if test="${member.gender eq '남'}">checked</c:if>> 남
							  </label>
							  <label class="btn btn-info <c:if test="${member.gender eq '여'}">active</c:if>">
							    <input type="radio" name="gender" id="option2" value="여" autocomplete="off" <c:if test="${member.gender eq '여'}">checked</c:if>> 여
							  </label>
							</div>
						</div>
					</div>		
				</div>
				
				<div class="mb-3">
					<label for="uid">프로필 이미지</label>
					<div>
						<input type="file" name="profile" value="${member.profile}" class="form-control" placeholder="프로필 이미지 등록">
					</div>
				</div>

				<hr class="mt-4 mb-4">
				
				<div class="btn-group-lg text-center">
					<button type="submit" class="btn btn-dark">정보수정</button>
					<a href="javascript:history.back();" class="btn btn-outline-dark">취소</a>
				</div>				
			</form>
			<div class="mt-5 text-right">
				<p class="alert alert-danger" role="alert">
					*탈퇴시 회원의 모든정보는 사라집니다.
					<a href="#" class="alert-link" onclick="execWithdrawal(); return false;">회원탈퇴</a>
				</p>
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
function execWithdrawal(){
	if(confirm('회원 탈퇴를 원하십니까?\n*확인시 바로 탈퇴가 되며 되돌릴 수 없습니다.') == true) {
		location.href='${pageContext.request.contextPath}/member/withdrawal';
	} else {
		return;
	}
}
</script>
</body>
</html>