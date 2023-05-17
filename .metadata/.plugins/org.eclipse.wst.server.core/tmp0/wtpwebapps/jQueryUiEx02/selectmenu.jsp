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
	body { font-size: 50%; }
</style>

<script src="./js/jquery-3.7.0.js"> </script>
<script src="./js/jquery-ui.js"> </script>
<script>
	$( document ).ready( function(){
		$( '#files').selectmenu({
			width: 500,
			change: function() {
				console.log( $(this).val() );
			}
		});
	});
</script>
</head>
<body>

<select id="files">
	<option disabled="disabled" selected="selected">선택하세요</option>
		<optgroup label="classA">
			<option value="jquery">jQuery.js</option> 
			<option value="jqueryui">jQueryui.js</option> 
		</optgroup>
		<optgroup label="classB">
			<option value="jquery">jQuery.js</option> 
			<option value="jqueryui">jQueryui.js</option> 
		</optgroup>
		<optgroup label="classC">
			<option value="jquery">jQuery.js</option> 
			<option value="jqueryui">jQueryui.js</option> 
		</optgroup>

</select>



</body>
</html>






