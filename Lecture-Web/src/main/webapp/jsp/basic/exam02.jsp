<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>표현식을 이용한 합 출력</title>
</head>
<body>
	<h1>1 ~ 10 사이의 정수 출력</h1>
	<% 
		int sum = 0;
		for(int i = 1; i < 11; i++){
			sum += i;
	%>
			<%= i %><br>
	<%	
		}
	%>
	1~10사이의 총합 : <%= sum %>
</body>
</html>