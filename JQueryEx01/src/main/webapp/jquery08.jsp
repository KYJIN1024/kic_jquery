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
		// 속성
		$( 'input[type="text"]').css( 'background-color', 'yellow' );
		 
		//$( 'input[data^="te"]').css( 'background-color', 'blue' );
		//$( 'input[data^="te"]').css( 'background-color', 'blue' );
		// css val
		$( 'input[data^="text1"]').css( 'Hello jQuery' );
		
	});
	
	
</script>
	
</head>
<body>

<input type="text"> <br /> <br />
<input type="password"> <br /> <br />

</body>
</html>