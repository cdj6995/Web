<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>로그인</title>
	<jsp:include page="/jsp/include/link.jsp"></jsp:include>
	<jsp:include page="/jsp/include/loginLink.jsp"></jsp:include>
	<script type="text/javascript">
		window.onload = function(){
			<c:if test="${ not empty loginMsg }">
				alert("${loginMsg}");
			</c:if>					
		}
	</script>
</head>
<body>
	<header>
		<jsp:include page="/jsp/include/topMenu.jsp"></jsp:include>
	</header>
	
	<section>
		<div class="container-fluid p-0 wow fadeIn" data-wow-delay="0.1s">
            <div class="carousel-inner">
	            <img class="w-100" src="/Mini-Pjt/resources/img/goldpig.jpg" alt="Image">
	            <div class="carousel-caption">
	                <div class="container">
	                    <div class="row justify-content-center">
                            <form role="form" action="${ pageContext.request.contextPath }/loginProcess.do" method="post" class="login-form">
		                    	<div class="wrap">
							        <div class="login">
							            <h2>DJ Bank</h2>
							            <div class="login_sns">
							            	
								            <li onclick="naverClick();"><a id="naverIdLogin_loginButton" href="javascript:void(0)"><img src="/Mini-Pjt/resources/img/naver.png" style="max-width:100%; max-height:100%" alt="Image"></a></li>
								            <li onclick="kakaoLogin();"><a href="javascript:void(0)"><img src="/Mini-Pjt/resources/img/kakao.png" style="max-width:100%; max-height:100%" alt="Image"></a></li>
							            </div>
							            <div class="login_id">
							                <h4>아이디</h4>
							                <input type="text" name="id" placeholder="ID">
							            </div>
							            <div class="login_pw">
							                <h4>비밀번호</h4>
							                <input type="password" name="password" placeholder="Password">
							            </div>
							            <div class="login_etc">
							                <div class="forgot_pw">
							                <a href="${ pageContext.request.contextPath }/movesignup.do">회원가입</a>
							            	</div>
							            </div>
							            <div class="submit">
							                <input type="submit" value="로그인">
							            </div>
							        </div>
							    </div>
		                    </form>
	                    </div>
	                </div>
	            </div>
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