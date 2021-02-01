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

<%
	request.setCharacterEncoding("UTF-8");

%>

<div class="show" id="show">
	<div class="study"> <!-- 큰 div -->
	
		<form action="mystudy_wirtePro.jsp" method="post">
			제목: <input type="text" name="title" style="width: 250px; height: 20px;"> 
			<input type="submit" id="submit" value="글쓰기">
			<br><br>
			<div id="new">
				새로배운 것
		
				<button type="button" id="add_newstudy" onclick="showheight()">추가</button>
				<button type="button" id="remove_newstudy">삭제</button><br>
				
				<div>
					<input type="text" id="in_keyword" name="new_keyword" placeholder="키워드" style="margin-top: 10px;"><br>
					<textarea name="new_content" id="in_content" placeholder="내용" ></textarea><br>
					<input type="hidden" name="new_num_c" id="new_num_c" value="0">
				</div>
				<!-- 넘어갈것: 글 num, newnum, new_keyword, new_content, mycheck-->
			</div>
			

			<div id="re">
				복습할 것

				<button type="button" id="add_restudy" onclick="showheight()">추가</button>
				<button type="button" id="remove_restudy">삭제</button><br>
				
				<div>
					<input type="text" id="in_keyword" name="re_keyword" placeholder="키워드" style="margin-top: 10px;"> <br>
					<textarea name="re_content" id="in_content" placeholder="내용"></textarea><br>
					<input type="hidden" name="re_num_c" id="re_num_c" value="0">
				</div>
			</div>
			
			

		</form>
		
	</div> <!-- study --> 
</div> <!-- show --> 


</body>
</html>

<script>
/* new 추가 */
 
var n =0;
var r =0;

function showheight() { 
	if(n >=7){
		var height = document.getElementById("show").clientHeight;
		show.style.height = (height + 100) + "px";
	}
		  
	}

$(function() {
	
		$('#add_newstudy').click(function(){
			add_newstudy();
			n++;
			$('#new_num_c').val(n);
			
		})
		
		
		$('#remove_newstudy').click(function(){
			
			if(n == 0){
				alert("삭제할 수 없습니다.");
			}else{
				remove_newstudy();
				n--;
				$('#new_num_c').val(n);
	
			}
		})

	
});
/* new 추가 */
function add_newstudy() {
	var html ="<div><input type=\"text\" id=\"in_keyword\" name=\"new_keyword\" placeholder=\"키워드\"><br><textarea name=\"new_content\" id=\"in_content\" placeholder=\"내용\" ></textarea><br></div>"	
	$('#new').append(html);

}

/* new 삭제 */
function remove_newstudy() {
	$('#new').children().last().remove();
}



$(function() {
	/* re 추가 */
	$('#add_restudy').click(function(){
		add_restudy();
		r++;
		$('#re_num_c').val(r);
	

	})
	
	$('#remove_restudy').click(function(){
		
		if(r == 0){
			alert("삭제할 수 없습니다.");
		}else{
			remove_restudy();
			n--;
			$('#re_num_c').val(r);
		}
	})
	
});

/* re 추가 */
function add_restudy() {
	var r = 0;
	var html ="<div><input type=\"text\" id=\"in_keyword\" name=\"re_keyword\" placeholder=\"키워드\"><br><textarea name=\"re_content\" id=\"in_content\" placeholder=\"내용\" ></textarea><br></div>"	
	$('#re').append(html);
}

/* re 삭제 */
function remove_restudy() {
	$('#re').children().last().remove();
}
</script>






