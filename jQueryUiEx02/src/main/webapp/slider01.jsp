<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Color Picker</title>
<link rel="stylesheet" href="./css/base/jquery-ui.css" />
<style>
	/* 사용자 스타일 */
	body { font-size: 80%; }
</style>

<script src="./js/jquery-3.7.0.js"> </script>
<script src="./js/jquery-ui.js"> </script>
<script>
	$( document ).ready( function(){
		$('#colorPicker').colorpicker({
			format: 'rgba',
			inline: true,
			container: true,
			useAlpha: false,
			change: function(event, color){
				console.log('Selected color: ' + color.toRGB());
			}
		});
		
		$( '#btn' ).button().on('click', function(){
			var selectedColor = $('#colorPicker').colorpicker('getValue');
			console.log('Selected color: ' + selectedColor);
		});
	});
</script>
</head>
<body>

<div id="colorPicker"></div>
<br /><hr /><br/>
<button id="btn">선택한 색상 확인</button>
</body>
</html>