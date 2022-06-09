<%@page import="java.util.List"%>
<%@page import="kr.ac.kopo.board.dao.BoardDAO"%>
<%@page import="kr.ac.kopo.board.vo.BoardVO"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="kr.ac.kopo.util.ConnectionFactory"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
	// http://localhost:9999/Mission-Web/jsp/board/detail.jsp?no=21
	/*
		작업순서
		1. no 파라미터 추출
		2. 추출된 no에 해당 게시물 조회 (t_board)
		3. 조회된 게시물을 화면 출력
	*/
	
	int no =Integer.parseInt(request.getParameter("no"));

	BoardDAO dao = new BoardDAO();
	BoardVO board = dao.selectByNo(no);
	
	// 공유영역에 등록!!
	pageContext.setAttribute("board", board);
%>

<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Insert title here</title>
	<script>
		function doAction(type){
			switch (type) {
			case 'U':
				location.href = "update.jsp?no=${param.no}";
				break;
			case 'D':
				if(confirm('삭제하시겠습니까?')){
					location.href = "delete.jsp?no=${param.no}"
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
		<h2>게시판 상세</h2>
		<hr>
		<table border="1" style = "width : 80%">
			
			<tr>
				<th width="25%">번호</th>
				<th>${ board.no }</th>
			</tr>
			<tr>
				<th width="25%">제목</th>
				<th> <c:out value="${ board.title } }"/></th>
			</tr>
			<tr>
				<th width="25%">작성자</th>
				<th><c:out value="${ board.writer }"/></th>
			</tr>
			<tr>
				<th width="25%">조회수</th>
				<th>${ board.viewCnt }</th>
			</tr>
			<tr>
				<th width="25%">등록일</th>
				<th>${ board.regDate }</th>
			</tr>
			<tr>
				<th width="25%">내용</th>
				<th><c:out value="${ board.content }"/></th>
			</tr>
		</table>
		<br>
		<button onclick="doAction('U')">수 정</button>&nbsp;&nbsp;
		<button onclick="doAction('D')">삭 제</button>&nbsp;&nbsp;
		<button onclick="doAction('L')">목 록</button>&nbsp;&nbsp;
	</div>
</body>
</html>