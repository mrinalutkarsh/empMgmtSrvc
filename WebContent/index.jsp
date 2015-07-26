<html>
<head>
<title>Welcome</title>
<script type="text/javascript" src="validations.js"></script>
<style>
p.los {
	font: bold;
	font-family: Arial;
	color: blue;
	font-size: 12px;
}

.hdr {
	/* font: bold italic; */
	font-family: Arial;
	color: black;
	font-size: 12px;
}
</style>
</head>
<body>
	<h3 align="center">
		<font face="calibri">Please enter your credentials:</font>
	</h4>
	
	<form action="validation" name="myform" id="my_form" method="post" >
		<table align="center" border=1>
			<!-- <tr>
				<td width="45%">Employee ID:</td>
				
				
				<td width=5%>&nbsp;</td>
				<td width="50%"><input class="appTextBox" name="EID" type="number" form="my_form" size="12"/><br/></td>
				
				 
			</tr> -->
			<tr>
				<td>Employee ID: <input type="number" name="EID" form="my_form" size="12"  /><br /></td>
			</tr>
			<tr>
				<td>Password:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <input type="password" name="PWD" form="my_form"  size="12"  /><br /></td>
			</tr>
			<tr>
			<td><input type="submit" value="Login" 
					onClick="return validate()"  class="hdr" form="my_form" />
				<input type="reset" value="Clear" class="hdr"
					form="my_form" /></td>
					
					
		</table>
	</form>
	<% HttpSession sess = request.getSession(false);
	if(sess!=null)
		session.invalidate();
	%>
</body>
</html>