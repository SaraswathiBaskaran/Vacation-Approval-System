<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<form action="editdb.html" method="post">
		<h1>Update the Details as required : </h1>
		<table>
			<tr>
				<td>Enter Employeeid:</td></tr>
			<tr><td>	<input type="text" name="user_role_id"  /></td></tr>
			

			<tr>
				<td>Enter Employeename to be changed:</td></tr>
				<tr><td><input type="text" name="username" /></td>
			</tr>
			<tr>
				<td>Enter Employerole to be changed:</td>
				<td><input type="text" name="role"  /></td>
			</tr>
<tr>
				<td>Enter Contact Number:</td>
				<td><input type="text" name="contactnumber"  /></td>
			</tr>
			<tr>
				<td>Enter Address:</td>
				<td><input type="text" name="address"/></td>
			</tr>
			<tr>
				<td>Enter Vacationstartdate:</td>
				<td><input type="text" name="startDate"  /></td>
			</tr>

			<tr>
				<td>Enter Vacationenddate:</td>
				<td><input type="text" name="endDate" /></td>
			</tr>
			<tr>
				<td>Teamleader:</td>
				<td><input type="text" name="teamleader"  /></td>
			</tr>
			<tr>
				<td>Manager :</td>
				<td><input type="text" name="manager"  /></td>
			</tr>
			<tr>
				<td>Request Status: </td>
				<td><input type="text" name="requestStatus" /></td>
			</tr>
			<tr>
				<td>Comment: </td>
				<td><input type="text" name="comment"  /></td>
			</tr>
			<tr>
				<td><input type="submit" value="Submit the data" /></td>
			</tr>


		</table>
	</form>
</body>
</html>