<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>


<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
<script> 
	// window.jquery => jquery => $ (축약된표현) 
	$( document ).ready(function(){
		//전체
		//$( '*' ).css( 'color', 'red' );
		$('*').css({
			color: 'blue' 
		});
	});
	
</script>
	
</head>
<body>
<h2> Header-1</h2>
<h3> Header-2</h3>
<h2> Header-3</h2>
<h3> Header-4</h3>

</body>
</html>