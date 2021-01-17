<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:useBean id="mgr" class="withstudy.PersonMgr"></jsp:useBean>
<%

	request.setCharacterEncoding("UTF-8");

	//값을 받아온다
	String id = request.getParameter("id"); 
	String pw = request.getParameter("pw");
	//PersonMgr에서 re값을 받아온다
	int re = mgr.loginPerson(id, pw);
	
	if(re == 1){ //로그인 성공했을때 
		session.setAttribute("id", id);
		response.sendRedirect("index.jsp");
	}else if(re == 0){ %>
	
		<script>
			alert("비밀번호가 일치하지 않습니다!");
			history.go(-1);
		</script>
	
<%
		
	}else{
%>
	<script>
		alert("존재하지 않는 아이디입니다.");
		history.go(-1);
	</script>
<%
	}
 %>