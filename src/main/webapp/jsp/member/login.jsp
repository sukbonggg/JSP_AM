<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인</title>
</head>
<script>
function loginForm_submit(form) {
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
	form.submit();
	
}

</script>
<body>
	<h1>로그인</h1>
	
	<form action="dologin" method="post" onsubmit="loginForm_submit(this); return false;">
	<div>
	아이디 :<input  name="loginId" placeholder="아이디를 입력해주세요" type="text" />
	</div>
	<div>
	비밀번호 :<input name="loginPw"  placeholder="비밀번호를 8자리이상 입력해주세요" type="password" /></input>
	</div>
	
	
	
	</div>
	<div>
	<button type="submit">로그인</button>
	
	<a href="../home/main">취소</a>
	</div>
	</form>
	
	
</body>
</html>