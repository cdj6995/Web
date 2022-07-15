<%@page import="kr.ac.kopo.vo.MemberVO"%>
<%@page import="kr.ac.kopo.member.dao.MemberDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	MemberVO user = (MemberVO)session.getAttribute("userVO");
	String ID = user.getId();

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
	<link rel="stylesheet" href="/Mission-Web/resources/css/layout.css">
	<link rel="stylesheet" href="/Mission-Web/resources/css/table.css">
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
	<script src="/Mission-Web/resources/js/myJs.js"></script>
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
	<header>
		<jsp:include page="/jsp/include/topMenu.jsp"></jsp:include>
	</header>
	<section>
		<div align = "center">
			<hr>
			<h2>회원 정보 상세 보기</h2>
			<hr>
			<ul class="list-group">
			  <li class="list-group-item bg-secondary text-white">아이디</li>
			  <li class="list-group-item"><c:out value="${ member.id }"></c:out></li>
			  <li class="list-group-item bg-secondary text-white">이름</li>
			  <li class="list-group-item"><c:out value="${ member.name }"></c:out></li>
			  <li class="list-group-item bg-secondary text-white">비밀번호</li>
			  <li class="list-group-item"><c:out value="${ member.password }"></c:out></li>
			  <li class="list-group-item bg-secondary text-white">전화번호</li>
			  <li class="list-group-item"><c:out value="${ member.tel }"></c:out></li>
			  <li class="list-group-item bg-secondary text-white">이메일</li>
			  <li class="list-group-item"><c:out value="${ member.email }"></c:out></li>
			  <li class="list-group-item bg-secondary text-white">회원 유형</li>
			  <li class="list-group-item"><c:out value="${ member.type }"></c:out></li>
			  <li class="list-group-item bg-secondary text-white">우편번호</li>
			  <li class="list-group-item"><c:out value="${ member.post }"></c:out></li>
			  <li class="list-group-item bg-secondary text-white">주소</li>
			  <li class="list-group-item"><c:out value="${ member.addr }"></c:out></li>
			  <li class="list-group-item bg-secondary text-white">등록일</li>
			  <li class="list-group-item"><c:out value="${ member.regDate }"></c:out></li>
			</ul>
			<br>
			<button class="bg-info text-dark" onclick="doAction('M')">수 정</button>&nbsp;&nbsp;
			<button class="bg-danger text-white" onclick="doAction('D')">삭 제</button>&nbsp;&nbsp;
			<c:if test="${ userVO.type eq 'S' }">
				<button onclick="doAction('L')">목 록</button>&nbsp;&nbsp;			
			</c:if>
		</div>
	</section>
	<footer>
		<!-- 지시자 include, 절대경로 root가 다르다!! 여기서는 맨앞 / 가 Mission-Web을 가리킴  -->
		<%@ include file="/jsp/include/footer.jsp" %>
	</footer>
</body>
</html>