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
</head>
<body>
	<header>
		<jsp:include page="/jsp/include/topMenu.jsp"></jsp:include>
	</header>
	

	<section>
		<div class="container-fluid page-header py-5 my-3 mt-0 wow fadeIn" data-wow-delay="0.1s">
	        <div class="container text-center">
	            <h1 class="display-3 text-white animated slideInDown mb-4">Q&A</h1>
	        </div>
	    </div>
	    
	    
    	<c:choose>
	   		<c:when test="${ not empty boardList }">
			    <table class="table table-hover mx-4 caption-top">
			    	<caption>Q&A 게시판</caption>
			    	<thead class="table-dark">
			    		<tr>
			    			<th scope="col" class="text-center">번호</th>
			    			<th scope="col" class="text-center">제목</th>
			    			<th scope="col" class="text-center">글쓴이</th>
			    			<th scope="col" class="text-center">작성일</th>
			    			<th scope="col" class="text-center">조회수</th>
			    		</tr>
			    	</thead>
			    	<tbody>
			    		<c:forEach items="${ boardList }" var="board">
				    		<tr>
				    			<td style="width: 5%" class="text-center">${ board.no }</td>
				    			<td style="width: 50%" ><a class="text-dark" href="${ pageContext.request.contextPath }/board/detail.do?no=${board.no}">${ board.title }</a></td>
				    			<td style="width: 15%" class="text-center">${ board.writer }</td>
				    			<td style="width: 10%" class="text-center">${ board.regDate }</td>
				    			<td style="width: 10%" class="text-center">${ board.viewCnt }</td>
				    		</tr>	    		
			    		</c:forEach>
			    	</tbody>
			    </table>
			    
				<p class="text-center">
					<a href="">1&nbsp&nbsp</a>
				</p>
    		</c:when>
    		<c:otherwise>
    			<div class="container text-center my-5">
    				<h1 class="my-5">
		    			현재 게시글이 존재하지 않습니다.    			
    				</h1>
    			</div>
    		</c:otherwise>
    	</c:choose>
	    
		
		<form action="${ pageContext.request.contextPath }/board/write.do" class="m-3">
			<input type="hidden" name="groupno" value="-1">
			<input type="hidden" name="order" value="0">
			<input type="hidden" name="parent" value="0">
			<button type="submit" class="btn btn-secondary mb-3">새글쓰기</button>
		</form>
	</section>

	
	<footer>
    	<jsp:include page="/jsp/include/footer.jsp"></jsp:include>
    </footer>

    <!-- JavaScript Libraries -->
    <jsp:include page="/jsp/include/script.jsp"></jsp:include>
</body>
</html>
