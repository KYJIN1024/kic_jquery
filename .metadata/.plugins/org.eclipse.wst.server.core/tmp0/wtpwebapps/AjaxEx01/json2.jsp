<%@ page language="java" contentType="text/plain; charset=UTF-8"
    pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>

<%

	sbJson.append( "[" );
	while(rs.next() ){
		sbJson.append( "{" );
		sbJson.append( "\"name\": \" + rs.getString( "name" ) + "\"," );
		sbJson.append( "\"publisher\": \" + rs.getString( "publisher" ) + "\"," );
		sbJson.append( "\"author\": \" + rs.getString( "author" ) + "\"," );
		sbJson.append( "\"price\": \" + rs.getString( "price" ) + "\"," );
		sbJson.append( "}," );
	}
	sbJson.append( "]" );

		
		
	
	
	
	
	
}






%>   