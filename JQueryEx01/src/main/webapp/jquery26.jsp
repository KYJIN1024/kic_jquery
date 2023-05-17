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
		document.getElementById('btn1').onclick = function() {
			
			const html = document.getElementById('result');
			//html.innerHTML = '<i>새로운 결과</i>';
			html.textContent ='<i>새로운 결과 </i>';
			
			// console.log( html.innerHTML);
			// console.log( html.textContent);
			
			// jQuery
			//$('#result').html('<i>새로운 결과</i>');
			$('#result').text('<i>새로운 결과</i>' );
			
		};
		
	});
		
</script>
</head>
<body>
	<button id="btn1">내용 확인</button>
	<button id="btn2">내용 확인</button>

</body>
</html>