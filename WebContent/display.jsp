<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>

<%
String user_role_id= request.getParameter("user_role_id");
String driverName = "com.mysql.jdbc.Driver";
String connectionUrl = "jdbc:mysql://localhost:3306/";
String dbName = "userdetails";
String userId = "root";
String password ="";

try {
Class.forName(driverName);
} catch (ClassNotFoundException e) {
e.printStackTrace();
}

Connection connection = null;
Statement statement = null;
ResultSet resultSet = null;
%>

<%
try{ 
connection = DriverManager.getConnection(connectionUrl+dbName, userId, password);
statement=connection.createStatement();
String sql ="SELECT * FROM user_roles";

resultSet = statement.executeQuery(sql);
%>
<h2 align="center"><font><strong>Retrieve data</strong></font></h2>
<table align="center" cellpadding="5" cellspacing="5" border="1">
<tr>

</tr>
<tr bgcolor="#191970
">
<td><b>Employeeid</b></td>
<td><b>	Employeename</b></td>
<td><b>Employeerole</b></td>
<td><b>VacationStartDate</b></td>
<td><b>VcationEndDate</b></td>
<td><b>TeamLeader</b></td>
<td><b>Manager</b></td>
<td><b>Requeststatus</b></td>
<td><b>Comment</b></td>
<td><b>Request from Manager</b></td>
</tr>
<% 
while(resultSet.next()){
%>
<tr bgcolor="#20B2AA">

<td><%=resultSet.getString("user_role_id") %></td>
<td><%=resultSet.getString("username") %></td>
<td><%=resultSet.getString("role") %></td>
<td><%=resultSet.getString("contactnumber") %></td>
<td><%=resultSet.getString("address") %></td>
<td><%=resultSet.getString("startDate") %></td>
<td><%=resultSet.getString("endDate") %></td>
<td><%=resultSet.getString("teamleader") %></td>
<td><%=resultSet.getString("Manager") %></td>
<td><%=resultSet.getString("requestStatus") %></td>
<td><%=resultSet.getString("comment") %></td>
<td><%=resultSet.getString("AssignrequestfromMN") %></td>
</tr>

<% 
}

} catch (Exception e) {
e.printStackTrace();
}
%>
</table>