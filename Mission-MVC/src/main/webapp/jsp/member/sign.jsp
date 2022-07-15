<%@page import="kr.ac.kopo.member.dao.MemberDAO"%>
<%@page import="kr.ac.kopo.vo.MemberVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
	request.setCharacterEncoding("utf-8");

	String id = request.getParameter("id");
	String name = request.getParameter("name");
	String password = request.getParameter("password");
	String email = request.getParameter("email");
	String tel = request.getParameter("tel");
	String post = request.getParameter("post");
	String addr = request.getParameter("addr");
	
	MemberVO member = new MemberVO();
	member.setId(id);
	member.setName(name);
	member.setPassword(password);
	member.setEmail(email);
	member.setTel(tel);
	member.setPost(post);
	member.setAddr(addr);

	MemberDAO dao = new MemberDAO();
	dao.insertMember(member);
	
%>
    
<script>
	alert("회원 등록이 성공적으로 이루어졌습니다.")
	location.href = "list.jsp"
</script>