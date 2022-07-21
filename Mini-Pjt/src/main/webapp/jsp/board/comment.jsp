<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>글 내용</title>
	<jsp:include page="/jsp/include/link.jsp"></jsp:include>
</head>
<body>
	<header>
		<jsp:include page="/jsp/include/topMenu.jsp"></jsp:include>
	</header>
	

	<section>
		<div class="container-fluid page-header py-5 my-3 mt-0 wow fadeIn" data-wow-delay="0.1s">
	        <div class="container text-center">
	            <h1 class="display-3 text-white animated slideInDown mb-4">댓글 달기</h1>
	        </div>
	    </div>
	    
	    
	    
		<form action="${ pageContext.request.contextPath }/board/commentProcess.do?no=${ board.no }" method="post" class="m-4">			
			<span class="text-dark my-0 mx-2">글 제목</span>
			<input type="text" name="title" class="form-control mb-2 text-dark fw-bolder" placeholder="제목을 입력해주세요" required>
			<span class="text-dark my-0 mx-2">글 내용</span>
			<div class="form-group mb-3">
				<textarea class="form-control text-dark fw-bolder" rows="7" name="content"
					placeholder="내용을 입력해주세요" 
				></textarea>
			</div>
			
			<div class="text-center">
				<button class="btn btn-secondary mb-3"> <a class="text-white" href="${ pageContext.request.contextPath }/board/list.do">목록</a></button>
				<button type="submit" class="btn btn-secondary mb-3"> <a class="text-white">작성</a></button>
			</div>
		</form>
	    
	    
		
	
	</section>

	
	<footer>
    	<jsp:include page="/jsp/include/footer.jsp"></jsp:include>
    </footer>

    <!-- JavaScript Libraries -->
    <jsp:include page="/jsp/include/script.jsp"></jsp:include>
</body>
</html>