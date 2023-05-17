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
			
		$( '#d1' ).children('color', 'red' );
		$( '#d1' ).children('ol').css('color', 'red' );
				
		$( '#d1' ).prev().css('color', 'green' );
		$( '#d1' ).next().css('color', 'green' );
		
	});
	
</script>
	
</head>
<body>

<div>
	<div> 내용1 </div>
	<div> 내용2 </div>
		<ul>
			<li id="li">사과</li>
			<li>수박</li>
			<li>딸기</li>
		</ul>
		<ol>
			<li id="l2">사과</li>
			<li>수박</li>
			<li>딸기</li>
		</ol>
	</div>
	<div> 
		

</div>

</body>
</html>