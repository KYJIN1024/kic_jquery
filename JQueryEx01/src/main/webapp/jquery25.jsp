<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
<script> 
	$.noConflict();
	const J = jQuery
	J( document ).ready( function() {
		//console.log( "Hello jQuery" )
		
		let object = { name: '홍길동' };
		
		J.extend( object, 
				{ region2:'서울시 강남구', part2:'베이스'},
				{ region3:'서울시 서초구', part3:'세컨드'}
			);
	});
		
</script>
</head>
<body>
	<h1 class="c">header-1</h1>
	<h2>header-2</h2>
	<h1 class="c">header-3</h1>
	<h2>header-4</h2>
	<h1 class="c">header-5</h1>

</body>
</html>