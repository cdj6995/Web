<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Q&A</title>
	<jsp:include page="/jsp/include/link.jsp"></jsp:include>
	<script>
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
	
	<!-- Page Header Start -->
    <div class="container-fluid page-header py-6 my-6 mt-0 wow fadeIn" data-wow-delay="0.1s">
        <div class="container text-center">
            <h1 class="display-2 text-white animated slideInDown mb-4">Q&A</h1>
        </div>
    </div>
    <!-- Page Header End -->

	
	<footer>
    	<jsp:include page="/jsp/include/footer.jsp"></jsp:include>
    </footer>

    <!-- JavaScript Libraries -->
    <jsp:include page="/jsp/include/script.jsp"></jsp:include>
</body>
</html>
