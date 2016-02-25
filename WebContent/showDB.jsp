<%@ page contentType="text/html;charset=utf-8" language="java" import="java.sql.* " %>
<%@ page import="java.io.*" %>
<%
try {
	String driver = "org.postgresql.Driver";
	String url = "jdbc:postgresql://localhost:5432/bookstore";
	String username = "postgres";
	String password = "postit";
	String myDataField1 = null;
	String myDataField2 = null;
	
	
	String myQuery = "SELECT * FROM bookinfo";
	Connection myConnection = null;
	PreparedStatement myPreparedStatement = null;
	ResultSet myResultSet = null;
	Class.forName(driver).newInstance();
	myConnection = DriverManager.getConnection(url,username,password);
	myPreparedStatement = myConnection.prepareStatement(myQuery);
	myResultSet = myPreparedStatement.executeQuery();
	
	if(myResultSet.next())
		myDataField1 = myResultSet.getString("title");
		out.print(myDataField1);
		myDataField2 = myResultSet.getString("author");
		out.print(myDataField2);
	}
	catch(ClassNotFoundException e){e.printStackTrace();}
	catch(SQLException ex)
	{
		out.print("SQLException: "+ex.getMessage());
		out.print("SQLState: " + ex.getSQLState());
		out.print("VendorError: " + ex.getErrorCode());
	}
%>
