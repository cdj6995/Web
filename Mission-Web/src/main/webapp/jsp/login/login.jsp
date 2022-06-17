<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Login</title>
	<link rel="stylesheet" href="/Mission-Web/resources/css/layout.css">
	<link rel="stylesheet" href="/Mission-Web/resources/css/table.css">
	<script src="/Mission-Web/resources/js/myJs.js"></script>
</head>
<body>
	<header>
		<jsp:include page="/jsp/include/topMenu.jsp"></jsp:include>
	</header>
	<section>
		
		<div align="center">
			<hr>
			<h2>로그인</h2>
			<hr><br>
			<form action="loginProcess.jsp" method="post" onsubmit="return checkForm()" name="loginForm">
				<table style="width: 40%">
					<tr>
						<th>아이디</th>
						<td> <input type="text" name="id"> </td>
					</tr>
					<tr>
						<th>비밀번호</th>
						<td> <input type="password" name="password"> </td>
					</tr>
				</table>
				<input type="submit" value="로그인">
				
			</form>
		</div>
		
	</section>
	<footer>
		<!-- 지시자 include, 절대경로 root가 다르다!! 여기서는 맨앞 / 가 Mission-Web을 가리킴  -->
		<%@ include file="/jsp/include/footer.jsp" %>
	</footer>
</body>
</html>