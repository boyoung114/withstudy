<%@page import="withstudy.MyStudyBean"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
<title>WithStudy</title>
</head>
<body>

<%@ include file="../menu_banner.jsp"%>

<jsp:useBean id="mgr" class="withstudy.MyStudyMgr"></jsp:useBean>

<%
	request.setCharacterEncoding("utf-8");
	ArrayList<MyStudyBean> ms_arr = new ArrayList<MyStudyBean>(); 
	
	ms_arr = mgr.MyStudytitle(id);
%>

<div class="show">
	<div> <!-- 큰 div -->
	
		<div><!-- 목록 div -->
			<table class="ms_table">
				<th>날짜</th>
				<th>제목</th>
			
		
		<% 
			if(ms_arr.isEmpty()){
				
		%>
				<tr>
					<td colspan="2">등록된 공부가 없습니다.</td>
				</tr>

		<%
			}else{
				
				for(MyStudyBean msB: ms_arr){
					String datestr = msB.getDay();
					String [] date = datestr.split(" ");
					String date_1 = date[0];
					
		%>
				<tr>
				    <td><%=date_1%></td>
				    <td><a href="mystudy_view.jsp?comm_num=<%=msB.getNum()%>"><%=msB.getTitle()%></a></td>
				</tr>

			
		<% 
				}
				
			}
		
		%>
			 </table>
		</div>

		<br>
		검색
		<br><br>
		<a href="mystudy_wirte.jsp" id="gostudy" >공부하기</a><!-- 공부하기 -->
		<a href="mystudy_wirte.jsp" id="gostudy" >퀴즈풀기</a><!-- 퀴즈 -->
	</div>
</div>



</body>
</html>