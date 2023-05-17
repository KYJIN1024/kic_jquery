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
			$( 'table' ).css('width', '800' );
			
			
	
		document.getElementById('btn1').onclick = function() {
			$( 'tr:odd' ).css('background-color', 'blue' );
			$( 'tr:even' ).css('background-color', 'gray' );
			
			$( 'tr:first' ).css('background-color', 'red' );
			
			$( 'tr:nth-child(2n)').css('background-color' ,'blue');
			$( 'tr:nth-child(2n+1)').css('background-color' ,'yellow');
			
			$( 'tr:eq(0)').css('background-color' ,'red');
		};
		
		document.getElementById('btn2').onclick = function() {
			$( 'tr:odd' ).css('background-color', 'white' );
			$( 'tr:even' ).css('background-color', 'white' );
		};
	});
	
	
</script>
	
</head>
<body>

<button id="btn1">색상변경</button>
<button id="btn2">원래색상</button>


<table> 
<tr>
	<th>이름</th>
	<th>혈액</th>
	<th>지역</th>
</tr>
<tr>
	<th>tester1</th>
	<th>o형</th>
	<th>부천</th>
</tr>
<tr>
	<th>tester2</th>
	<th>a형</th>
	<th>인천</th>
</tr>
<tr>
	<th>tester3</th>
	<th>b형</th>
	<th>서울</th>
</tr>
<tr>
	<th>tester4</th>
	<th>ab형</th>
	<th>광주</th>
</tr>



</table>

</body>
</html>