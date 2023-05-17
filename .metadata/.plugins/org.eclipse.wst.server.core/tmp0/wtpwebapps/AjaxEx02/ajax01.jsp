<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script>
	window.onload = function() {
		document.getElementById('btn').onclick = function() {
			//alert('click');
			
			const request = new XMLHttpRequest();
			
			request.onreadystatechange = function() {
				if(request.readyState == 4 ) {
					if( request.status == 200 ) {
						alert('정상');
						console.log( request.responseText.trim() );
					}else {
						alert('페이지 처리 에러');
						
					}
				}
			};
			
			//kobis는 서버에서 정책으로 데이터 접근을 허용
			//나머지 - 디폴트로 데이터 접근 거부
			// => 강제로 가져오는 법
			
			//request.open('get' , 'http://192.168.0.6:8080/AjaxEx02/data/json.jsp', true) ;
			//request.open( 'get', 'http://kobis.or.kr/kobisopenapi/webservice/rest/boxoffice/searchWeeklyBoxOfficeList.xml?key=f5eef3421c602c6cb7ea224104795888&targetDt=20230510', true );
			//request.open('get','http://rss.etnews.com/02.xml',true);
			request.open('get','./proxy/json.jsp',true);
		
			request.send() ;
			
			
		};
	};
	
</script>
</head>
<body>

<button id="btn" >요청하기</button>
<br /><hr /><br />
<div id="result"></div>

</body>
</html>