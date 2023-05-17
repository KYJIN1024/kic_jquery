<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
<script> 
	$( document ).ready( function() {
	// $('h1').css('background-color', 'orange');
	// $('h1').filter(':even').css('color','red' );
	// $('h1').filter(':odd').css('color','white' );
	
	$('h1').css('background-color', 'orange')
		.filter(':even').css('color','red' )
		.end() //필터적용에 대한 취소
		.filter(':odd').css('color','white' );
	});
		
</script>
</head>
<body>
	<h1>header-1</h1>
	<h1>header-2</h1>
	<h1>header-3</h1>
	<h1>header-4</h1>
	<h1>header-5</h1>

</body>
</html>