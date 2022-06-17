<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="common.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		request.setAttribute("phone", "010-1111-2222");
	%>
	msg : <%= msg %><br>
	phone : ${ phone }<br>
	<h2>인클루드 전</h2>
	<h3>파라미터 미설정</h3>
	<jsp:include page="one.jsp"/>
	<h2>인클루드 후</h2>
	<h2>인클루드 전</h2>
	<h3>파라미터 설정</h3>
	<jsp:include page="one.jsp">
		<jsp:param value="hong" name="name"/>
	</jsp:include>
	<h2>인클루드 후</h2>
	phone : ${ phone }<br>
</body>
</html>