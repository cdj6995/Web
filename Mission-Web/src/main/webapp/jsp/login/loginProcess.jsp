<%@page import="kr.ac.kopo.member.dao.MemberDAO"%>
<%@page import="kr.ac.kopo.vo.MemberVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	/* 
		순서
		1. 아이디와 패스워드 파라미터 추출
		2. DB에 있는지 확인
		3. 결과 전송
	*/
	request.setCharacterEncoding("utf-8");

	String id = request.getParameter("id");
	String password = request.getParameter("password");
	
	MemberVO memberVO = new MemberVO();
	memberVO.setId(id);
	memberVO.setPassword(password);
	
	MemberDAO dao = new MemberDAO();
	MemberVO userVO = dao.login(memberVO);
	
	String msg = "";
	String url = "";
	if(userVO == null){
		// 로그인 실패
		msg = "아이디 또는 패스워드를 잘못 입력했습니다.";
		url = "login.jsp";
	}else{
		// 로그인 성공
		switch(userVO.getType()){
		case "S" : 
			msg = "관리자님 환영합니다.";
			break;
		case "U" : 
			msg = userVO.getId() + "님 환영합니다.";
			break;
		}
		url = "/Mission-Web";
		
		// 세션 등록
		session.setAttribute("userVO", userVO);
	}
	
	pageContext.setAttribute("msg", msg);
	pageContext.setAttribute("url", url);
%>

<script>
	alert('${ msg }');
	location.href = '${ url }';
</script>





