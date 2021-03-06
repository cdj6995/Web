<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<%
	String[] names = {"홍길동", "강길동", "윤길동", "박길동"};

	pageContext.setAttribute("names", names);
	pageContext.setAttribute("length", names.length-1);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	이름배열의 개수 : ${ fn:length(names) }<br>
<%-- 
	<c:forEach var="name" items="${ names }" varStatus="loop">
		${ loop.first } : ${ loop.last } : ${ loop.index } : ${ loop.count }<br>
	</c:forEach>
--%>
	
	<c:forEach var="name" items="${ names }" varStatus="loop">
		${ name }
		<c:if test="${ ! loop.last }">
			,
		</c:if>
	</c:forEach><br>

	<c:forEach var="i" begin="0" end="${ fn:length(names)-1 }">
		${ names[i] }
		<c:if test="${ i != fn:length(names)-1 }">
			,
		</c:if>		
	</c:forEach><br>

	<c:set var="cnt" value="1"/>
	<c:forEach var="name" items="${ names }">
		<c:if test="${ cnt ne 1 }">
			,
		</c:if>
		${ name }
		<c:set var="cnt" value="${ cnt + 1 }"/>	
	</c:forEach>
	<c:remove var="cnt" scope="page"/>

	<h2>1 ~ 10 사이의 정수 출력</h2>
	<c:forEach var="i" begin="1" end="10">
		${ i }
	</c:forEach>
	<br>
	년도 선택 : 
	<select>
		<c:forEach var="year" begin="1970" end="2022" step="10">
			<option>${ year }</option>
		</c:forEach>
	</select>
</body>
</html>