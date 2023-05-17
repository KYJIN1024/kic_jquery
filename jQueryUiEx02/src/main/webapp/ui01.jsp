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
		// 사용자 스크립트
		$(document).ready( function() {
			console.log( 'Hello jQuery UI' );
			
			$( '#btn1' ).button();
			$( 'input[type="button"]' ).button();
			$( 'a' ).button();
			$( '#btn2' ).button();
			
		});
		
</script>
</head>
<body>

<input type="button" value="버튼1 " /></br /></br />
<input type="submit" value="버튼2 " /></br /></br />
<button> 버튼3 </button></br /></br />

<button id="btn1"> 버튼4 </button></br /></br /> <!--  css가 포함되어 있음 -->

<a href="https://www.daum.net">다음 바로가기 </a></br /></br />

<div id="btn2"> 버튼 5</div>



</body>
</html>