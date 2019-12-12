<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*"%>



<%
	String teamleader = request.getParameter("tl");

	String manager = request.getParameter("mn");


	try {
		Class.forName("com.mysql.jdbc.Driver");
		Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/userdetails", "root", "");
		Statement stmt = con.createStatement();
		String s = "select * from user_roles where manager like  '%" + manager + "%' and teamleader like '%"
				+ teamleader + "%'";
		ResultSet rs = stmt.executeQuery(s);
		if (rs.next()) {
%>
<h2 align="center">
	<font><strong>Getting data</strong></font>
</h2>
<table align="center" cellpadding="5" cellspacing="5" border="1">
	<tr>

	</tr>
	<tr bgcolor="#E6E6FA">
		<td><b>Employeeid</b></td>
		<td><b> Employeename</b></td>
		<td><b>Role</b></td>
		<td><b>Contactnumber</b></td>
		<td><b>Address</b></td>
		<td><b>VacationStartDate</b></td>
		<td><b>VacationEndDate</b></td>
		<td><b>TeamLeader</b></td>
		<td><b>Manager</b></td>
		<td><b>RequestStatus</b></td>
		<td><b>Comment</b></td>

	</tr>
	<%
		out.println(" All INCOMING REQUEST ARE: ");
				do {
	%>
	<tr bgcolor="#DEB887">
		<td><%=rs.getString("user_role_id")%></td>
		<td><%=rs.getString("username")%></td>
		<td><%=rs.getString("role")%></td>
		<td><%=rs.getString("contactnumber")%></td>
		<td><%=rs.getString("address")%></td>
		<td><%=rs.getString("startDate")%></td>
		<td><%=rs.getString("endDate")%></td>
		<td><%=rs.getString("teamleader")%></td>
		<td><%=rs.getString("manager")%></td>
		<td><%=rs.getString("requestStatus")%></td>
		<td><%=rs.getString("comment")%></td>
	</tr>

	<%
		} while (rs.next());
			} else
				out.println("NO SPECIFIC DATA IS PRESENT");
		}

		catch (Exception e) {
			System.out.println(e);
		}
	%>
</table>