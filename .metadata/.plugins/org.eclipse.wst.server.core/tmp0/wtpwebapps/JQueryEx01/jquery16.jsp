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
		// map() - 내용변경
		// filter() - 검색
		$( 'h1' ).each(function(index,item){
		//	console.log( index, '/', item );
			
			//console.log(item.innerHTML);
			//console.log(this.innerHTML);
			
			this.innerHTML = 'New Text: ' + index;
		});
	});
</script>
</head>
<body>
	

</body>
</html>