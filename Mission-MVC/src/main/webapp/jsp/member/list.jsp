<%@page import="kr.ac.kopo.vo.MemberVO"%>
<%@page import="java.util.List"%>
<%@page import="kr.ac.kopo.member.dao.MemberDAO"%>
<%@page import="kr.ac.kopo.util.JDBCClose"%>
<%@page import="kr.ac.kopo.util.ConnectionFactory"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%
	MemberDAO dao = new MemberDAO();
	List<MemberVO> list = dao.showAll();
	
	pageContext.setAttribute("list", list);
%>

<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>회원 조회</title>
	<script src="https://code.jquery.com/jquery-3.6.0.js"></script>
	<script>
		$(document).ready(function() {
			 $('#addBtn').click( () => {
				 location.href = 'signup.jsp'
			 })
		})
	</script>
	<link rel="stylesheet" href="/Mission-Web/resources/css/layout.css">
<!-- 	<link rel="stylesheet" href="/Mission-Web/resources/css/table.css"> -->
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
	<script src="/Mission-Web/resources/js/myJs.js"></script>
</head>
<body>
	<header>
		<jsp:include page="/jsp/include/topMenu.jsp"></jsp:include>
	</header>
	<section>
		<div align="center">
			<hr>
			<h2>전체 회원 보기</h2>
			<hr>
			<br>
			<table class="table table-dark" style = "width : 80%">
				<thead>
					<tr>
						<th width = 12%>ID</th>
						<th width= 12%>이름</th>
						<th>이메일</th>
						<th width="10%">TYPE</th>
						<th width="20%">등록일</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach var="member" items="${ list }">
						<tr align="center">
							<td>
								<a class="text-light text-decoration-none" href="detail.jsp?id=${ member.id }">
									<c:out value="${ member.id }"/>						
								</a>
							</td>
							<td>
								<a class="text-light text-decoration-none" href="detail.jsp?id=${ member.id }">
									<c:out value="${ member.name }"/>
								</a>
							</td>
							<td>
								<c:out value="${ member.email }"/>
							</td>
							<td>
								<c:out value="${ member.type }"/>
							</td>
							<td>
								<c:out value="${ member.regDate }"/>
							</td>
						</tr>
					</c:forEach>
				
				</tbody>
			</table>
			<br>
			<button id="addBtn">새 회원 등록</button>
		</div>
	</section>
	<footer>
		<!-- 지시자 include, 절대경로 root가 다르다!! 여기서는 맨앞 / 가 Mission-Web을 가리킴  -->
		<%@ include file="/jsp/include/footer.jsp" %>
	</footer>
</body>
</html>
