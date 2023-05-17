<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="./css/base/jquery-ui.css" />
<style>
	/* 사용자 스타일 */
	body { font-size: 80%; }
</style>


<script src="./js/jquery-3.7.0.js"> </script>
<script src="./js/jquery-ui.js"> </script>
<script>
	$( document ).ready( function(){
		$('#progressbar').progressbar({
			
			value:10
		});
		
		$('#btn1').button().on('click',function(){
			const value = $( '#progressbar' ).progressbar( 'value' );
			console.log( value );
			
			$('#progressbar').progressbar( 'value' , value - 10  );
		});
			
		$('#btn2').button().on('click',function(){
			const value = $( '#progressbar' ).progressbar( 'value' );
			console.log( value );
			
			$('#progressbar').progressbar( 'value' , value + 10 );	
		});
	});
</script>
</head>
<body>

<div id="progressbar"></div>
<br /><hr /><br/>
<button id="btn1">감소(-10)</button>
<button id="btn2">증가(+10)</button>



</body>
</html>