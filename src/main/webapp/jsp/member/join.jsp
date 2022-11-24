<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입</title>
</head>
<script>
function JoinForm_submit() {
	form.loginId.value =form.loginId.value.trim();
	
	if(form.loginId.value.length==0){
		alert('아이디를 입력해주세요')
		form.loginId.focus();
		return;
	}
	
	form.loginPw.value =form.loginPw.value.trim();
	
	if(form.loginPw.value.length==0){
		alert('비밀번호를 입력해주세요')
		form.loginPw.focus();
		return;
	}
	
	form.loginPwConfrim.value =form.loginPwConfrim.value.trim();
	
	if(form.loginPwConfrim.value.length==0){
		alert('비밀번호 확인을 입력해주세요')
		form.loginPwConfrim.focus();
		return;
	}
	
	
	
	
	form.name.value =form.loginPw.value.trim();
	
	if(form.name.value.length==0){
		alert('이름을 입력해주세요')
		form.name.focus();
		return;
	}
}

</script>
<body>
	<h1>회원가입</h1>
	
	<form action="doJoin" method="post" onsubmit="JoinForm_submit(this); return false;">
	<div>
	아이디 :<input  name="loginId" placeholder="아이디를 입력해주세요" type="text" />
	</div>
	<div>
	비밀번호 :<input name="loginPw"  placeholder="비밀번호를 8자리이상 입력해주세요" type="password" /></input>
	</div>
	<div>
	비밀번호 확인 :<input name="loginPwConfirm"  placeholder="비밀번호를 다시 입력해주세요" type="password"/></input>
	
	</div>
	이름 :<input name="name"  placeholder="이름을 입력해주세요" type="text"  /></input>
	
	</div>
	<div>
	<button type="submit">가입</button>
	
	<a href="../home/main">취소</a>
	</div>
	</form>
	
	
</body>
</html>