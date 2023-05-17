<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<script>
	window.onload = () => {
		document.getElementById('btn').onclick = function() {
			const strDong = document.getElementById('dong').value.trim();
			
			if( strDong.length <2 ){
					alert('동이름을 2자이상 입력');
			} else {
					alrert('정상');
					const request = new XMLHttpRequest();
					
					request.onreadystatechange = function() {
						if( request.readyState == 4 ){
							if( request.status == 200 ){
								//console.log( request.responseText );
								const result = showData(request.responseXML);
								
								document.getElementById('result').innerHTML = result;
								
							}
						}
						
					};
					
					
					let url =  './data/data_xml.jsp?strDong='+ strDong;
					request.open('get', url, true );
					request.send();
				
			}
			
			const showData = function(xmlData) {
				const zipcodes = xmlData.getElementsByTagName('zipcode');
				const sido = xmlData.getElementsByTagName('sido');
				const gugun = xmlData.getElementsByTagName('gugun');
				
				let result = '<table width="800" border="1">';
				for ( let i=0; i<zipcodes.length; i++){
					result += '<tr>';
					result += '<td>' + zipcodes[i].innerHTML + '</td>';
					result += '<td>' + sidos[i].innerHTML + '</td>';
					result += '<td>' + guguns[i].innerHTML + '</td>';
					result += '</tr>'
				}
				result += '</table>';
				return result;
				
			}
			
		};
	};	
</script>
</head>
<body>

<input type="text" id="dong"><button id="btn">동이름 검색</button>
<br /><hr /><br />
<div id="result"></div>


</body>
</html>