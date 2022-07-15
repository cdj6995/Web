<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <title>DJ Bank</title>
    <meta content="width=device-width, initial-scale=1.0" name="viewport">
    <jsp:include page="/jsp/include/link.jsp"></jsp:include>
</head>

<body>

	<header>
		<jsp:include page="/jsp/include/topMenu.jsp"></jsp:include>
	</header>
	
    <!-- Carousel Start -->
    <div class="container-fluid p-0 wow fadeIn" data-wow-delay="0.1s">
        <div id="header-carousel" class="carousel slide" data-bs-ride="carousel">
            <div class="carousel-inner">
                <div class="carousel-item active">
                    <img class="w-100" src="/Mini-Pjt/resources/img/goldpig.jpg" alt="Image">
                    <div class="carousel-caption">
                        <div class="container">
                            <div class="row justify-content-center">
                                <div class="col-lg-7">
                                	<c:choose>
                                		<c:when test="${ empty userVO }">
		                                    <h1 class="display-2 text-light mb-5 animated slideInDown">잔액을 조회하세요.</h1>                                		
                                		</c:when>
                                		<c:otherwise>
                                			<h1 class="display-5 text-light mb-2 animated slideInDown">${ accountList[0].type }</h1>
                                			<h3 class="display-10 text-light mb-3 animated slideInDown">입출금 ${ accountList[0].accountNo }</h3>
                                			<h1 class="display-2 text-light mb-5 animated slideInDown">${ accountList[0].balance }원</h1>
                                		</c:otherwise>
                                	</c:choose>
                                    <c:choose>
                                    	<c:when test="${ empty userVO }">
		                                    <a href="${ pageContext.request.contextPath }/login.do" class="btn btn-primary text-dark py-sm-3 px-sm-5 fw-bolder">로그인</a>
		                                    <a href	="" class="btn btn-light py-sm-3 px-sm-5 ms-3 fw-bolder">이체</a>                                    	
                                    	</c:when>
                                    	<c:otherwise>
                                    		<a href="${ pageContext.request.contextPath }/accountSelect.do" class="btn btn-primary text-dark py-sm-3 px-sm-5 fw-bolder">계좌조회</a>
                                    		<a href	="${ pageContext.request.contextPath }/transfer.do" class="btn btn-light py-sm-3 px-sm-5 ms-3 fw-bolder">이체</a>
                                    	</c:otherwise>
                                    
                                    </c:choose>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Carousel End -->

    <footer>
    	<jsp:include page="/jsp/include/footer.jsp"></jsp:include>
    </footer>

    <!-- JavaScript Libraries -->
    <jsp:include page="/jsp/include/script.jsp"></jsp:include>
</body>

</html>