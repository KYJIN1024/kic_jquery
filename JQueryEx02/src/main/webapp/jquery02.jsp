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
		$( '#btn' ).on('click',function(){
				$.ajax({
					url:'./data/xml1.jsp',
					type:'get',
					dataType: 'xml',
					success: function( xmlData ) {
						console.log( xmlData );
					},
					error: function(err) {
						console.log( '실패', err.status );
						console.log( '실패', err.responseText );
					}
				})
			});
		});
</script>
</head>
<body>


<button id="btn" />요청</button>
<br /><hr /><br />
<div id="result"></div> 

</body>
</html>