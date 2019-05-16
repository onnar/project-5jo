<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<jsp:include page="/include/lib_header.jsp"/>
<title>Main index</title>
</head>
<body id="page-top" class="bg-white">
<jsp:include page="/include/topNav.jsp"/>
<!-- header:s -->
<header class="masthead" style="background-image:url('resources/img/home-bg.jpg')">
	<div class="overlay"></div>
	<div class="container">
		<div class="row">
			<div class="col-lg-8 col-md-10 mx-auto">
				<div class="site-heading">
					<h1>스터디 클럽!</h1>
					<span class="subheading">스터디 클럽에 오신것을 환영합니다!</span>
				</div>
			</div>
		</div>
	</div>
</header>
<!-- //header:e -->
<!-- #contentWrap:s -->
<div id="contentWrap">
	<!-- #content:s -->
	<div id="content" class="container">
		<!-- page:s -->
		<div class="page-main page-inner">
			<h1>메인 페이지</h1>

			<div class="row mb-2">
				<div class="col-md-6">
				<div class="card flex-md-row mb-4 shadow-sm h-md-250">
					<div class="card-body d-flex flex-column align-items-start">
						<strong class="d-inline-block mb-2 text-primary">World</strong>
						<h3 class="mb-0">
							<a class="text-dark" href="#">Featured post</a>
						</h3>
					<div class="mb-1 text-muted">Nov 12</div>
						<p class="card-text mb-auto">This is a wider card with supporting text below as a natural lead-in to additional content.</p>
						<a href="#">Continue reading</a>
					</div>
				</div>
				</div>
				<div class="col-md-6">
				<div class="card flex-md-row mb-4 shadow-sm h-md-250">
					<div class="card-body d-flex flex-column align-items-start">
						<strong class="d-inline-block mb-2 text-success">Design</strong>
						<h3 class="mb-0">
							<a class="text-dark" href="#">Post title</a>
						</h3>
					<div class="mb-1 text-muted">Nov 11</div>
						<p class="card-text mb-auto">This is a wider card with supporting text below as a natural lead-in to additional content.</p>
						<a href="#">Continue reading</a>
					</div>
				</div>
				</div>
			</div>

		</div>
		<!-- //page:e -->
	</div>
	<!-- //#content:e -->
</div>
<!-- //#contentWrap:e -->
<jsp:include page="/include/footer.jsp"/>
<jsp:include page="/include/lib_footer.jsp"/>
</body>
</html>