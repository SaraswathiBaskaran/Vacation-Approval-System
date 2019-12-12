<%@page import="javax.swing.border.TitledBorder"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="com.lowagie.text.DocumentException.*"%>
<%@page import="com.lowagie.text.Paragraph.*"%>
<%@page import="com.lowagie.text.html.HtmlWriter.*"%>
<%@page import="com.lowagie.text.pdf.PdfWriter.*"%>
<%@page import="com.lowagie.text.Document.*"%>
<%@page import="java.io.*"%>;
<%@page import="java.awt.*"%>
<%@page import="javax.servlet.*"%>
<%@page import="javax.servlet.http.*"%>
<%@page import="com.lowagie.text.*"%>
<%@page import="com.lowagie.text.pdf.*"%>
<%@page import="com.lowagie.text.html.*"%>
<%@page import="java.sql.*,java.util.*"%>
<%@page import="java.awt.*"%>
<%@page import="java.io.IOException"%>
<%@page import="javax.servlet.*"%>
<%@page import="javax.servlet.http.*"%>
<%@page import="com.lowagie.text.*"%>
<%@page import="com.lowagie.text.pdf.*"%>
<%@page import="com.lowagie.text.html.*"%>
<%
	String str = "pdf";

	String user_role_id= request.getParameter("user_role_id");
	PreparedStatement ps = null;
	ResultSet rs = null;
	PdfWriter writer = null;
	File f = null;
	try {

		Document document = new Document();
		if (str.equals("pdf")) {
			response.setContentType("application/pdf");
			PdfWriter.getInstance(document, response.getOutputStream());
		}
		Class.forName("com.mysql.jdbc.Driver");
		Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/userdetails", "root", "");
	//	PreparedStatement ps = null;
	//ps.setInt(1, Integer.parseInt(user_role_id));
			ps = conn.prepareStatement("select * from user_roles where user_role_id="+user_role_id); 
	 rs = ps.executeQuery();
		document.open();
		document.add(new Paragraph(
				"---------------------------------------------------------REPORT of VACATION---------------------------------------------------------\n\n"));
		document.add(new Paragraph(
				"                                                     REPORT CREATED BY THE ADMIN \n\n"));
		document.add(new Paragraph(
				"---------------------------------------------------------------------------------------------------------------------------------"));
		document.addCreationDate();

		while (rs.next()) {
			
			document.add(new Paragraph("EMPLOYEE ID ::" + rs.getString(1) + "\nEMPLOYEE NAME ::"
					+ rs.getString(2) + "\nEMPLOYEEROLE ::" + rs.getString(3) + "\nVACATIONSTART DATE ::"
					+ rs.getString(4) + "\nVACATIONENDDATE ::" + rs.getString(5) + "\nREQUESTSTATUS ::"
					+ rs.getString(8) + "\n\n"));
		}
		document.add(new Paragraph("---------------------------------------------------------PAGE NO::"
				+ document.getPageNumber() + "------------------------------------------------------"));

		document.close();
		conn.close(); 

	} catch (Exception de) {
		de.printStackTrace();
		System.err.println("document: " + de.getMessage());

	}
%>