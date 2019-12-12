<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isELIgnored="false"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Admin</title>
</head>
<body>
	<h1>${headerMessage}</h1>
	<h2>Details submitted by you:</h2>

	<form action="add.html" method="post">
		<table>
			<tr>
				<td><button type="submit" value="addData">Add a Employee
						Information</button></td>
			</tr>
		</table>
	</form>
	<form action="edit.html" method="post">
	<button type="submit" value="edit">Edit a Employee Information</button>
	</form> 
	
	
	<form action="delete.html" method="post">
		<table>
			<tr>
				<td>
					<button type="submit" value="delete">Delete a Employee
						Information</button>
				</td>
			</tr>
		</table>
	</form>
	 <form action="display.jsp" method="post">
		<button type="submit" value="View">View a Employee
			Information</button>
	</form>
	

<form action="generatepdf.html" method="post">
		<button type="submit" value="View">Generate PDFs report
			</button>
	</form>


</body>
</html>