<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<script>
	alert("${gcode}번 글이 삭제되었습니다");
	location.href='${pageContext.request.contextPath}/group/list';
</script>