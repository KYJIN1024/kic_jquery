<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
<script> 
	$(document).ready(function(){
		
		// 내용삭제
		document.getElementById('btn1').onclick = function() {
			$('#d').html( '' );
			
		};
		document.getElementById('btn2').onclick = function() {
			$('#d').empty( '' );
			
		};
		// 태그삭제
		document.getElementById('btn3').onclick = function() {
			$('#d').remove( '' );
		};
		document.getElementById('btn4').onclick = function() {
			$('p').first().remove( '' );
		};
		
	});
	
	
	
</script>
</head>
<body>
	<button id="btn1">내용삭제</button>
	<button id="btn1">내용삭제</button>
	<button id="btn1">내용삭제</button>
	<br /> <hr /> <br />
	<div id="d">
		<p>내용2 </p>		
	</div>
	

</body>
</html>