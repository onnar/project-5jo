<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!-- .navbar:s -->
<nav class="navbar navbar-expand-lg" id="topNav">
  <div class="container">
    <a class="navbar-brand" href="${pageContext.request.contextPath}">STUDY CLUB!</a>
		<button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
		  Menu <i class="fas fa-bars"></i>
		</button>
		<div class="collapse navbar-collapse" id="navbarResponsive">
			<ul class="navbar-nav ml-auto">
			  	<li class="nav-item">
			  		<a class="nav-link" href="${pageContext.request.contextPath}"><i class="fas fa-home"></i> Home</a>
			  	</li>
				<li class="nav-item">
					<a class="nav-link" href="room/list"><i class="fas fa-door-open"></i> STUDY ROOM</a>
				</li>
				<li class="nav-item dropdown">
					<a class="nav-link dropdown-toggle" href="#" id="dropdown01" data-toggle="dropdown" aria-haspopup="true" aria-expanded="true">
						<i class="fas fa-comments"></i> COMMUNITY
					</a>
					 <div class="dropdown-menu" aria-labelledby="dropdown01">
					   <a class="dropdown-item" href="${pageContext.request.contextPath}/group/list">스터디그룹 모집</a>
					   <a class="dropdown-item" href="#">자주하는 질문</a>
					 </div>					
				</li>
				<li class="nav-item dropdown">
					<a class="nav-link dropdown-toggle" href="#" id="dropdown02" data-toggle="dropdown" aria-haspopup="true" aria-expanded="true">MEMBER</a>
					<div class="dropdown-menu" aria-labelledby="dropdown02">
						<c:if test="${member != null}">
							<a class="dropdown-item" href="${pageContext.request.contextPath}/member/modify">정보수정</a>
							<a class="dropdown-item" href="${pageContext.request.contextPath}/member/logout">로그아웃</a>
							<a class="dropdown-item" href="/">마이페이지</a>
						</c:if>
						<c:if test="${member == null}">
							<a class="dropdown-item" href="${pageContext.request.contextPath}/member/login">로그인</a>
							<a class="dropdown-item" href="${pageContext.request.contextPath}/member/register">회원가입</a>
						</c:if>
					</div>
				</li>				
			</ul>
		</div>
		<form class="form-inline my-2 my-md-0" style="display:none;">
		  <input class="form-control" type="text" placeholder="Search" aria-label="Search">
		</form>		
    </div>
  </div>
</nav>
<!-- 
<nav class="navbar navbar-expand-lg navbar-light fixed-top" id="mainNav">
	<div class="container">
		<a class="navbar-brand" href="${pageContext.request.contextPath}">STUDY CLUB!</a>
		<button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
		  Menu <i class="fas fa-bars"></i>
		</button>
		<div class="collapse navbar-collapse" id="navbarResponsive">
			<ul class="navbar-nav ml-auto">
			  	<li class="nav-item">
			  		<a class="nav-link" href="${pageContext.request.contextPath}"><i class="fas fa-home"></i> Home</a>
			  	</li>
				<li class="nav-item">
					<a class="nav-link" href="room/list"><i class="fas fa-door-open"></i> STUDY ROOM</a>
				</li>
				<li class="nav-item dropdown">
					<a class="nav-link dropdown-toggle" href="#" id="dropdown01" data-toggle="dropdown" aria-haspopup="true" aria-expanded="true">
						<i class="fas fa-comments"></i> COMMUNITY
					</a>
					 <div class="dropdown-menu" aria-labelledby="dropdown01">
					   <a class="dropdown-item" href="${pageContext.request.contextPath}/group/list">스터디그룹 모집</a>
					   <a class="dropdown-item" href="javascript:alert('준비준...');">자주하는 질문</a>
					 </div>					
				</li>
				<li class="nav-item dropdown">
					<a class="nav-link dropdown-toggle" href="#" id="dropdown02" data-toggle="dropdown" aria-haspopup="true" aria-expanded="true">MEMBER</a>
					<div class="dropdown-menu" aria-labelledby="dropdown02">
						<c:if test="${member != null}">
							<a class="dropdown-item" href="${pageContext.request.contextPath}/member/modify">정보수정</a>
							<a class="dropdown-item" href="${pageContext.request.contextPath}/member/logout">로그아웃</a>
							<a class="dropdown-item" href="/">마이페이지</a>
						</c:if>
						<c:if test="${member == null}">
							<a class="dropdown-item" href="${pageContext.request.contextPath}/member/login">로그인</a>
							<a class="dropdown-item" href="${pageContext.request.contextPath}/member/register">회원가입</a>
						</c:if>
					</div>
				</li>				
			</ul>
		</div>
	</div>
</nav>
 -->
<!-- //.navbar:s -->