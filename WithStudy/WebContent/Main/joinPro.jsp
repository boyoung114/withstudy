<%@page import="withstudy.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%

	request.setCharacterEncoding("UTF-8");

%>

<jsp:useBean id="mgr" class="withstudy.PersonMgr"></jsp:useBean>
<jsp:useBean id="bean" class="withstudy.PersonBean"></jsp:useBean>
<jsp:setProperty property="*" name="bean"/>

<%

	int re = mgr.insertPerson(bean);

	if(re == 1){
%>

	<script type="text/javascript">
		alert("회원가입을 축하합니다.");
		document.location.href="login.jsp";
	</script>

<% 
	} else {
	
%>
	<script type="text/javascript">
		alert("회원가입에 실패하였습니다.");
		history.go(-1);
	</script>

<% 
	}
%>
