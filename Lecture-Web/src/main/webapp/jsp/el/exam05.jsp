<%@page import="java.util.Map"%>
<%@page import="java.util.HashMap"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	Map<String, String> b = new HashMap<>();
	b.put("no","1");
	b.put("title", "테스트");
	
	pageContext.setAttribute("board", b);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	no : <%= b.get("no") %><br>
	title : <%= b.get("title") %><br>
	<hr>
	no : <%= ((Map<String,String>)pageContext.getAttribute("board")).get("no") %><br>
	<hr>
	no : ${ board.no }<br>
	title : ${ board.title }<br>
	
	aaa : ${ board.aaa }<br>
</body>
</html>