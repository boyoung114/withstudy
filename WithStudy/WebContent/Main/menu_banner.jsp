<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<script src="https://code.jquery.com/jquery-1.12.4.min.js"></script>
<link rel="stylesheet" href="withcss.css" />
<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR&display=swap" rel="stylesheet" />
<meta charset="UTF-8">
<title>Insert title here</title>

<%

	request.setCharacterEncoding("utf-8");
	String id = null;
	
	if(session.getAttribute("id") != null){
		id = (String)session.getAttribute("id");
	}
	
	
%>


</head>
<body>
<div class="banner">
	<img alt="" src="with.png">
</div>
<div class="menu">
	<a href="index.jsp">홈페이지 소개</a>	
	<a href="index.jsp">자유게시판</a>
		<%
	if(id != null){
	%>
		<a class=><%=id%>님, 어서오세요!</a>
		<a href="logoutPro.jsp">로그아웃</a>
	<% 
	}else{
	%>
		<a href="login.jsp">로그인</a>
	<%
	}
 
	%>
	<a href="index.jsp">고객센터</a>

</div>


</body>
</html>