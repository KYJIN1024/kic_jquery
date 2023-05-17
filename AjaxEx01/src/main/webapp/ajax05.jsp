<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script>
	window.onload = function() {
		let request;
		
		document.getElementById( 'btn1' ).onclick = function() {
			//alert( '버튼 클릭' );
		
			request = new XMLHttpRequest();
			request.open( 'get', 'csv1.jsp', true );
			request.send();
			request.onload = function() {
	            if (request.status == 200) {
	                console.log(request.responseText);
	            }
	        }
	    };
		
		document.getElementById( 'btn2' ).onclick = function() {
			//alert( '버튼 클릭' );
			request = new XMLHttpRequest();
			request.onreadystatechange = function() {
				if( request.readyState == 4 ) {
					if( request.status == 200 ){
						let parser = new DOMParser();
						let xmlDoc = parser.parseFromString(request.responseText, "text/xml");
						
						let ranks = xmlDoc.getElementsByTagName("rank");
						let movieNms = xmlDoc.getElementsByTagName("movieNm");
						
						let table = document.getElementById("result");
						
						for(let i = 0; i < ranks.length; i++ ){
							let row = document.createElement("tr");
							
							let rankCell = document.createElement("td");
							rankCell.innerHTML = ranks[i].childNodes[0].nodeValue;
							row.appendChild(rankCell);
							
							let movieNmCell = document.createElement("td");
							movieNmCell.innerHTML = movieNms[i].childNodes[0].nodeValue;
							row.appendChild(movieNmCell);
							
							table.appendChild(row);
						}
						
					} else {
						alert( "페이지 오류 " );
					}
				}
			};
			request.open( 'get', 'http://kobis.or.kr/kobisopenapi/webservice/rest/boxoffice/searchWeeklyBoxOfficeList.xml?key=f5eef3421c602c6cb7ea224104795888&targetDt=20230510', true );
			request.send();
				
		};
	};
</script>
</head>
<body>

<button id="btn1" >요청하기</button>
<button id="btn2" >요청하기</button>
<br /><hr /><br />
<textarea id="ta" rows="4" cols="100" ></textarea>
<br /><hr /><br />
<table id="result">

</table>	
</body>
</html>