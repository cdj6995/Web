<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>회원가입</title>
	<jsp:include page="/jsp/include/link.jsp"></jsp:include>
	<jsp:include page="/jsp/include/loginLink.jsp"></jsp:include>
	<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
	<script>
		function checkForm(){
			let f = document.signup
			
			if(f.id.value ===''){
				alert('아이디를 입력하세요')
				f.id.focus()
				return false
			}
			if(f.name.value ===''){
				alert('이름을 입력하세요')
				f.name.focus()
				return false
			}
			if(f.password.value ===''){
				alert('비밀번호를 입력하세요')
				f.password.focus()
				return false
			}
			if(f.email.value ===''){
				alert('이메일을 입력하세요')
				f.email.focus()
				return false
			}
			if(f.tel.value ===''){
				alert('전화번호를 입력하세요')
				f.tel.focus()
				return false
			}
			if(f.roadaddr.value ===''){
				alert('주소를 입력하세요')
				f.addr.focus()
				return false
			}
			if(f.detailaddr.value ===''){
				alert('주소를 입력하세요')
				f.addr.focus()
				return false
			}
			return true
		}
		function sample4_execDaumPostcode() {
	        new daum.Postcode({
	            oncomplete: function(data) {
	                // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

	                // 도로명 주소의 노출 규칙에 따라 주소를 표시한다.
	                // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
	                var roadAddr = data.roadAddress; // 도로명 주소 변수
	                var extraRoadAddr = ''; // 참고 항목 변수

	                // 법정동명이 있을 경우 추가한다. (법정리는 제외)
	                // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
	                if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
	                    extraRoadAddr += data.bname;
	                }
	                // 건물명이 있고, 공동주택일 경우 추가한다.
	                if(data.buildingName !== '' && data.apartment === 'Y'){
	                   extraRoadAddr += (extraRoadAddr !== '' ? ', ' + data.buildingName : data.buildingName);
	                }
	                // 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
	                if(extraRoadAddr !== ''){
	                    extraRoadAddr = ' (' + extraRoadAddr + ')';
	                }

	                // 우편번호와 주소 정보를 해당 필드에 넣는다.
	                document.getElementById('sample4_postcode').value = data.zonecode;
	                document.getElementById("sample4_roadAddress").value = roadAddr;
	                document.getElementById("sample4_jibunAddress").value = data.jibunAddress;
	                
	                // 참고항목 문자열이 있을 경우 해당 필드에 넣는다.
	                if(roadAddr !== ''){
	                    document.getElementById("sample4_extraAddress").value = extraRoadAddr;
	                } else {
	                    document.getElementById("sample4_extraAddress").value = '';
	                }

	                var guideTextBox = document.getElementById("guide");
	                // 사용자가 '선택 안함'을 클릭한 경우, 예상 주소라는 표시를 해준다.
	                if(data.autoRoadAddress) {
	                    var expRoadAddr = data.autoRoadAddress + extraRoadAddr;
	                    guideTextBox.innerHTML = '(예상 도로명 주소 : ' + expRoadAddr + ')';
	                    guideTextBox.style.display = 'block';

	                } else if(data.autoJibunAddress) {
	                    var expJibunAddr = data.autoJibunAddress;
	                    guideTextBox.innerHTML = '(예상 지번 주소 : ' + expJibunAddr + ')';
	                    guideTextBox.style.display = 'block';
	                } else {
	                    guideTextBox.innerHTML = '';
	                    guideTextBox.style.display = 'none';
	                }
	            }
	        }).open();
	    }
	</script>
</head>
<body>
	<header>
		<jsp:include page="/jsp/include/topMenu.jsp"></jsp:include>
	</header>
	
	<section class="d-flex justify-content-center">
		<div class="col-lg-6 wow fadeInUp text-center" data-wow-delay="0.5s">
           <h1 class="display-6 mb-4">회원가입</h1>
           <p class="mb-4">회원가입 후 입출금, 다양한 금융상품 및 이벤트를 즐기세요.</p>
           <form action="${ pageContext.request.contextPath }/signup.do" method="post" name="signup" onsubmit="return checkForm()">
               <div class="row g-3">
                   <div class="col-md-6">
                       <div class="form-floating">
                           <input type="text" class="form-control border-0 bg-light" name="id" placeholder="Your ID">
                           <label for="id">Your ID</label>
                       </div>
                   </div>
                   <div class="col-md-6">
                       <div class="form-floating">
                           <input type="text" class="form-control border-0 bg-light" name="name" placeholder="Your Name">
                           <label for="name">Your Name</label>
                       </div>
                   </div>
                   <div class="col-md-6">
                       <div class="form-floating">
                           <input type="password" class="form-control border-0 bg-light" name="password" placeholder="Your Password">
                           <label for="password">Your password</label>
                       </div>
                   </div>
                   <div class="col-md-6">
                       <div class="form-floating">
                           <input type="text" class="form-control border-0 bg-light" name="gender" placeholder="Your Gender">
                           <label for="gender">Your Gender(M or F)</label>
                       </div>
                   </div>
                   <div class="col-md-12">
                       <div class="form-floating">
                           <input type="email" class="form-control border-0 bg-light" name="email" placeholder="Your Email">
                           <label for="email">Your Email</label>
                       </div>
                   </div>
                   <div class="col-md-12">
                       <div class="form-floating">
                           <input type="text" class="form-control border-0 bg-light" name="tel" placeholder="Your Tel">
                           <label for="tel">Your Tel</label>
                       </div>
                   </div>
                   <div class="col-8">
                       <div class="form-floating">
                           <input type="text" class="form-control border-0 bg-light" id="sample4_postcode" name="post" placeholder="Post">
                           <label for="post">Post</label>
                       </div>
                   </div>
                   <div class="col-4">
                       <div class="form-floating">
	                   	   <input type="button" onclick="sample4_execDaumPostcode()" value="우편번호 찾기"><br>
                       </div>
                   </div>
                   <div class="col-12">
                       <div class="form-floating">
                           <input type="text" class="form-control border-0 bg-light" id="sample4_roadAddress"  name="roadaddr" placeholder="Road Address">
                           <label for="roadaddr">Road Address</label>
                       </div>
                   </div>
                   <div class="col-12">
                       <div class="form-floating">
                           <input type="text" class="form-control border-0 bg-light" id="sample4_jibunAddress"  name="jiadaddr" placeholder="Jibun Address">
                           <label for="jiadaddr">Jibun Address</label>
                       </div>
                   </div>
                   <span id="guide" style="color:#999;display:none"></span>
                   <div class="col-12">
                       <div class="form-floating">
                           <input type="text" class="form-control border-0 bg-light" id="sample4_detailAddress" name="detailaddr" placeholder="Detail Address">
                           <label for="detailaddr">Detail Address</label>
                       </div>
                   </div>
                   <div class="col-12">
                       <div class="form-floating">
                           <input type="text" class="form-control border-0 bg-light" id="sample4_extraAddress" name="extraAddress" placeholder="extraAddress">
                           <label for="extraAddress">(참고항목)</label>
                       </div>
                   </div>
                   <div class="col-12">
                       <button class="btn btn-primary py-3 px-5" type="submit">회원가입</button>
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