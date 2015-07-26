<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Employee Details</title>
<script src="scripts/EmployeeDetails.js"></script>
</head>
<body>
	<h3 align="right">
		Welcome
		<%
		HttpSession s = request.getSession(false);
		String name = (String) s.getAttribute("fname");
	%>
		<%=name%>!
	</h3>
	<div align="right">
		<a href="logout.jsp">Logout</a>
	</div>
<body onload="byDefault()">
	<table width=50% align="center" border="4" cellpadding=0 cellspacing=0>




		<tr>
			<td width=100% align="center" height="35px" width="521">&nbsp;
				Employee Details</td>
		</tr>
	</table>
	<div style="height: 40px;"></div>
	<form action="emp" method="post" name="Form1" onsubmit="validate()">

		<div>
			<table align="center">
				<tr>
					<th>Employee ID</th>
					<td><select id="IDList"><option>2280335</option></select></td>
					<th>State</th>
					<td><select id="state" name="state" onChange="configDropDownLists(this,document.getElementById('city'))">
							<option value="" selected></option>
							<option value="Kar">Kar</option>
							<option value="Bih">Bih</option>
							<option value="Pun">Pun</option>
					</select></td>
				</tr>
				<tr>
					<th>Department</th>
					<td>
					<input type="text" name="department"/>
					<select id="department">
						
						<option>Insurance</option>
						<option >Banking</option>
						<option selected>Human Resource</option>
						<option>Research & Development</option>
						<option>Finance</option>
						<option>Customer Support</option>
					</select></td>
					<th>City</th>
					<td><select id="city"></select></td>

				</tr>
				<tr>
					<th>Designation</th>
					<td>
					<input type="text" name="desig1"/>
					<select id="desig2">
						
						<option>Trainee</option>
						
						<option selected>Software Engineer</option>
						<option>Senior Software Engineer</option>
						<option>Delivery Lead</option>
						<option>Project Manager</option>
					</select></td>
					<th>Address1</th>
					<td><input type="text" name="Address1" id="add1" /> 
					
				</tr>
				<tr>
					
					<th>Location</th>
					<td><input type="text" name="Location" id="loc1" /> 
					<select id="loc2">
						<option>Bangalore</option>
						<option selected>Chennai</option>
						<option>Pune</option>
						<option>Mumbai</option>
						<option>Hyderabad</option>
					</select></td>
					<th>Address2</th>
					<td><input type="text" name="Address2" id="add2" /> 
				</tr>
				<tr>
					<th>Project name</th>
					<td>
					<input type="text" name="proj1"/>
					<select id="proj2">
						
						<option>Cruis</option>
						
						<option selected>FEI</option>
						<option>Gain</option>
						<option>EDW</option>
						<option>Gen5</option>
					</select></td>
					<th>Address3</th>
					<td><input type="text" name="Address3" id="add3" /> 
					
				</tr>
				<tr>
					<th>Country</th>
					<td>
					<input type="text" name="coun1"/>
					<select id="coun2">
						
						<option selected>India</option>
						
						<option >US</option>
						<option>China</option>
						<option>Germany</option>
						<option>Canada</option>
					</select></td>
					<th>Address3</th>
					<td><input type="text" name="Address3" id="add3" /> 
					
				</tr>



			</table>
			<br /> <br />
			<table align="center">
				<tr>
					<td><input type="submit" value="submit" onClick="validate();" /></td>
					<td><input type="reset" value="clear" id="rt" /></td>

					<td><input type="button" value="update" id="up"
						onClick="hideIt();" /></td>
					<td><input type="button" value="new employee" id="ne"
						onClick="showIt();" /></td>
				</tr>
			</table>

		</div>
	</form>
</body>
</html>