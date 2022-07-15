<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>이체 완료</title>
	<jsp:include page="/jsp/include/link.jsp"></jsp:include>
</head>
<body>
	<header>
		<jsp:include page="/jsp/include/topMenu.jsp"></jsp:include>
	</header>
	
	<section>
		<div class="container-fluid page-header py-5 my-3 mt-0 wow fadeIn" data-wow-delay="0.1s">
	        <div class="container text-center">
	            <h1 class="display-3 text-white animated slideInDown mb-4">송금 완료</h1>
	        </div>
	    </div>
	
	
	</section>
	
	<footer>
    	<jsp:include page="/jsp/include/footer.jsp"></jsp:include>
    </footer>

    <!-- JavaScript Libraries -->
    <jsp:include page="/jsp/include/script.jsp"></jsp:include>
</body>
</html>