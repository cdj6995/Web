<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Insert title here</title>
	<script src="https://code.jquery.com/jquery-3.6.0.js"></script>
	<script>
		$(document).ready(function() {
			
			$("#listBtn").click(function(){
				location.href = 'list.jsp'
			})
		})
		
		
		function checkForm() {
			let f  = document.writeForm
			
			if(f.title.value === '') {
				alert('제목을 입력하세요')
				f.title.focus()
				return false
			}
			
			if(f.writer.value === '') {
				alert('작성자를 입력하세요')
				f.writer.focus()
				return false
			}
			
			if(f.content.value === '') {
				alert('내용을 입력하세요')
				f.content.focus()
				return false
			}
			
			return true
		}
		
	</script>
</head>
<body>
	<div align = "center">
		<hr>
		<h2>새글 등록폼</h2>
		<hr>
		<br>
		<form action="write.jsp" method="post" name="writeForm" onsubmit="return checkForm()">
			<table border="1" style="width : 80%">
				<tr>
					<th width="25%">제목</th>
					<td>
						<input type="text" name="title" size="80" >
					</td>
				</tr>
				<tr>
					<th width="25%">작성자</th>
					<td>
						<input type="text" name="writer">
					</td>
				</tr>
				<tr>
					<th width="25%">내용</th>
					<td>
						<textarea rows="10" cols="80" name="content"></textarea>
					</td>
				</tr>
			</table>
			<br>
			<input type="submit" value="새글 등록">
			<button type="button" id="listBtn">목록</button>	 <%-- type을 submit으로 인식해서 button으로 다시 해준다 --%>
		</form>
	</div>
</body>
</html>













