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
						// 문자열
						console.log( typeof request.responseText );
						
						// XML 객체 - 
						//console.log( typeof request.responseXML);
						//console.log( request.responseXML);
						
						const xmlData = request.responseXML;
						
						const names = xmlData.getElementsByTagName( 'name' );
						//console.log( names );
						//console.log( names.length );
						//console.log( names[0] );
						//console.log( names[0].innerHTML );
						const publisher = xmlData.getElementsByTagName( 'publisher' );
						const authors = xmlData.getElementsByTagName( 'author' );
						const prices = xmlData.getElementsByTagName( 'price' );
						
						let result = '<table border="1">'
						for( let i=0 ; i<names.length ; i++ ) {
							result += '<tr>';
							result += '<td>' + names[i].innnerHtml + </td>;
							result += '<td>' + publishers[i].innnerHtml + </td>;
							result += '<td>' + authors[i].innnerHtml + </td>;
							result += '<td>' + prices[i].innnerHtml + </td>;
							result += '</tr>';
							
						}
						result += '</table>'
						
						document.getElementById( 'result' ).innerHTML = result;
						
						} else {
						alert( "페이지 오류 " );
					}
				}
			};
			request.open( 'get', 'xml02.jsp', true );
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