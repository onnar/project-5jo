<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!-- Bootstrap core JavaScript -->
<script src="${pageContext.request.contextPath}/resources/vendor/jquery/jquery.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

<!-- Custom scripts for this template -->
<script src="${pageContext.request.contextPath}/resources/js/clean-blog.min.js"></script>

<script>
//navbar-dark bg-dark
(function($) {
	var topNavScroll = function(){
		var topNav = $("#topNav");
		var navHeight = topNav.height();
		var nowTop = $(window).scrollTop();		
		if(nowTop != 0) {
			$('body').css({'padding-top' : navHeight +'px'});
			topNav.addClass('fixed-top navbar-fixed navbar-dark bg-dark');	
		} else {
			$('body').css({'padding-top' : '0px'});
			topNav.removeClass('fixed-top navbar-fixed navbar-dark bg-dark');	
		}
		console.log(nowTop);
	}
	topNavScroll();
	$(window).on('scroll', function(){
		topNavScroll();
	});
	
	$(document).ready(function(){
		/*
		$('a').on('click',function(){
			if($(this).attr('href') == '#') {
				alert('준비중입니다...');
			}
		});
		*/		
	});
})(jQuery);
</script>