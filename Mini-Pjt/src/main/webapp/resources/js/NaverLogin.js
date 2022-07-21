var naverLogin = new naver.LoginWithNaverId(
        {
            clientId: "KIQH5BtscdN3fcmJXWQY", //내 애플리케이션 정보에 cliendId를 입력해줍니다.
            callbackUrl: "http://localhost:9999/Mini-Pjt/", // 내 애플리케이션 API설정의 Callback URL 을 입력해줍니다.
            isPopup: false,
            callbackHandle: true
        }
    );	

naverLogin.init();

function naverClick(){
	naverLogin.init();
	
	
	naverLogin.getLoginStatus(function (status) {
        if (status) {
            var email = naverLogin.user.getEmail(); // 필수로 설정할것을 받아와 아래처럼 조건문을 줍니다.
            
            console.log(naverLogin.user.name);
            console.log(naverLogin.user.email);
            
            
            if( email == undefined || email == null) {
                alert("이메일은 필수정보입니다. 정보제공을 동의해주세요.");
                naverLogin.reprompt();
                return;
            }
            
	        location.href = 'loginProcess.do?naverName='+naverLogin.user.name+'&naverEmail='+naverLogin.user.email
        } else {
            console.log("callback 처리에 실패하였습니다.");
        }
        
    });
}

/*
window.addEventListener('load', function () {
    naverLogin.getLoginStatus(function (status) {
        if (status) {
            var email = naverLogin.user.getEmail(); // 필수로 설정할것을 받아와 아래처럼 조건문을 줍니다.
            
            console.log(naverLogin.user.name);
            console.log(naverLogin.user.email); 
            
            if( email == undefined || email == null) {
                alert("이메일은 필수정보입니다. 정보제공을 동의해주세요.");
                naverLogin.reprompt();
                return;
            }
        } else {
            console.log("callback 처리에 실패하였습니다.");
        }
    });
});

*/
var testPopUp;
function openPopUp() {
    testPopUp= window.open("https://nid.naver.com/nidlogin.logout", "_blank", "toolbar=yes,scrollbars=yes,resizable=yes,width=1,height=1");
}
function closePopUp(){
    testPopUp.close();
}

function naverLogout() {
    setTimeout(function() {
        closePopUp();
        }, 1000);
    location.href = 'logout.do'
}



