/**
 * 회원가입 폼 validation 체크
 */

function sendit(){
	let frm = document.joinUser;
	let user_email = frm.user_email;
	let user_pw = frm.user_pw;
	let user_pw_re = frm.user_pw_re;
	//validation check
	//아이디 체크
	if(user_email.value == ""){
		alert("아이디를 입력하세요!")
		user_email.focus();
		return false;
	}

	//비밀번호
	if(user_pw.value == ""){
		alert("패스워드를 입력하세요!")
		user_pw.focus();
		return false;
	}
	//비밀번호 길이확인
	if(user_pw.value.length < 4){
		alert("비밀번호는 4자리이상 입력해주세요!");
		user_pw.focus();
		return false;
	}
	
	//비밀번호확인일치여부
	if(user_pw_re.value != user_pw.value){
		alert("패스워드가 일치하지 않습니다 다시 입력해주세요!")
		user_pw_re.focus();
		return false;
	}
	
	frm.submit();
	
}



















