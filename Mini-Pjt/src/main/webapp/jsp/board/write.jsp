<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>새글작성</title>
	<jsp:include page="/jsp/include/link.jsp"></jsp:include>
</head>
<body>
	<header>
		<jsp:include page="/jsp/include/topMenu.jsp"></jsp:include>
	</header>
	

	<section>
		<div class="container-fluid page-header py-5 my-3 mt-0 wow fadeIn" data-wow-delay="0.1s">
	        <div class="container text-center">
	            <h1 class="display-3 text-white animated slideInDown mb-4">새글작성</h1>
	        </div>
	    </div>
	    
	    
	    <form action="${ pageContext.request.contextPath }/board/writeProcess.do" method="post" class="mx-4">
			<input type="hidden" name="groupno" value="-1">
			<input type="hidden" name="order" value="0">
			<input type="hidden" name="parent" value="0">
			
			<input type="text" name="title" class="form-control mt-4 mb-2" placeholder="제목을 입력해주세요." required>
			<p class="text-dark fw-bolder ml-2">작성자 : ${ sessionScope.userVO.id }</p>
			<div class="form-group mb-3">
				<textarea class="form-control" rows="10" name="content"
					placeholder="내용을 입력해주세요" required
				></textarea>
			</div>
			<button type="submit" class="btn btn-secondary mb-3">제출하기</button>
		</form>
	</section>

	
	<footer>
    	<jsp:include page="/jsp/include/footer.jsp"></jsp:include>
    </footer>

    <!-- JavaScript Libraries -->
    <jsp:include page="/jsp/include/script.jsp"></jsp:include>
</body>
</html>
