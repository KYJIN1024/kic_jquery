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
					alert('정상');
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
				const addresses = xmlData.getElementsByTagName('address');
				let result = '<table width="800" border="1">';
				for( let i = 0; i < addresses.length; i++ ){				
					 const zipcode = addresses[i].getElementsByTagName('zipcode')[0].innerHTML;
				     const sido = addresses[i].getElementsByTagName('sido')[0].innerHTML;
				     const gugun = addresses[i].getElementsByTagName('gugun')[0].innerHTML;
				
					result += '<tr>';
					result += '<td>' + zipcode + '</td>';
					result += '<td>' + sido + '</td>';
					result += '<td>' + gugun + '</td>';
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