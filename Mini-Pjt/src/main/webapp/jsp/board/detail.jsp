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
	            <h1 class="display-3 text-white animated slideInDown mb-4">내 용</h1>
	        </div>
	    </div>
	    
	    
	    <div class="m-4">
			<input type="hidden" name="groupno" value="-1">
			<input type="hidden" name="order" value="0">
			<input type="hidden" name="parent" value="0">
			
			<span class="text-dark my-0 mx-2">글 번호</span>
			<input type="text" name="no" class="form-control mb-2 text-dark fw-bolder" placeholder="${ board.no }" readonly>
			<span class="text-dark my-0 mx-2">글 제목</span>
			<input type="text" name="title" class="form-control mb-2 text-dark fw-bolder" placeholder="${ board.title }" readonly>
			<span class="text-dark my-0 mx-2">작성자</span>
			<input type="text" name="writer" class="form-control mb-2 text-dark fw-bolder" placeholder="${ board.writer }" readonly>
			<span class="text-dark my-0 mx-2">조회수</span>
			<input type="text" name="viewCnt" class="form-control mb-2 text-dark fw-bolder" placeholder="${ board.viewCnt }" readonly>
			<span class="text-dark my-0 mx-2">작성일</span>
			<input type="text" name="viewCnt" class="form-control mb-2 text-dark fw-bolder" placeholder="${ board.regDate }" readonly>
			<span class="text-dark my-0 mx-2">글 내용</span>
			<div class="form-group mb-3">
				<textarea class="form-control text-dark fw-bolder" rows="7" name="content"
					placeholder="${ board.content }" readonly
				></textarea>
			</div>
	    
	    </div>
		
		<div class="text-center">
			<button class="btn btn-secondary mb-3"> <a class="text-white" href="${ pageContext.request.contextPath }/board/list.do">목록</a></button>
			<button class="btn btn-secondary mb-3"> <a class="text-white" href="${ pageContext.request.contextPath }/board/comment.do?no=${ board.no }">답글</a></button>
			<c:if test="${ userVO.id eq board.writer }">
				<button class="btn btn-secondary mb-3"> <a class="text-white" href="#">수정</a></button>
				<button class="btn btn-secondary mb-3"> <a class="text-white" href="#">삭제</a></button>
			</c:if>		
		</div>
	
	</section>

	
	<footer>
    	<jsp:include page="/jsp/include/footer.jsp"></jsp:include>
    </footer>

    <!-- JavaScript Libraries -->
    <jsp:include page="/jsp/include/script.jsp"></jsp:include>
</body>
</html>