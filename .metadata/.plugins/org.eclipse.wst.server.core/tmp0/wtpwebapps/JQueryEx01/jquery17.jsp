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
		//$('h1:even').css('color','red');
		//$( 'h1' ).filter( ':even' ).css({
		//	color:'blue',
		//	backgroundColor:'yellow'
		//});
		
		const h1 = $( 'h1' ); //htmlcollection 배열과 비슷
		console.log( h1 );
		h1.filter(':even').css('color','blue');
		h1.filter(':odd').css('color','green');
		
		$( 'h1:nth-child(2n+1)').css('color','yellow');
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