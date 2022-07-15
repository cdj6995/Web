<%@page import="kr.ac.kopo.board.vo.BoardVO"%>
<%@page import="java.util.List"%>
<%@page import="kr.ac.kopo.board.dao.BoardDAO"%>
<%@page import="kr.ac.kopo.util.JDBCClose"%>
<%@page import="kr.ac.kopo.util.ConnectionFactory"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>게시물 목록</title>
	<link rel="stylesheet" href="/Mission-Web/resources/css/layout.css">
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
	<script src="https://code.jquery.com/jquery-3.6.0.js"></script>
	<script>
		$(document).ready(function() {
			
			$("#addBtn").click(function(){
				location.href = 'writeForm.jsp'
			})
		})
		
		function checkLogin(boardNo,viewCnt) {
			location.href = "${ pageContext.request.contextPath }/board/detail.do?no="+boardNo+"&viewCnt="+viewCnt
			/* <c:choose>
				<c:when test="${ empty userVO }">
					if (confirm('로그인 후 사용이 가능합니다\n로그인 페이지로 이동하시겠습니까?')) {
						location.href='/Mission-Web/jsp/login/login.jsp'
					}
					
				</c:when>
				<c:otherwise>
					location.href = 'detail.jsp?no='+boardNo+'&viewCnt='+viewCnt				
				</c:otherwise>
			</c:choose> */
		}

	</script>
</head>
<body>
	<header>
		<jsp:include page="/jsp/include/topMenu.jsp"></jsp:include>
	</header>
	<section>
		<div align="center">
		<hr>
		<h2>전체 게시글 조회</h2>
		<hr>
		<br>
		<table class="table table-dark" style = "width : 80%">
			<thead>
				<tr>
					<th width = 7%>번호</th>
					<th>제목</th>
					<th width="17%">작성자</th>
					<th width="10%">조회수</th>
					<th width="20%">등록일</th>
				</tr>			
			</thead>
			<tbody>
				<c:forEach var="board" items="${ list }" varStatus="loop">
					<tr align="center" <c:if test="${ loop.count mod 2 eq 0 }">class="even"</c:if>>
						<td>${ board.no }</td>
						<td>
							<a class="text-light text-decoration-none" href="javascript:checkLogin(${board.no},${board.viewCnt})">
								<c:out value="${ board.title }"/>
							</a>
						
							<%-- 
							<a href="detail.jsp?no=${ board.no }&viewCnt=${ board.viewCnt }">
								<c:out value="${ board.title }"/>
							</a>
							 --%>
							
						</td>
						<td> <c:out value="${ board.writer }"/></td>
						<td>${ board.viewCnt }</td>
						<td>${ board.regDate }</td>
					</tr>		
				</c:forEach>			
			</tbody>
		</table>
		<br>
		<c:if test="${ not empty userVO }">	
			<button id="addBtn">새 글 등록</button>
		</c:if>
		
	</div>
	</section>
	<footer>
		<!-- 지시자 include, 절대경로 root가 다르다!! 여기서는 맨앞 / 가 Mission-Web을 가리킴  -->
		<%@ include file="/jsp/include/footer.jsp" %>
	</footer>
</body>
</html>
