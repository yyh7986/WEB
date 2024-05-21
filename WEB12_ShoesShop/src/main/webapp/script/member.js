function loginCheck(){
	if(document.loginForm.userid.value == ""){
		alert("아이디를 입력하세요");
		document.loginForm.userid.focus();
		return false;
	}else if(document.loginForm.pwd.value == ""){
		alert("패스워드를 입력하세요");
		document.loginForm.pwd.focus();
		return false;
	}else{
		return true;
	}
}

function go_next(){
	
	// 자바 스크립트에서 Html 태그에 접근할때, 둘의 name 값이 같으면, 그 둘은 배열로 처리합니다
	// document.contractFrm.okon 이 두개이므로
	// 하나는 document.contractFrm.okon[0]
	// 다른 하나는 document.contractFrm.okon[1] 으로 인식합니다.
	
	if(document.contractForm.okon[1].checked == true){
		alert('회원 약관에 동의 하셔야 회원으로 가입이 가능합니다');
	}else{
		document.contractForm.submit();
	}
}

function idcheck(){
	if(document.joinForm.userid.value == ""){
		alert("아이디를 입력하세요");
		document.joinForm.userid.focus();
		return;
	}
	let url = "shop.do?command=idcheckForm&userid=" + document.joinForm.userid.value;
	let opt = "toolbar=no, menubar=no, resizable=no, width=500, height=250, scrollbars=no";
	window.open(url, "idcheck", opt);
	
}

function idok(userid){
	opener.joinForm.userid.value = userid;
	opener.joinForm.reid.value = userid;
	self.close();
}

function post_zip(){
	let url = "shop.do?command=findZipnum";
	let opt = "menubar=no, scrollbars=no, width=550, height=300, top=300, left=300";
	window.open(url, "findZipnum", opt);
}

function addressOk(zip_num, sido, gugun, dong){
	opener.document.joinForm.zip_num.value = zip_num;
	opener.document.joinForm.address1.value = sido + " " + gugun + " " + dong;
	self.close();
}

function go_save(){
	if (document.joinForm.userid.value == "") {
		alert("아이디를 입력하여 주세요.");
		document.joinForm.userid.focus();
	}else if(document.joinForm.reid.value != document.joinForm.userid.value) {
		alert("아이디 중복확인을 하지 않았습니다");
		document.joinForm.userid.focus();
	}else if(document.joinForm.pwd.value == "") {
		alert("비밀번호를 입력해 주세요.");
		document.joinForm.pwd.focus();
	} else if(document.joinForm.pwd.value != document.joinForm.pwdCheck.value) {
		alert("비밀번호와 비밀번호 확인이 일치하지 않습니다.");
		document.joinForm.pwd.focus();
	} else if(document.joinForm.name.value == "") {
		alert("이름을 입력해 주세요.");
		document.joinForm.name.focus();
	} else if(document.joinForm.phone.value == "") {
		alert("전화번호를 입력해 주세요.");
		document.joinForm.phone.focus(); 
	}else if(document.joinForm.email.value == "") {
		alert("이메일를 입력해 주세요.");
		document.joinForm.email.focus(); 
	}else{
		document.joinForm.submit();
	}
}