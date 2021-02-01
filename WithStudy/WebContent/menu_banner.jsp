<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<!-- js -->
<script src="https://code.jquery.com/jquery-1.12.4.min.js"></script>
<!-- css -->
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/withcss.css" />
<!-- 폰트 -->
<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR&display=swap" rel="stylesheet" />
<!-- 폰트어썸 -->
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.14.0/css/all.min.css" integrity="sha512-1PKOgIY59xJ8Co8+NE6FZ+LOAZKjy+KY8iq0G4B3CyeY6wYHN3yt9PW0XpSriVlkMXe40PTKnXrLnZ9+fkDaog==" crossorigin="anonymous" />

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
	<img alt="" src="${pageContext.request.contextPath}/with.png">
</div>
<div class="menu">
	<a href="${pageContext.request.contextPath}/index.jsp">홈페이지 소개</a>	
	<a href="${pageContext.request.contextPath}/index.jsp">자유게시판</a>
	<a href="${pageContext.request.contextPath}/index.jsp">고객센터</a>
		<%
	if(id != null){
	%>
		<a href="${pageContext.request.contextPath}/study/mystudy.jsp"><i class="fas fa-book"></i> <%=id%>님의 마이스터디</a>
		<a href="${pageContext.request.contextPath}/mypage/mypage.jsp">마이페이지</a>
		<a href="${pageContext.request.contextPath}/person/logoutPro.jsp">로그아웃</a>
	<% 
	}else{
	%>
		<a href="${pageContext.request.contextPath}/person/login.jsp"><i class="fas fa-user"></i> 로그인</a>
	<%
	}
 
	%>

</div>


</body>
</html>