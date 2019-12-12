<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isELIgnored="false"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body bgcolor="#F08080">
	<h1>${headerMessage}</h1>
	<h2>Tasks performed by the Lead :</h2>
	<form action="viewingrequesttl.jsp" method="post">
		<table>
			<tr>
				<td><button type="submit" value="viewincomingrequest">View
						All Incoming Request</button></td>
			</tr>
		</table>
	</form>
	<form action="rejectrequestmn.jsp" method="post">
		<button type="submit" value="Reject A Request">Reject A
			Request</button>
	</form>
	<form action="approvetl.jsp" method="post">
		<table>
			<tr>
				<td>
					<button type="submit" value="Approve A Request">Approve a
						Request</button>
				</td>
			</tr>
		</table>

	</form>
<form action="assigntomn.jsp" method="post">
		<table>
			<tr>
				<td>
					<button type="submit" value="Assign again">Assigned request to Manager
					</button>
				</td>
			</tr>
		</table>

	</form>
</body>
</html>