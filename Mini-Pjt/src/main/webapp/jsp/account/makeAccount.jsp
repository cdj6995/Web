<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>계좌 개설</title>
	<jsp:include page="/jsp/include/link.jsp"></jsp:include>
	<script>
		function checkForm(){
			let f = document.signup
			
			if(f.type.value ==='none'){
				alert('상품유형을 선택하세요')
				f.type.focus()
				return false
			}
			if(f.sname.value ==='none'){
				alert('상품이름을 선택하세요')
				f.sname.focus()
				return false
			}
			if(f.password.value ===''){
				alert('비밀번호를 입력하세요')
				f.password.focus()
				return false
			}
			return true
		}
	</script>
</head>
<body>
	<header>
		<jsp:include page="/jsp/include/topMenu.jsp"></jsp:include>
	</header>

	<section class="d-flex justify-content-center my-5">
	    <div class="col-lg-6 wow fadeInUp text-center my-5" data-wow-delay="0.5s">
           <h1 class="display-6 mb-4">스마트 계좌개설</h1>
           <p class="mb-4">계좌개설 후 입출금, 다양한 금융상품 및 이벤트를 즐기세요.</p>
           <form action="${ pageContext.request.contextPath }/makeAccountProcess.do" method="post" name="signup" onsubmit="return checkForm()">
           	   <input type="hidden" name="id" value="${ sessionScope.userVO.id }" >
           	   <input type="hidden" name="tel" value="${ sessionScope.userVO.tel }" >
               <div class="row g-3">
                   <div class="col-md-12">
                       <div class="form-floating">
                           <input type="text" class="form-control border-0 bg-light" placeholder="Your ID" readonly>
                           <label class="text-dark fw-bolder" for="id">${ sessionScope.userVO.id }</label>
                       </div>
                   </div>
                   <div class="col-md-12">
                       <div class="form-floating">
                           <input type="text" class="form-control border-0 bg-light" name="name" placeholder="Your Name" readonly>
                           <label class="text-dark fw-bolder" for="name">${ sessionScope.userVO.name }</label>
                       </div>
                   </div>
                   <div class="col-md-12">
                       <select name="type" class="form-control border-0 bg-light">
                           <option class="form-control border-0 bg-light" value="none">상품 유형</option>
                           <option class="form-control border-0 bg-light" value="보통예금">보통예금</option>
                           <option class="form-control border-0 bg-light" value="저축예금">저축예금</option>
                           <option class="form-control border-0 bg-light" value="적금">적금</option> 
                       </select>
                   </div>
                   <div class="col-md-12">
                   	   <select name="sname" class="form-control border-0 bg-light">
                           <option class="form-control border-0 bg-light" value="none">상품 이름</option>
                           <option class="form-control border-0 bg-light" value="나 홀로 통장">나 홀로 통장</option>
                           <option class="form-control border-0 bg-light" value="우린 하나 통장">우린 하나 통장</option>
                           <option class="form-control border-0 bg-light" value="아싸 급여 통장">아싸 급여 통장</option>
                           <option class="form-control border-0 bg-light" value="모으자 연금 통장">모으자 연금 통장</option> 
                       </select>
                       
                   </div>
                   <div class="col-md-12">
                       <div class="form-floating">
                           <input type="password" class="form-control border-0 bg-light" name="password" placeholder="Password">
                           <label for="password">password</label>
                       </div>
                   </div>
                   <div class="col-12">
                       <button class="btn btn-primary py-3 px-5" type="submit">계좌 개설!</button>
                   </div>
               </div>
           </form>
       </div>
	</section>

	<footer>
    	<jsp:include page="/jsp/include/footer.jsp"></jsp:include>
    </footer>

    <!-- JavaScript Libraries -->
    <jsp:include page="/jsp/include/script.jsp"></jsp:include>
</body>
</html>