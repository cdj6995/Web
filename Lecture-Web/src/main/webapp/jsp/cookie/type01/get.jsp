<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% 
	Cookie[] cookies = request.getCookies();

	StringBuilder sb = new StringBuilder();
	for(Cookie c : cookies){
		String cName = c.getName();
		String cValue = c.getValue();
		sb.append("쿠키 이름 : " + cName + ", 쿠키 값 : " + cValue + "<br>");
	}
	pageContext.setAttribute("cookieInfo", sb.toString());
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2>설정된 쿠키 확인</h2>
	${ cookieInfo }
	<br>
	<a href="makeForm.jsp">쿠키 설정 이동</a>
</body>
</html>