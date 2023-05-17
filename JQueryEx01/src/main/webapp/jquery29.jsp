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
		document.getElementById('btn1').onclick = function() {
			// $('태그') - selector
			// $('html 내용') - 생성
			
			// appendTo / prependTo / insertAfter / insertBefore
			//$('<i>Hello jQuery</i>').appendTo('#result');1
			$('<i></i>').html('Hello jQuery').prependTo('#result');
		};
	});
	
	
	
</script>
</head>
<body>
	<button id="btn1">내용추가</button>
	<br /> <hr /> <br />
	<div id="result"><b>출력내용</b></div>
	

</body>
</html>