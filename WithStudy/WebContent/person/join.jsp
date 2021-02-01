<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>WithStudy</title>

</head>
<body>

<%@ include file="../menu_banner.jsp"%>

<div class="show">
	<div class="join">
		<form action="joinPro.jsp" method="post">
			아이디: <input type="text" name="id" style="margin-top: 10px">
			<button value="중복검사" id="check_id"></button> <br><br>
			비밀번호: <input type="password" name="pw" id="pw"><br><br>
			비밀번호확인: <input type="password" name="pw" id="check_pw"><br><br>
			닉네임: <input type="text" name="nick"><br><br>
			이메일: <input type="text" name="email"><br><br>
			생년월일: <input type="text" name="birth"><br><br>
			휴대폰번호: <input type="text" name="phone"><br><br>
			
			<input type="submit" value="가입하기" id="send">
		</form>
	</div>
</div>

<script>

$("#send").click(function() {
	if(("#check_pw").val() != $("#pw").val()){
		alert("비밀번호 확인이 틀렸습니다.");
		$("#check_pw").focus();
		return false;
	
	}
})

</script>
</body>
</html>

