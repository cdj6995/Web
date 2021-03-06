<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>회원가입</title>
	<script src="https://code.jquery.com/jquery-3.6.0.js"></script>
	<script>
		$(document).ready( ()=>{
			$("#listBtn").click( ()=>{
				location.href = 'list.jsp'
			})
		})
		
		function checkForm(){
			let f = document.signup
			
			if(f.id.value ===''){
				alert('아이디를 입력하세요')
				f.id.focus()
				return false
			}
			if(f.name.value ===''){
				alert('이름을 입력하세요')
				f.name.focus()
				return false
			}
			if(f.password.value ===''){
				alert('비밀번호를 입력하세요')
				f.password.focus()
				return false
			}
			if(f.email.value ===''){
				alert('이메일을 입력하세요')
				f.email.focus()
				return false
			}
			if(f.tel.value ===''){
				alert('전화번호를 입력하세요')
				f.tel.focus()
				return false
			}
			if(f.addr.value ===''){
				alert('주소를 입력하세요')
				f.addr.focus()
				return false
			}
			return true
			
		}
		
	</script>
	<link rel="stylesheet" href="/Mission-Web/resources/css/layout.css">
	<link rel="stylesheet" href="/Mission-Web/resources/css/table.css">
	<link rel="stylesheet" href="/Mission-Web/resources/css/login.css">
	<script src="/Mission-Web/resources/js/myJs.js"></script>
</head>
<body>
	<header>
		<jsp:include page="/jsp/include/topMenu.jsp"></jsp:include>
	</header>
	<section>
		<div align="center">
			<hr>
			<h2>새 회원 등록 폼</h2>
			<hr>
			<form action="sign.jsp" method="post" name="signup" onsubmit="return checkForm()">
				<table class="table table-dark" style = "width : 80%">
					<tr>
						<th class="text-light" width="25%">아이디</th>
						<td>
							<input type="text" name="id" size="50">
						</td>
					</tr>
					<tr>
						<th class="text-light"  width="25%">이름</th>
						<td>
							<input type="text" name="name" size="50">
						</td>
					</tr>
					<tr>
						<th class="text-light"  width="25%">비밀번호</th>
						<td>
							<input type="password" name="password" size="50">
						</td>
					</tr>
					<tr>
						<th class="text-light"  width="25%">이메일</th>
						<td>
							<input type="email" name="email" size="50" placeholder="aaa@gmail.com">
						</td>
					</tr>
					<tr>
						<th class="text-light"  width="25%">전화번호</th>
						<td>
							<input type="text" name="tel" size="50" placeholder="000-0000-0000">
						</td>
					</tr>
					<tr>
						<th class="text-light"  width="25%">우편번호</th>
						<td>
							<input type="text" name="post" size="50">
						</td>
					</tr>
					<tr>
						<th class="text-light"  width="25%">주소</th>
						<td>
							<input type="text" name="addr" size="50" placeholder="경기도 광명시, ~~">
						</td>
					</tr>
				</table>
				<br>
				<input type="submit" value="새 회원 등록">
				<button type="button" id="listBtn">목록</button>
			</form>
		</div>
	</section>
	<footer>
		<!-- 지시자 include, 절대경로 root가 다르다!! 여기서는 맨앞 / 가 Mission-Web을 가리킴  -->
		<%@ include file="/jsp/include/footer.jsp" %>
	</footer>
</body>
</html>