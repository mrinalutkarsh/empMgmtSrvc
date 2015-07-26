<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Assign Incidents</title>
<style>
div#logout{
    position:fixed;
    bottom:10px;
    
    height:20px;
    width:250px;
    
}
</style>
</head>
<body>
	<h3 align="right"> Welcome <%HttpSession s=request.getSession(true);
 	String name=(String)s.getAttribute("fname");
 %> <%=name %>!</h3>
 <div align="right"><a href="logout.jsp">Logout</a></div>
</body>
</html>