<%@page import="kr.ac.kopo.util.JDBCClose"%>
<%@page import="kr.ac.kopo.util.ConnectionFactory"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>


<%
	Connection conn = new ConnectionFactory().getConnection();
	StringBuilder sql = new StringBuilder();
	sql.append("select id, name, password, type, to_char(reg_date, 'yyyy-mm-dd') as reg_date ");
	sql.append(" from t_member ");
	sql.append(" order by id");
	
	PreparedStatement pstmt = conn.prepareStatement(sql.toString());
	
	ResultSet rs = pstmt.executeQuery();
%>

<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>게시물 목록</title>
	<script src="https://code.jquery.com/jquery-3.6.0.js"></script>
	<script>
		$(document).ready(function() {
						
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
				<th width = 5%>ID</th>
				<th width="10%">이름</th>
				<th width="20%">비밀번호</th>
				<th width="20%">TYPE</th>
				<th width="20%">등록일</th>
				
			</tr>
			<% 
				while(rs.next()){
					String id = rs.getString("id");
					String name = rs.getString("name");
					String password = rs.getString("password");
					String type = rs.getString("type");
					String regDate = rs.getString("reg_date");
			%>
					<tr>
						<th><%= id %></th>
						<th><%= name %></th>
						<th><%= password %></th>
						<th><%= type %></th>
						<th><%= regDate %></th>
					</tr>
			<%			
				}
			%>					
		</table>
		<br>
		<button id="addBtn">새 회원 등록</button>
		
	</div>
</body>
</html>

<%
	JDBCClose.close(pstmt, conn);
%>

