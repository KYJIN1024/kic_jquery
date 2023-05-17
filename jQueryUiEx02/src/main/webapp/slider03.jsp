<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
<link rel="stylesheet" href="./css/base/jquery-ui.css" />
<style>
	/* 사용자 스타일 */
	body { font-size: 80%; }
</style>

<script src="./js/jquery-3.7.0.js"> </script>
<script src="./js/jquery-ui.js"> </script>
<script>
	$( document ).ready( function(){
		$('#slider').slider({
			range: true,
			min : 0,
			max : 500,
			values: [ 75, 300 ],
			slide: function(event, ui) {
				console.log( $(this).slider('values', 0), '/',  $(this).slider('values', 0) );
				
			}
			
		});
		
		$( '#btn' ).button().on('click', function(){
			console.log( $('#slider').slider('values') );
		});
	});
</script>
</head>
<body>

<div id="colorPicker"></div>
<br /><hr /><br/>
<button id="btn">확인</button>
</body>
</html>