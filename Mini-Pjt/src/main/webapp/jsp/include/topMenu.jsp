<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <title>DJ Bank</title>
    <meta content="width=device-width, initial-scale=1.0" name="viewport">

    <!-- Google Web Fonts -->
    <jsp:include page="/jsp/include/link.jsp"></jsp:include>
</head>

<body>
    <!-- Spinner Start -->
    <div id="spinner" class="show bg-white position-fixed translate-middle w-100 vh-100 top-50 start-50 d-flex align-items-center justify-content-center">
        <div class="spinner-grow text-primary" role="status"></div>
    </div>
    <!-- Spinner End -->


    <!-- Topbar Start -->
    <div class="container-fluid bg-dark text-light p-0">
        <div class="row gx-0 d-none d-lg-flex">
            <div class="col-lg-7 px-5 text-start">
                <div class="h-100 d-inline-flex align-items-center me-4">
                    <small class="fa fa-map-marker-alt text-primary me-2"></small>
                    <small><a href="${ pageContext.request.contextPath }/bankPoint.do">지점찾기 (here↓)</a></small>
                </div>
                <div class="h-100 d-inline-flex align-items-center">
                    <small class="far fa-clock text-primary me-2"></small>
                    <small> 2022.07.13 - 2022.07.21</small>
                </div>
            </div>
            <div class="col-lg-5 px-5 text-end">
                <div class="h-100 d-inline-flex align-items-center me-4">
                    <small class="fa fa-phone-alt text-primary me-2"></small>
                    <small>+010 3333 9999</small>
                </div>
                <div class="h-100 d-inline-flex align-items-center mx-n2">
                    <a class="btn btn-square btn-link rounded-0 border-0 border-end border-secondary" href=""><i class="fab fa-facebook-f"></i></a>
                    <a class="btn btn-square btn-link rounded-0 border-0 border-end border-secondary" href=""><i class="fab fa-twitter"></i></a>
                    <a class="btn btn-square btn-link rounded-0" href=""><i class="fab fa-instagram"></i></a>
                </div>
            </div>
        </div>
    </div>
    <!-- Topbar End -->


    <!-- Navbar Start -->
    <nav class="navbar navbar-expand-lg bg-white navbar-light sticky-top p-0">
        <a href="${ pageContext.request.contextPath }/index.do" class="navbar-brand d-flex align-items-center border-end px-4 px-lg-5">
            <h2 class="m-0"><i class="fa-solid fa-piggy-bank text-primary"></i> DJ Bank</h2>
        </a>
        	<button type="button" class="navbar-toggler me-4" data-bs-toggle="collapse" data-bs-target="#navbarCollapse">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarCollapse">
            <div class="navbar-nav ms-auto p-4 p-lg-0">
            
                <a href="${ pageContext.request.contextPath }/index.do" class="nav-item nav-link">홈</a>
                <a href="${ pageContext.request.contextPath }/openBank.do" class="nav-item nav-link">오픈뱅킹</a>
            	<div class="nav-item dropdown">
                    <a href="#" class="nav-link dropdown-toggle" data-bs-toggle="dropdown">금융 서비스</a>
                    <div class="dropdown-menu bg-light m-0">
                    	<a href="${ pageContext.request.contextPath }/accountInput.do" class="dropdown-item">입금</a>
                    	<a href="${ pageContext.request.contextPath }/accountOutput.do" class="dropdown-item">출금</a>
		                <a href="${ pageContext.request.contextPath }/accountSelect.do" class="dropdown-item">계좌조회</a>
		                <a href="${ pageContext.request.contextPath }/transfer.do" class="dropdown-item">계좌이체</a>
		                <c:choose>
		                	<c:when test="${ not empty userVO }">
				                <a href="${ pageContext.request.contextPath }/makeAccount.do" class="dropdown-item">계좌개설</a>                	
		                	</c:when>
		                </c:choose>		                
                    </div>
                </div>
                
                <div class="nav-item dropdown">
                    <a href="#" class="nav-link dropdown-toggle" data-bs-toggle="dropdown">금융상품</a>
                    <div class="dropdown-menu bg-light m-0">
                        <a href="https://www.kebhana.com/cont/mall/mall16/index.jsp?_menuNo=98767" class="dropdown-item">예금</a>
                        <a href="https://www.kebhana.com/cont/mall/mall17/index.jsp?_menuNo=98772" class="dropdown-item">대출</a>
                        <a href="https://www.kebhana.com/cont/mall/mall19/index.jsp?_menuNo=98924" class="dropdown-item">보험</a>
                        <a href="https://www.kebhana.com/pension/index.do#//HanaBank" class="dropdown-item">퇴직연금/개인형IRP</a>
                    </div>
                </div>
                <a href="${ pageContext.request.contextPath }/board/list.do" class="nav-item nav-link">Q&A</a>
            </div>
            <c:choose>
	            <c:when test="${ empty userVO }">            
		            <a href="${ pageContext.request.contextPath }/login.do" class="btn btn-primary text-dark py-4 px-lg-5 d-none d-lg-block">Login<i class="fa fa-arrow-right ms-3"></i></a>
	            </c:when>
	            <c:otherwise>
	            	<div class="nav-item dropdown">
	                    <div class="nav-link dropdown-toggle bg-primary text-dark py-4 px-lg-3" data-bs-toggle="dropdown">[${ sessionScope.userVO.name }님 매일 행복하세요]</div>
	                    <div class="dropdown-menu bg-primary m-0">
	                        <a href="${ pageContext.request.contextPath }/" class="dropdown-item">마이페이지</a>
	                        <c:choose>
	                        	<c:when test="${ not empty kakao }">
			                        <a onclick="kakaoLogout();" href="javascript:void(0)" class="dropdown-item">로그아웃<i class="fa fa-arrow-right ms-3"></i></a>	                        	
	                        	</c:when>
	                        	<c:when test="${ not empty naver }">
			                        <a onclick="naverLogout();" href="javascript:void(0)" class="dropdown-item">로그아웃<i class="fa fa-arrow-right ms-3"></i></a>	                        	
	                        	</c:when>
	                        	<c:otherwise>
	                        		<a href="${ pageContext.request.contextPath }/logout.do" class="dropdown-item">로그아웃<i class="fa fa-arrow-right ms-3"></i></a>
	                        	</c:otherwise>
	                        </c:choose>
	                    </div>
	                </div>
	            </c:otherwise>            
            </c:choose>
        </div>
    </nav>
    <!-- Navbar End -->

    <!-- JavaScript Libraries -->
    <jsp:include page="/jsp/include/script.jsp"></jsp:include>
</body>
</html>