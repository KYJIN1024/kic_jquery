<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>


<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
<script> 
	
$( document ).ready(function(){
		// parent() / children()
		// prev() / next()
		// sibling()
		// first / last
	
		//$('tr').eq(0).css('color', 'blue' );
		//$('tr').first.css('color', 'blue' );
		//$('tr').last.css('color', 'blue' );
	
		$('tr').eq(-2).css('color' , 'blue' );
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