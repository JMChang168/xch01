<%@ page contentType="text/html;charset=utf-8" language="java" import="java.sql.* " %>
<%@ page import="java.io.*" %>
<html>
<body>
	<%
		String driver = application.getInitParameter ("driver") ;
		String url = application.getInitParameter("url");
		String user = application.getInitParameter("user");
		String password = application.getInitParameter("password");		
	%>	
	  <h3>driver =<%=driver%></h3>
	  <h3>url =<%=url%></h3>
	  <h3>user =<%=user%></h3>
	  <h3>password =<%=password%></h3>	  
</body>
</html>