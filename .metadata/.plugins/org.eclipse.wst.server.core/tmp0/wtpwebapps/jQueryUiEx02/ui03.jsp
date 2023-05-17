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
			$( '#btn1' ).button({
				icon: 'ui-icon-key',
				//없음, top , bottom, end
				iconPosition: 'end'
			});
			
			// 메서드 체이닝
			$( '#btn2' ).button({
				icon: 'ui-icon-flag',
				showLabel: false
			}).on('click', function() {
				alert( 'btn2 click' )
		});
	});	
</script>
</head>
<body>

<button id="btn1"> 버튼1 </button></br /></br /> 
<div id="btn2"> 버튼 2</div>



</body>
</html>