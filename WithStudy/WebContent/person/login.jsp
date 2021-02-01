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
<% request.setCharacterEncoding("UTF-8"); %>

<div class="show">
	<div class="login">
		<form action="loginPro.jsp" method="post">
			아이디: <input type="text" style="margin-top: 100px;" name="id"> <br>
			비밀번호: <input type="password" name="pw" style="margin-bottom: 10px;"> <br>
			<input type="submit" value="로그인" class="loginbutton"> <a href="join.jsp" class="joinbutton"><i class="fas fa-users"></i> 회원가입</a> 
		</form>
	</div>
</div>


</body>
</html>