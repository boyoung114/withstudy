<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>WithStudy</title>
</head>
<body>
<%@ include file="menu_banner.jsp"%>

<div class="show">
	
	<form action="joinPro.jsp" method="post">
		아이디: <input type="text" name="id" >
		<button value="중복검사" id="check_id"></button>
		비밀번호: <input type="password" name="pw" id="pw"><br>
		비밀번호확인: <input type="password" name="pw" id="check_pw"><br>
		닉네임: <input type="text" name="nick">
		이메일: <input type="text" name="email"><br>
		생년월일: <input type="text" name="birth"><br>
		휴대폰번호: <input type="text" name="phone"><br>
		
		<input type="submit" value="가입하기" id="send">
	</form>
</div>


</body>
</html>