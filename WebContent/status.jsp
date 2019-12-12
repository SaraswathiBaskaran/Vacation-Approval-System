<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*"%>



<%
	String user_role_id = request.getParameter("user_role_id");
	try {
		Class.forName("com.mysql.jdbc.Driver");
		Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/userdetails", "root", "");
		Statement stmt = con.createStatement();
		String s = "select requestStatus,comment from user_roles where user_role_id=" +user_role_id;
		ResultSet rs = stmt.executeQuery(s);

		while (rs.next()) {
			out.println("REQUEST STATUS: ");
			out.println(rs.getString(1));
%>
<br />
<%
	out.println("Comment:");
			out.print(rs.getString(2));
		}
	}

	catch (Exception e) {
		System.out.println(e);
	}
%>