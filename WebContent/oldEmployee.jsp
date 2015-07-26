<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Employee</title>
<style>
div#logout {
	position: fixed;
	bottom: 10px;
	height: 20px;
	width: 250px;
}
</style>
</head>
<%
			HttpSession s = request.getSession();
			if(s==null){
				
				RequestDispatcher rd = request.getRequestDispatcher("mainmenu.jsp");
				
				rd.forward(request, response);
			}
			
			String name = (String) s.getAttribute("fname");
			
		%>
<body>
	<h3 align="right">
		Welcome

		<%=name %>!
	</h3>
	<div align="right">
		<a href="logout.jsp">Logout</a>
	</div>
	<table width=50% align="center" border="4" cellpadding=0 cellspacing=0>




		<tr>
			<td width=100% align="center" height="35px" width="521">&nbsp;
				Employee Data</td>
		</tr>
	</table>
	<!-- <div>Logout</div> -->
	<br/><br/>
	<a href="newEmployee.jsp"> <img src="images/new-employee.png" alt="new employee"
		style="width:200px;border:0"> 
	<br/>
	
	</a>
	<a href="updateEmployee.jsp"> <img src="images/update-employee.png" alt="update employee"
		style="height:60px;border:0">
	</a>


</body>
</html>