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
    $("#btn").click(function(){
    	var startDan = $("#startdan").val();
    	var endDan = $("#enddan").val();
    
		if(!$.isNumeric(startDan) || !$.isNumeric(endDan)){
			alert("숫자를 입력해주세요.");
			return;
		}    	
    	
		startDan = parseInt(startDan);
		endDan = parseInt(endDan);
		
		if(startDan > endDan ){
			alert("시작단은 반드시 끝단보다 작아야 합니다.")
			return;
		}
		
		var result = "";
		
		for(var i=startDan; i<=endDan; i++){
			result += "<p>" + i + "단</p>";
			for(var j=1; j<=9; j++ ){
				result += "<p>" + i + " x " + j + "=" + i*j + "</p>";
			}
			result += "<br/>";
		}
		$("#result").html(result);
    });
});
</script>
</head>
<body>
시작단<input type="text" id="startdan" />

끝단<input type="text" id="enddan" />
<button id="btn"> 구구단 출력</button>
<br /><hr /><br />
<div id="result"></div>


</body>
</html>