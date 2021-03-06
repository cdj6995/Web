<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Insert title here</title>
	<link rel="stylesheet" href="/Mission-Web/resources/css/layout.css">
	<link rel="stylesheet" href="/Mission-Web/resources/css/table.css">
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
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
			/* 
			if(f.writer.value === '') {
				alert('작성자를 입력하세요')
				f.writer.focus()
				return false
			}
			 */
			if(f.content.value === '') {
				alert('내용을 입력하세요')
				f.content.focus()
				return false
			}
			
			// 첨부파일 확장자 체크
			if(checkExt(f.attachfile1))
				return false
			if(checkExt(f.attachfile2))
				return false
			
			return true
		}
		
		function checkExt(obj) {
			let forbidName = ['exe','java','class','js','jsp']
			let fileName = obj.value
			let ext = fileName.substring(fileName.lastIndexOf('.')+1)
			
			if(forbidName.includes(ext)){
				alert('['+ext+'] 확장자는 파일 업로드 정책에 위배됩니다.')
				return true
			}
			
			return false
			
		}
		
	</script>
</head>

<body>
	<header>
		<jsp:include page="/jsp/include/topMenu.jsp"></jsp:include>
	</header>
	<section>
		<div align = "center">
		<hr>
		<h2>새글 등록폼</h2>
		<hr>
		<br>
		<form action="${ pageContext.request.contextPath }/board/write.do" method="post" name="writeForm" onsubmit="return checkForm()">
			<%-- <input type="hidden" name="writer" value="${ userVO.id }"> --%>
			<table border="1" style="width : 80%">
				<tr>
					<th class="bg-dark text-white" width="25%">제목</th>
					<td>
						<input type="text" name="title" size="80" >
					</td>
				</tr>
				<tr>
					<th class="bg-dark text-white" width="25%">작성자</th>
					<td>
						<input type="text" name="writer">
						<%-- ${ userVO.id } --%>	
					</td>
				</tr>
				<tr>
					<th class="bg-dark text-white" width="25%">내용</th>
					<td>
						<textarea rows="10" cols="80" name="content"></textarea>
					</td>
				</tr>
				<tr>
					<th class="bg-dark text-white">첨부파일</th>
					<td>
						<input type="file" name="attachfile1"><br>
						<input type="file" name="attachfile2">
					</td>
				</tr>
			</table>
			<br>
			<input type="submit" value="새글 등록">
			<button type="button" id="listBtn">목록</button>	 <%-- type을 submit으로 인식해서 button으로 다시 해준다 --%>
		</form>
	</div>
	</section>
	<footer>
		<!-- 지시자 include, 절대경로 root가 다르다!! 여기서는 맨앞 / 가 Mission-Web을 가리킴  -->
		<%@ include file="/jsp/include/footer.jsp" %>
	</footer>
</body>
</html>
