<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>


<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
<script> 
	$(document).ready(function(){
	
	
		/* $( '#btn1' ).on('click',function(){
			alert( 'btn1 클릭' );
		});
		$( '#btn2' ).on('click',function(){
			alert( 'btn2 클릭' );
		});  */
		
		$( 'button' ).on('click',function(){
			alert( 'button 클릭' + $( this ).attr( 'id' ) );
		});
	});
</script>
</head>
<body>


<button id="btn1" />버튼 1</button><br /><br /> 
<button id="btn2" />버튼 2</button><br /><br /> 
<button id="btn3" />버튼 3</button><br /><br /> 


</body>
</html>