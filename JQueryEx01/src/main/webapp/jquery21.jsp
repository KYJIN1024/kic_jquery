<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
<script> 
////강사님 추천 잘 알아두기!


	//$( document ).ready( function() {
	//	console.log( $(document).find('h2'));
	
	$( document ).find('.c').each(function(index, item) {
		console.log( index,':', this.innerHTML );
		});
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