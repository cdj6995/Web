<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	// el표현식을 쓰면 사실상 필요없는 부분
	/* 
	String id  = (String)session.getAttribute("id");
	String password = (String)session.getAttribute("password");
	 */
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	설정된 ID : ${ sessionScope.id }<br>
	설정된 PW : ${ sessionScope.password }<br>
		
	<a href="remove.jsp">세션 삭제</a>
</body>
</html>