<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body bgcolor= #e6e6fa >
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
		<h2>Tasks that can be performed by the Manager</h2>

	<form action="viewreq.jsp" method="post">
		<table>
			<tr>
				<td><button type="submit" value="viewincomingrequest">View Incoming Request</button></td>
			</tr>
		</table>
	</form>
	<form action="reject.html" method="post">
		<button type="submit" value="Reject A Request">Reject A
			Request</button>
	</form>
	<form action="approve.jsp" method="post">
		<table>
			<tr>
				<td>
					<button type="submit" value="Approve A Request">Approve a
						Request</button>
				</td>
			</tr>
		</table>

	</form>
	<form action="assigntolead.jsp" method="post">
		<table>
			<tr>
				<td>
					<button type="submit" value="Assign A Request">Assign a
						Request to TeamLeader Again</button>
				</td>
			</tr>
		</table>aa

	</form>
</body>
</html>