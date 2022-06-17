/**
 * 등록과 관련된 js
 */
 
 function isNull(obj, msg) {
	if(obj.value == ''){
		alert(msg)
		obj.focus()
		return true
	}
	return false
}


function checkForm() {
	let f = document.loginForm;
	
	if( isNull(f.id, "아이디를 입력하세요") || isNull(f.password, "비밀번호를 입력하세요") ){
		return false
	}
	
	return true;
}