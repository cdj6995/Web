<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>계좌 조회</title>
	<jsp:include page="/jsp/include/link.jsp"></jsp:include>
</head>
<body>
	<header>
		<jsp:include page="/jsp/include/topMenu.jsp"></jsp:include>
	</header>
	
	<section>
		<div class="container-fluid page-header py-5 my-3 mt-0 wow fadeIn" data-wow-delay="0.1s">
	        <div class="container text-center">
	            <h1 class="display-3 text-white animated slideInDown mb-4">계좌조회</h1>
	            <nav aria-label="breadcrumb animated slideInDown">
	                <ol class="breadcrumb justify-content-center mb-0">
	                    <li class="breadcrumb-item"><a class="text-white" href="#">DJ Bank</a></li>
	                    <li class="breadcrumb-item"><a class="text-white" href="#">다른은행</a></li>
	                </ol>
	            </nav>
	        </div>
	    </div>
	    
	    
	    
	    <div class="container-xxl py-6">
	        <div class="container">
	            <div class="row g-4 justify-content-center">
	            	<c:forEach items="${ accountList }" var="account">
		                <div class="col-lg-4 col-md-6 wow fadeInUp" data-wow-delay="0.1s">
		                    <div class="courses-item d-flex flex-column bg-light overflow-hidden h-100">
		                        <div class="text-center p-4 pt-0">
		                            <div class="d-inline-block bg-primary text-white fs-5 py-1 px-4 mb-4">${ account.type }</div>
		                            <p>${ account.name }</p>
		                            <p>${ account.accountNo }</p>
		                            <h5 class="mb-3"><i class="fa-solid fa-coins text-primary"></i> ${ account.balance }</h5>
	                                <a href="${ pageContext.request.contextPath }/transfer.do?accountno=${account.accountNo}" class="btn btn-outline-primary border-2" href="">이체</a>
	                                <a href="" class="btn btn-outline-primary border-2" href="">거래내역</a>
		                        </div>
		                        
		                        
		                    </div>
		                </div>	            	
	            	</c:forEach>
	            </div>
	        </div>
	    </div>
	</section>
	
	
	
	<footer>
    	<jsp:include page="/jsp/include/footer.jsp"></jsp:include>
    </footer>

    <!-- JavaScript Libraries -->
    <jsp:include page="/jsp/include/script.jsp"></jsp:include>
    <script src="https://kit.fontawesome.com/5f3d37272a.js" crossorigin="anonymous"></script>
</body>
</html>