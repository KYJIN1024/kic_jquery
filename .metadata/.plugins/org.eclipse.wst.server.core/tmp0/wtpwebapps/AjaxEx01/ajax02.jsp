<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script>
	window.onload = function() {
		document.getElementById( 'btn1' ).onclick = function() {
			//alert( '버튼 클릭' );
			
			
			const request = new XMLHttpRequest();
			request.open( 'get', 'csv1.jsp', true );
			request.send();
			
			console.log( request.responseText );
			
			
		};
		
		document.getElementById( 'btn2' ).onclick = function() {
			//alert( '버튼 클릭' );
			
			console.log( "1" );
			request.onreadystatechange = function() {
				console.log( request.readyState );
				if( request.readyState == 4 ) {
					if( request.status == 200 ){
						//console.log("2");
						//console.log( request.responseText );
						document.getElementById( 'ta' ).value = request.responseText;
						
						const data = request.responseText.trim();
						const rowdatas = data.split( '\n' );
						
						//console.log( rowdatas.length );
						//console.log( rowdatas[0] );
						
						let result = '<table border="1">';
						for( let i=0 ; i< rowdatas.length ; i++){
							let coldatas = rowdatas[i].split( ',' );
							result += '<tr>';
							result += '<td>' + coldatas[0] + '</td>';
							result += '<td>' + coldatas[1] + '</td>';
							result += '<td>' + coldatas[2] + '</td>';
							result += '<td>' + coldatas[3] + '</td>';
							result += '</tr>';
						}
						result += '</table>';
						
						//console.log( result );
						document.getElementById( 'result' ).innerHTML = result;
						
						} else {
						alert( "페이지 오류 " );
					}
				}
			};
			request.open( 'get', 'csv1.jsp', true );
			request.send();
			
			console.log("3")
			//console.log( request.responseText );
			
			
		};
	};
</script>
</head>
<body>

<button id="btn2" >요청하기</button>
<br /><hr /><br />
<textarea id="ta" rows="4" cols="100" ></textarea>
<br /><hr /><br />
<div id="result">
</div>	
</body>
</html>