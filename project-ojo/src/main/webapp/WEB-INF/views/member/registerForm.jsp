<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<jsp:include page="/include/lib_header.jsp"/>
<title>회원가입 폼</title>
</head>
<body id="page-top" class="bg-white">
<jsp:include page="/include/topNav.jsp"/>
<!-- #contentWrap:s -->
<div id="contentWrap" style="background:#eee;">
	<!-- #content:s -->
	<div id="content" class="container pt-5 pb-5 bg-white">
		<!-- page:s -->
		<div id="page-member-reg">
			<h1 class="mb-3 font-weight-normal">회원가입</h1>

			<form class="needs-validation" method="post">
				<div class="mb-3">
					<label for="uid">아이디</label>
					<input type="text" name="uid" id="uid" value="" class="form-control" placeholder="" required autocomplete="off">
				</div>
				
				<div class="mb-3">
					<label for="name">이름</label>
					<input type="text" name="name" id="name" value="" class="form-control" placeholder="" required autocomplete="off">
				</div>
				
				<div class="row">
					<div class="col-md-6">
						<label for="pwd1">비밀번호</label>
						<input type="password" name="pwd" id="pwd1" value="" class="form-control" placeholder="" required autocomplete="off">
					</div>
					<div class="col-md-6">
						<label for="pwd1">비밀번호 확인</label>
						<input type="password" name="pwd2" id="pwd2" value="" class="form-control" placeholder="" required autocomplete="off">
					</div>
					<div class="col-md-12 mt-2 mb-3">
						<span id="pwd-msg"></span>
					</div>
				</div>

				<div class="mb-3">
					<label for="email">이메일 <span class="text-muted">(@ 포함하여 적어주세요)</span></label>
					<input type="email" name="email" class="form-control" id="email" placeholder="ex)you@example.com" autocomplete="off">
				</div>

				<div class="row">
					<div class="col-md-6 mb-3">
						<label for="phone">전화번호 <span class="text-muted">(- 포함하여 적어주세요)</span></label>
						<input type="text" name="phone" id="phone" value="" class="form-control" placeholder="ex)010-0000-0000" required autocomplete="off">
					</div>
				
					<div class="col-md-6 mb-3">
						<label for="gender">성별</label>
						<div>
							<div class="btn-group btn-group-toggle" data-toggle="buttons">
							  <label class="btn btn-info active">
							    <input type="radio" name="gender" id="option1" value="남" autocomplete="off" checked> 남
							  </label>
							  <label class="btn btn-info">
							    <input type="radio" name="gender" id="option2" value="여" autocomplete="off" > 여
							  </label>
							</div>
						</div>
					</div>		
				</div>
				
				<div class="mb-3">
					<label for="uid">프로필 이미지</label>
					<div>
						<input type="hidden" name="profile" value="default.jpg">
						<input type="file" name="profile" value= "profile" class="form-control" placeholder="프로필 이미지 등록">
					</div>
				</div>
								
				<hr class="mt-4 mb-4">

				<div class="btn-group-lg text-center">
					<button type="submit" class="btn btn-dark">회원 가입하기</button>
					<a href="${pageContext.request.contextPath}/" class="btn btn-outline-dark">취소</a>
				</div>
			</form>
			
		</div>
		<!-- //page:e -->
	</div>
	<!-- //#content:e -->
</div>
<!-- //#contentWrap:e -->
<jsp:include page="/include/footer.jsp"/>
<jsp:include page="/include/lib_footer.jsp"/>
<script>
	var pwd1 = $('#pwd1');
	var pwd2 = $('#pwd2');
	var msg = $('#pwd-msg');
	var txt = '';
	
	$('input[type=password]').on('change',function(){
		if(pwd1.val() == pwd2.val()) {
			txt = "비밀번호가 일치합니다.";
			$('#pwd-msg').removeClass('not').addClass('pass').text(txt);
		} else {
			txt = "비밀번호가 다릅니다";	
			$('#pwd-msg').removeClass('pass').addClass('not').text(txt);
		} 
	});
</script>
</body>
</html>