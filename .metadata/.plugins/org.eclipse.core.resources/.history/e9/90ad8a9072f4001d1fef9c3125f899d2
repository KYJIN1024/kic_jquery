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
		
		
		$('#start').spinner({
			min: 1,
			max: 8
			spin: function(){
				$('#end').spinner('value',$(this).spinner('value')+1 );
			}
		});
		$('#end').spinner({
			min: 2,
			max: 9
			spin: function(){
				$('#start').spinner('value',$(this).spinner('value') -1 );
			})
		});
		}
	$('#btn').button();
		
		
</script>
</head>
<body>

<fieldset>
	<legend>구구단 출력</legend>
	<label for="spinner1">시작단</label>
	<input type="text" id="start" value="1" readonly="readonly" />
	~
	<label for="spinner1">끝단</label>
	<input type="text" id="end" value="2" readonly="readonly" />
	<button id="btn">구구단 출력</button>
</fieldset>
<br /><hr /><br />
<div id="result"> </div>

</body>
</html>






