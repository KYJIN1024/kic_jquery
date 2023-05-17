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
		 const obj  = {name: 'daum', link: 'https://www.daum.net' },
			 
		 $.each( obj, function(key, value){
			console.log( key, '/', value);
			
		 });
		
	});
			
	
</script>
</head>
<body>
	

</body>
</html>