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
		//$('.c1').css('color', 'blue' );
		//$('h2.c1').css('color', 'blue' );  //h2의 c1만 붙도록 제한을 걸어줄수 있음
	});
	
		$('c1.c2').css('color', 'blue' );  //h2의 c1만 붙도록 제한을 걸어줄수 있음
	});
	
</script>
</head>
<body>

<h2 class="c1">Header-1 </h2>
<h3 class="c1 c2">Header-2 </h2>
<h2 class="c2">Header-3 </h2>
<h3 class="c2">Header-4 </h2>


</body>
</html>