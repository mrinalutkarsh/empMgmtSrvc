<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Main Menu</title>
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
<h3 align="right"> Welcome <%HttpSession s=request.getSession(false);
 	String name=(String)s.getAttribute("fname");
 	System.out.println(s.isNew());
 %> <%=name %>!</h3>
 <div align="right"><a href="logout.jsp">Logout</a></div>
 
<%-- <%String fname=(String)request.getAttribute("fname"); --%> 
<a href="Employee.jsp">Employee</a><br/><br/> <a href="EmployeeDetails.jsp">Employee details</a><br/><br/><a href="Incidents.jsp">Incidents
</a><br/><br/><a href="AssignIncidents.jsp">Assign incident</a>

</body>
</html>