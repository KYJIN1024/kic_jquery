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
	$( document ).ready( function(){
		$('input[type="checkbox"]').checkboxradio();
	});
</script>
</head>
<body>

<fieldset>
	<legend> Hotel Ratings </legend>
	<label for="cb1" >2 Star</label><input type="checkbox" id="cb1">
	<label for="cb2" >3 Star</label><input type="checkbox" id="cb2">
	<label for="cb3" >4 Star</label><input type="checkbox" id="cb3">
	<label for="cb4" >5 Star</label><input type="checkbox" id="cb4">
</fieldset>

</body>
</html>