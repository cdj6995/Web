<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>입금</title>
	<jsp:include page="/jsp/include/link.jsp"></jsp:include>
</head>
<body>
	<header>
		<jsp:include page="/jsp/include/topMenu.jsp"></jsp:include>
	</header>
	
	<section>
		<div class="container-fluid page-header py-5 my-3 mt-0 wow fadeIn" data-wow-delay="0.1s">
	        <div class="container text-center">
	            <h1 class="display-3 text-white animated slideInDown mb-4">입금</h1>
	        </div>
	    </div>
	    
	    <!-- Transfer Start -->
	    <div class="container-xxl py-3">
	        <div class="container text-center">
	            <div class="row g-5">
	                <div class="col-lg-6 wow fadeInUp text-center my-5" data-wow-delay="0.5s">
			           <h1 class="display-6 mb-4">입금하기</h1>
			           <form action="${ pageContext.request.contextPath }/accountInputProcess.do" method="post" name="signup" onsubmit="return checkForm()">
			               <div class="row g-3">
			               	   <div class="col-md-12">
			                       <div class="form-floating">
			                       	   <input type="hidden" name="bankname" value="DJ Bank" >	
			                           <input type="text" class="form-control border-0 bg-light" name="banknamee" placeholder="DJ Bank" readonly>
			                           <label class="text-dark fw-bolder" for="banknamee">DJ Bank</label>
			                       </div>
			                   </div>
			                   <div class="col-md-12">
			                       <div class="form-floating">
			                           <input type="text" class="form-control border-0 bg-l1ight" name="name" placeholder="Your Name" readonly>
			                           <label class="text-dark fw-bolder" for="name">보내는 이 : ${ sessionScope.userVO.name }</label>
			                       </div>
			                   </div>
			                   <div class="col-md-12">
			                       <select name="send" class="form-control border-0 bg-light">
			                           <option class="form-control border-0 bg-light" value="none">입금 계좌번호</option>
			                           <c:forEach items="${ accountList }" var="account">
				                           <option class="form-control border-0 bg-light" value="${ account.accountNo }">${ account.accountNo }</option>			                           
			                           </c:forEach>
			                       </select>
			                   </div>
			                   <div class="col-md-12">
			                       <div class="form-floating">
			                           <input type="text" class="form-control border-0 bg-light" name="money" placeholder="금액">
			                           <label for="money">금액</label>
			                       </div>
			                   </div>
			                   <div class="col-md-12">
			                       <div class="form-floating">
			                           <input type="password" class="form-control border-0 bg-light" name="password" placeholder="Password">
			                           <label for="password">password</label>
			                       </div>
			                   </div>
			                   <div class="col-12">
			                       <button class="btn btn-primary py-3 px-5" type="submit">입금하기</button>
			                   </div>
			               </div>
			           </form>
			       </div>
	            </div>
	        </div>
	    </div>
	    <!-- Transfer End -->
	</section>
	
	<footer>
    	<jsp:include page="/jsp/include/footer.jsp"></jsp:include>
    </footer>

    <!-- JavaScript Libraries -->
    <jsp:include page="/jsp/include/script.jsp"></jsp:include>
</body>
</html>