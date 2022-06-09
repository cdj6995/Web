<%@page import="kr.ac.kopo.member.vo.MemberVO"%>
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
</head>
<body>
	<div align="center">
		<hr>
		<h2>전체 회원 보기</h2>
		<hr>
		<br>
		<table border="1" style = "width : 80%">
			<tr>
				<th width = 12%>ID</th>
				<th width= 12%>이름</th>
				<th>이메일</th>
				<th width="10%">TYPE</th>
				<th width="20%">등록일</th>
			</tr>
			<c:forEach var="member" items="${ list }">
				<tr align="center">
					<td>
						<a href="detail.jsp?id=${ member.id }">
							<c:out value="${ member.id }"/>						
						</a>
					</td>
					<td>
						<a href="detail.jsp?id=${ member.id }">
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
		</table>
		<br>
		<button id="addBtn">새 회원 등록</button>
	</div>
</body>
</html>
