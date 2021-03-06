<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%-- 
		http://localhost:9999/Lecture-Web/jsp/jstl/core/exam04.jsp?type=S or
		http://localhost:9999/Lecture-Web/jsp/jstl/core/exam04.jsp?type=U
	--%>
	<c:choose>
		<c:when test="${ empty param.type }">
			<h2>type 파라미터가 전송되지 않았습니다</h2>
		</c:when>
		<c:when test="${ param.type == 'S' }">
			<h2>반갑습니다. 관리자님</h2>
		</c:when>
		<c:when test="${ param.type == 'U' }">
			<h2>반갑습니다. 일반 사용자님</h2>
		</c:when>
		<c:otherwise>
			<h2>파라미터 값이 잘못되었습니다.</h2>
		</c:otherwise>
	</c:choose>
</body>
</html>