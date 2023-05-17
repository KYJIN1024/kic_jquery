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
		//$( '#btn1' ).on('click mouseover mouseleave',function(){
		//	console.log( 'btn1 마우스 이벤트' );
		//});
		
		$('#btn1').on({
			'click': function(){
				console.log( 'click' );
			},
			'mouseover': function(){
				console.log('mouseover')
			}
			'mouseleave': function(){
				console.log('mouseleave')
			}
		});
		
		$( '#btn2' ).on('click',function(){
			alert( 'btn2 클릭' );
		});
		$( '#btn3' ).on('click',function(){
			alert( 'btn3 클릭' );
		});
	});
</script>
</head>
<body>

<input type="button" id="btn1" value="버튼1" /> <br /><br />
<button id="btn2" />버튼 2</button><br /><br /> 
<div id="btn3" style="width:200px; height:20px;border:1px solid black"> 버튼 3 </div>

</body>
</html>