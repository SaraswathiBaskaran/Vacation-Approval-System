<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isELIgnored="false"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body style="background-color:#eef9e5;">
	<h1>${headerMessage}</h1>
	<h2>Details submitted by you:</h2>
	<table>
		<tr>
			<td>User Name:</td>
			<td>${u1.username}</td>

		</tr>
		<tr>
			<td>Password:</td>
			<td>${u1.password }</td>
		</tr>
	</table> 
	<body>
	<h1>${headerMessage}</h1>
	<h2>Tasks to be Performed by the Developer</h2>
	
	<form action="vacationrequest.html" method="post">
		<table>
			<tr>
				<td><button type="submit" value="request">Request Vacation</button></td>
			</tr>
		</table>
	</form>
	<form action="status.jsp" method="post">
		<button type="submit" value="checkstatus">Check the Status</button>
	</form>
	<form action="selectTl.jsp" method="post">
		<table>
			<tr>
				<td>
					<button type="submit" value="selecttl">Select A Team
						Leader from the list</button></td>
			</tr>
		</table>


</body>
</html>