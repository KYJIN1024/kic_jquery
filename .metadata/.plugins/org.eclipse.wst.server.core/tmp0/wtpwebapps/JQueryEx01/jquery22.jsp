<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
<script> 
//강사님 추천 잘 알아두기!


	const xml = `<friends>
		<friend>
			<name> tester1 </name>
			<language> Javascript </language>
		</friend>
		<friend>
			<name>tester2</name>
			<language>Java</language>
		</friend>	
		<friend>
			<name>tester3</name>
			<language>Python</language>
		</friend>	
	</friends>`; // 여기서 XML을 문자열로 처리하고 있습니다.
	
	
	$(document).ready(function() {
		console.log( typeof xml );
		
		const xmlDoc = $.parseXML(xml);
		console.log( typeof xmlDoc );
		
		$( xmlDoc ).find('friend').each(function(){
			console.log( $(this).find('name').text() );
			console.log( $(this).find('language').text() );
		});
	});
</script>
</head>
<body>
	

</body>
</html>