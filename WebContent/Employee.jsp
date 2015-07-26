<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Employee</title>
<script src="scripts/Employee.js"></script>

<!-- <link rel="stylesheet" href="jquery/jquery-ui.css">
<script src="jquery/jquery-1.11.2.js"></script>
<script src="jquery/jquery-ui.js"></script>

<!-- <script>
  $(document).ready(function(){
		/* alert("in"); */
		
		$(".testlist").hide();
		$("#up").click(function(){
			$("#eid").hide();
			$("#estatus").hide();
			$(".testlist").show();
			
		});
		$("#ne").click(function(){
			$(".testlist").hide();
			$("#eid").show();
			$("#estatus").show();
			/* $(".testlist").show(); */
			
		});
	});
  $(function() {
    $( "#datepicker" ).datepicker();
    $( "#datepicker2" ).datepicker();
  });
  </script> -->

</head>
<%
	HttpSession s = request.getSession();
	if (s == null) {

		RequestDispatcher rd = request
				.getRequestDispatcher("mainmenu.jsp");

		rd.forward(request, response);
	}

	String name = (String) s.getAttribute("fname");
%>
<body onload="byDefault()">


	
	
	<h3 align="right">
		Welcome <%=name%>!
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
	<div style="height: 40px;"></div>
	<form action="emp" method="post" name="Form1" onsubmit="validate()">

		<div>
			<table align="center">
				<tr>
					<th>Employee ID</th>
					<td><input type="text" name="EID" id="eid" /><select
						id="testlist"><option>2280335</option></select></td>
					<th>Password</th>
					<td><input type="password" id="pwd" name="pwd" /></td>
					
				</tr>
				<tr>
					<th>First Name</th>
					<td><input type="text" name="fName" /></td>
					
					<th>Date of joining</th>
					<td><input type="text" id="datepicker" name="DOJ" /> <a
						href="javascript://"
						onClick="window.dateField = document.Form1.DOJ;calendar = window.open('html/calendar.html','cal2','WIDTH=200,HEIGHT=250')">
							<img src='images/calendar01.gif' name=calimgf2
							style="height: 15px; width: 15px" border=0>
					</a></td>
					
					
					
					
				</tr>
				<tr>
					<th>Middle name</th>
					<td><input type="text" name="mName" /></td>
					
					<th>Date of birth</th>
					<td><input type="text" id="datepicker" name="DOB" /> <a
						href="javascript://"
						onClick="window.dateField = document.Form1.DOB;calendar = window.open('html/calendar.html','cal','WIDTH=200,HEIGHT=250')">
							<img src='images/calendar01.gif' name=calimgf1
							style="height: 15px; width: 15px" border=0>
					</a></td>
					
					
				</tr>
				<tr>
					<th colspan="1">Last name</th>
					<td colspan="1"><input type="text" name="lName" /></td>
					<th>Status</th>
					<!-- <td><input type="text" name="status" id="estatus" /> -->
					<td><select id="testlist2" name="status">
						<option>Active</option>
						<option>AWOI</option>
						<option>ML</option>
						<option>Resigned</option>
						<option>Sabatical</option>
						<option>Terminated</option>
					</select></td>
					
				</tr>



			</table>
			<br /> <br />
			<table align="center">
				<tr>
					<td><input type="submit" name="submit1" value="submit" onClick="validate();"/></td>
					<td><input type="reset" name="reset1" value="clear" id="rt" /></td>

					<td><input type="button" value="update" name="update1" id="up"
						onClick="hideIt();" /></td>
					<td><input type="button" value="new employee" id="ne"
						onClick="showIt();" /></td>
				</tr>
			</table>

		</div>
	</form>
</body>
</html>