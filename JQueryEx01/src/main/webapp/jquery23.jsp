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
		$( 'h2' ).each( function() {
			// is
			if( $(this).is('.c') ){
				$(this).css('color','orange');
			}
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