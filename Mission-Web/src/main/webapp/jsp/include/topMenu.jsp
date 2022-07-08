<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">


<nav class="navbar navbar-dark bg-dark d-flex justify-content-around">
  <div>
    <a class="navbar-brand" href="/Mission-Web">
      <img style="height: 45px; width: 125px;" src="/Mission-Web/resources/images/logo.jpg">
    </a>
  </div>
  <div>
  	<c:if test="${ userVO.type eq 'S' }">				
		<a class="text-light text-decoration-none" href="/Mission-Web/jsp/member/list.jsp">회원관리 | </a> 
	</c:if>
	<a class="text-light text-decoration-none" href="/Mission-Web/jsp/board/list.jsp">게시판 | </a>
	<c:choose>
		<c:when test="${ empty userVO }">					
			<a class="text-light text-decoration-none" href="/Mission-Web/jsp/member/signup.jsp">회원가입 | </a> 
			<a class="text-light text-decoration-none" href="/Mission-Web/jsp/login/login.jsp">로그인 | </a>
		</c:when>
		<c:otherwise>
			<a class="text-light text-decoration-none" href="/Mission-Web/jsp/member/detail.jsp">마이페이지 | </a> 
			<a class="text-light text-decoration-none" href="/Mission-Web/jsp/login/logout.jsp">로그아웃</a>									
		</c:otherwise>
	</c:choose> 
  </div>
  <div class="text-light">
  	<c:if test="${ not empty userVO }">		
		[${ sessionScope.userVO.name }님 접속 중...]
	</c:if>
  </div>
</nav>

