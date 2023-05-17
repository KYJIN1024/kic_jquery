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
		 $( '#spinner').spinner({
			 min:5,
			 max:250,
			 step: 25,
			 spin: function(){
				 console.log( $(this).spinner( 'value' ) );	
			}
		 });
		 $('#btn').button().on( 'click', function(){
			 console.log( $( '#spinner').spinner( 'value' ) );
		 	});
		});
		
</script>
</head>
<body>

<div>
	<label for="spinner">데이터</label>
	<input type="text" id="spinner" value="5" readonly="readonly" />
</div>
<br /><hr /><br />
<button id="btn">값 확인 </button>

</body>
</html>






