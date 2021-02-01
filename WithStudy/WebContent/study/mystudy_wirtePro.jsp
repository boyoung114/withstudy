<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../menu_banner.jsp" %>
<%

	request.setCharacterEncoding("UTF-8");

%>
<jsp:useBean id="mgr" class="withstudy.MyStudyMgr"></jsp:useBean>

<jsp:useBean id="bean" class="withstudy.MyStudyBean"></jsp:useBean>
<jsp:useBean id="newbean" class="withstudy.NewMyStudyBean"></jsp:useBean>
<jsp:useBean id="rebean" class="withstudy.ReMyStudyBean"></jsp:useBean>

<jsp:setProperty property="*" name="bean"/>
<jsp:setProperty property="*" name="newbean"/>
<jsp:setProperty property="*" name="rebean"/>


<%

	request.setCharacterEncoding("UTF-8");

	String title = request.getParameter("title"); 
	
	String[] new_keyword = request.getParameterValues("new_keyword"); /* 반복 */
	String[] new_content = request.getParameterValues("new_content"); /* 반복 */
	
	
	int new_num_c = Integer.parseInt(request.getParameter("new_num_c"));

	String[] re_keyword = request.getParameterValues("re_keyword"); /* 반복 */
	String[] re_content = request.getParameterValues("re_content"); /* 반복 */
	int re_num_c = Integer.parseInt(request.getParameter("re_num_c"));

	int ms = mgr.insertMyStudy(bean, id);
	int nms = mgr.insertNewMyStudy(new_keyword, new_content, new_num_c);
	int rms = mgr.insertReMyStudy(re_keyword, re_content, re_num_c);
	
	if(ms==1 && nms==1 && rms==1){
	%>
	<script>
		alert("공부가 등록되었습니다.");
	</script>
	
		
	<%
		response.sendRedirect("mystudy.jsp");
	}else{%>
	
		<script>
			alert("오류가 발생하여 글이 입력되지 않았습니다.");
			history.go(-1);
		</script>
	
	<%
		
	}
	
%>
