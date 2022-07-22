<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Login</title>
	<link rel="stylesheet" href="/Mission-Web/resources/css/layout.css">
	<!-- <link rel="stylesheet" href="/Mission-Web/resources/css/table.css"> -->
	<link rel="stylesheet" href="/Mission-Web/resources/css/login.css">
	<script src="/Mission-Web/resources/js/myJs.js"></script>
</head>
<body>
	<header>
		<jsp:include page="/jsp/include/topMenu.jsp"></jsp:include>
	</header>
	<section>
	    <div class="container">
	        <div class="row full-height justify-content-center">
	            <div class="col-12 text-center align-self-center py-5">
	                <div class="section pb-5 pt-5 pt-sm-2 text-center">
	                    <h6 class="mb-0 pb-3"><span>Log In </span><span>Sign Up</span></h6>
	                    <input class="checkbox" type="checkbox" id="reg-log" name="reg-log" />
	                    <label for="reg-log"></label>
	                    <div class="card-3d-wrap mx-auto">
	                        <div class="card-3d-wrapper">
	                            <div class="card-front">
	                            	<form action="${ pageContext.request.contextPath }/loginProcess.do" method="post" onsubmit="return checkForm()" name="loginForm">
		                                <div class="center-wrap">
		                                    <div class="section text-center">
		                                        <h4 class="mb-4 pb-3">Log In</h4>
		                                        <div class="form-group">
		                                            <input type="text" name="id" class="form-style" placeholder="Your ID" id="logemail">
		                                            <i class="input-icon uil uil-at"></i>
		                                        </div>
		                                        <div class="form-group mt-2">
		                                            <input type="password" name="password" class="form-style" placeholder="Your Password" id="logpass">
		                                            <i class="input-icon uil uil-lock-alt"></i>
		                                        </div>
		                                        <input type="submit" class="btn mt-4 bg-primary text-white" value="로그인">
		                                        <p class="mb-0 mt-4 text-center"><a href="#0" class="link">Forgot your password?</a></p>
		                                    </div>
		                                </div>	                            	
	                            	</form>
	                            </div>
	                            <div class="card-back">
	                                <div class="center-wrap">
	                                    <div class="section text-center">
	                                        <h4 class="mb-4 pb-3">Sign Up</h4>
	                                        <div class="form-group">
	                                            <input type="text" name="logname" class="form-style" placeholder="Your Full Name" id="logname" autocomplete="off">
	                                            <i class="input-icon uil uil-user"></i>
	                                        </div>
	                                        <div class="form-group mt-2">
	                                            <input type="email" name="logemail" class="form-style" placeholder="Your Email" id="logemail" autocomplete="off">
	                                            <i class="input-icon uil uil-at"></i>
	                                        </div>
	                                        <div class="form-group mt-2">
	                                            <input type="password" name="logpass" class="form-style" placeholder="Your Password" id="logpass" autocomplete="off">
	                                            <i class="input-icon uil uil-lock-alt"></i>
	                                        </div>
	                                        <a href="#" class="btn mt-4">submit</a>
	                                    </div>
	                                </div>
	                            </div>
	                        </div>
	                    </div>
	                </div>
	            </div>
	        </div>
	    </div>
	</section>
	<footer>
		<!-- 지시자 include, 절대경로 root가 다르다!! 여기서는 맨앞 / 가 Mission-Web을 가리킴  -->
		<%@ include file="/jsp/include/footer.jsp" %>
	</footer>
</body>
</html>