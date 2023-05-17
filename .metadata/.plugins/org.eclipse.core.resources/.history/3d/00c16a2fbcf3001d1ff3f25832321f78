<%@ page language="java" contentType="text/plain; charset=UTF-8"
    pageEncoding="UTF-8" trimDirectiveWhitespaces="true" %>

<%@ page import="org.json.simple.JSONArray" %>
<%@ page import="org.json.simple.JSONObject" %>
<%@ page import="java.sql.*" %>
<%@ page import="javax.naming.*" %>
<%@ page import="javax.sql.DataSource" %>

<%

Connection conn = null;
PreparedStatement pstmt = null;
ResultSet rs = null;


try{
	Context initCtx = new InitialContext();
	Context envCtx = (Context)initCtx.lookup("java:comp/env");
	DataSource dataSource = (DataSource)envCtx.lookup( "jdbc/mariadb2" );
	
	conn = dataSource.getConnection();
	

    JSONArray arr = new JSONArray();

    while(rs.next()) {
        JSONObject obj = new JSONObject();
        obj.put("name", rs.getString("name"));
        obj.put("publisher", rs.getString("publisher"));
        obj.put("author", rs.getString("author"));
        obj.put("price", rs.getString("price"));
	
	    arr.add( obj );
    }
    
    out.println(arr);


} catch( NamingException e ) {
	System.out.println( "[에러] " + e.getMessage() );
} catch( SQLException e ) {
	System.out.println( "[에러] " + e.getMessage() );
} finally {
	
	if( rs != null ) rs.close();
	if( pstmt != null ) pstmt.close();
	if( conn != null ) conn.close();
}


%>