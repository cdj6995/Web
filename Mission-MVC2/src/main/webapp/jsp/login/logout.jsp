<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	session.invalidate();

	// 밑에 자바스크립트 쓰는것과 같다
	response.sendRedirect("/Mission-Web");
%>
<%-- 
<script>
	location.href = '/Mission-Web';
</script>
 --%>