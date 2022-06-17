<%@page import="kr.ac.kopo.member.vo.MemberVO"%>
<%@page import="kr.ac.kopo.member.dao.MemberDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	String ID = request.getParameter("id");

	MemberDAO dao = new MemberDAO();
	MemberVO member = dao.showById(ID);
	
	pageContext.setAttribute("member", member);
%>    

<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>회원 상세 정보</title>
	<script src="https://code.jquery.com/jquery-3.6.0.js"></script>
	<script>
		function doAction(type){
			switch (type) {
			case 'M':
				location.href = "update.jsp?id=${param.id}";
				break;
			case 'D':
				if(confirm('삭제하시겠습니까?')){
					location.href = "delete.jsp?id=${param.id}"
				}
				break;
			case 'L':
				location.href = "list.jsp"
				break;
			}
		}
		
	</script>
</head>
<body>
	<div align = "center">
		<hr>
		<h2>회원 정보 상세 보기</h2>
		<hr>
		<table border = "1" style="width : 70%">
			<tr>
				<th width="15%">아이디</th>
				<th>
					<c:out value="${ member.id }"></c:out>
				</th>
				<th width="15%">이름</th>
				<th>
					<c:out value="${ member.name }"></c:out>
				</th>
			</tr>
			<tr>
				<th width="15%">비밀번호</th>
				<th>
					<c:out value="${ member.password }"></c:out>
				</th>
				<th width="15%">전화번호</th>
				<th>
					<c:out value="${ member.tel }"></c:out>
				</th>
			</tr>
			<tr>
				<th width="15%">이메일</th>
				<th>
					<c:out value="${ member.email }"></c:out>
				</th>
				<th width="15%">회원 유형</th>
				<th>
					<c:out value="${ member.type }"></c:out>
				</th>
			</tr>
			<tr>
				<th width="15%">우편번호</th>
				<th>
					<c:out value="${ member.post }"></c:out>
				</th>
				<th width="15%">주소</th>
				<th>
					<c:out value="${ member.addr }"></c:out>
				</th>
			</tr>
			<tr>
				<th width="15%">등록일</th>
				<th>
					<c:out value="${ member.regDate }"></c:out>
				</th>
			</tr>
		</table>
		<br>
		<button onclick="doAction('M')">수 정</button>&nbsp;&nbsp;
		<button onclick="doAction('D')">삭 제</button>&nbsp;&nbsp;
		<button onclick="doAction('L')">목 록</button>&nbsp;&nbsp;
	</div>
</body>
</html>