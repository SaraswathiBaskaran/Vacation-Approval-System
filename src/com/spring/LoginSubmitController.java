
package com.spring;
import java.sql.Connection;

import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import java.io.*;
import com.itextpdf.text.*;
import com.itextpdf.text.pdf.*;
import com.lowagie.text.pdf.PdfWriter;
import com.connection.DbConnection;
import com.spring.Details2;

import com.spring.Details;

@Controller
//@RequestMapping("/success")
public class LoginSubmitController 
{
	@RequestMapping(value = "/success.html", method = RequestMethod.POST)
	public ModelAndView submitAdmissionForm(@RequestParam("username") String username,
			@RequestParam("password") String password) throws ClassNotFoundException, SQLException {

		Details2 s =new Details2();

		String j = "admin";//admin

		String l = "user";//user

		String n = "lead";//lead

		String p = "manager";//manager
		String q = null;
		s.setUsername(username);
		s.setPassword(password);

		Class.forName("com.mysql.jdbc.Driver");
		Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/userdetails", "root", "");
		System.out.println("PostEstablishing a Db connection:" +con);
		
		//PreparedStatement ps = null;
		Statement stmt = con.createStatement();
		String sql = "SELECT * FROM users where username='" + username + "'";
		ResultSet rs = stmt.executeQuery(sql);
		while (rs.next()) {
			System.out.println(rs.getString("username")+"  "+rs.getString("password"));  
			q = rs.getString("password");
			con.close();
			break;
		}

		if (password.equals(q) && (password.equals(j))) {
			ModelAndView mv = new ModelAndView();
			mv.setViewName("Admin.jsp");
			mv.addObject("headerMessage", "LoginSuccessfull for Admin");
			mv.addObject("u1", s);

			return mv;
		}

		if ((username.equals(q)) && (password.equals(l))) {

			ModelAndView mv = new ModelAndView();
			mv.setViewName("User.jsp");
			mv.addObject("headerMessage", "LoginSuccessfull for Developer");
			mv.addObject("u1", s);

			return mv;
		}
		if ((username.equals(q)) && (password.equals(n))) {

			ModelAndView mv = new ModelAndView();
			mv.setViewName("Lead.jsp");
			mv.addObject("headerMessage", "LoginSuccessfull for Team Leader");
			mv.addObject("u1", s);

			return mv;
		}
		if ((username.equals(q)) && (password.equals(p))) {

			ModelAndView mv = new ModelAndView();
			mv.setViewName("Manager.jsp");
			mv.addObject("headerMessage", "LoginSuccessfull for Manager");
			mv.addObject("u1", s);

			return mv;
		} else {
			ModelAndView mc = new ModelAndView();
			mc.setViewName("Invalid.jsp");
			mc.addObject("login Not Successfull. PLease enter a valid username and password");
			mc.addObject("headerMessage", "login Not Successfull. PLease enter a valid username and password");
			return mc;
		}
	}
		@RequestMapping(value = "/add.html", method = RequestMethod.POST)
		public ModelAndView add() {
			ModelAndView mc = new ModelAndView();
			mc.setViewName("data.jsp");
			return mc;
		}
		@RequestMapping(value = "/adddb.html", method = RequestMethod.POST)
		public ModelAndView addDb(@RequestParam("user_role_id") String user_role_id,
				@RequestParam("username") String username,@RequestParam("role") String role,@RequestParam("contactnumber") String contactnumber,@RequestParam("address") String address,@RequestParam("startDate") String startDate,@RequestParam("endDate") String endDate,@RequestParam("teamleader") String teamleader,@RequestParam("manager") String manager,@RequestParam("requestStatus") String requestStatus,@RequestParam("comment") String comment,@RequestParam("requestassignedmn") String requestassignedmn,@RequestParam("requestassignedtl") String requestassignedtl) throws SQLException  {
			ModelAndView mc = new ModelAndView();
			
			Connection c=DbConnection.getConnection();
			Statement st=c.createStatement();
			st.executeUpdate("insert into user_roles(user_role_id,username,role,contactnumber,address,startDate,endDate,teamleader,manager,requestStatus,comment,requestassignedmn,requestassignedtl) values ('"+user_role_id+"','"+username+"','"+role+"','"+contactnumber+"','"+address+"','"+startDate+"','"+endDate+"','"+teamleader+"','"+manager+"','"+requestStatus+"','"+comment+"','"+requestassignedmn+"','"+requestassignedtl+"')");	
			mc.setViewName("v1.jsp");
			return mc;
		}
		@RequestMapping(value = "/delete.html", method = RequestMethod.POST)
		public ModelAndView delete() {
			ModelAndView mc = new ModelAndView();
			mc.setViewName("deletedata.jsp");
			return mc;
		}
		@RequestMapping(value = "/deletedb.html", method = RequestMethod.POST)
		public ModelAndView deleteDb(@RequestParam("user_role_id") String user_role_id) throws SQLException  {
			ModelAndView mc = new ModelAndView();
			
			Connection c=DbConnection.getConnection();
			Statement st=c.createStatement();
	
			st.executeUpdate("DELETE FROM user_roles WHERE user_role_id="+user_role_id);	
			mc.setViewName("v2.jsp");
			return mc;
		}
		@RequestMapping(value = "/edit.html", method = RequestMethod.POST)
		public ModelAndView edit() {
			ModelAndView mc = new ModelAndView();
			mc.setViewName("edit.jsp");
			return mc;
		}
		@RequestMapping(value = "/editdb.html", method = RequestMethod.POST)
		public ModelAndView editDb(@RequestParam("user_role_id") String user_role_id,
				@RequestParam("username") String username,@RequestParam("role") String role,@RequestParam("contactnumber") String contactnumber,@RequestParam("address") String address,@RequestParam("startDate") String startDate,@RequestParam("endDate") String endDate,@RequestParam("teamleader") String teamleader,@RequestParam("manager") String manager,@RequestParam("requestStatus") String requestStatus,@RequestParam("comment") String comment) throws SQLException  {
			ModelAndView mc = new ModelAndView();
			
			Connection con=DbConnection.getConnection();
		//	Statement s=con.createStatement();
			//s.executeQuery("select * from user_roles where ");
			PreparedStatement ps = null;
			ps = con.prepareStatement("Update user_roles set user_role_id=?,username=?,role=?,contactnumber=?,address=?,startDate=?,endDate=?,teamleader=?,manager=?,requestStatus=?,comment=?  where  user_role_id="+user_role_id);
					//+ "//user_role_id='+user_role_id'");

			ps.setInt(1, Integer.parseInt(user_role_id));
			ps.setString(2, username);
			ps.setString(3, role);
			ps.setString(4, contactnumber);
			ps.setString(5, address);
			
			ps.setString(6, startDate);
			ps.setString(7, endDate);
			ps.setString(8, teamleader);
			ps.setString(9, manager);
			ps.setString(10, requestStatus);
			ps.setString(11, comment);
			//ps.setString(11, comment);
			//ps.setString(11, comment);
			
			int i = ps.executeUpdate();
			if (i >= 0) {
				System.out.println("Record Updated Successfully");
			} else {
				System.out.println("There is a problem in updating Record.");
			
			}
		
			mc.setViewName("v3.jsp");
			return mc;
		}
		
		@RequestMapping(value = "/generatepdf.html", method = RequestMethod.POST)
		public ModelAndView generatePdf() {
			ModelAndView mc = new ModelAndView();
			
          /*  Connection conn = DbConnection.getConnection();
            Statement stmt = conn.createStatement();
            ResultSet query_set = stmt.executeQuery("SELECT * FROM user_roles");
            
            Document my_pdf_report;
            my_pdf_report= new Document(null);
            PdfWriter.getInstance(my_pdf_report, new FileOutputStream("pdf_report_from_sql_using_java.pdf"));
            my_pdf_report.open();            
            //we have four columns in our table
            PdfPTable my_report_table = new PdfPTable(11);
            //create a cell object
            PdfPCell table_cell;
           
            while (query_set.next()) {                
                            String dept_id = query_set.getString("DEPARTMENT_ID");
                            table_cell=new PdfPCell(new Phrase(dept_id));
                            my_report_table.addCell(table_cell);
                            String dept_name=query_set.getString("DEPARTMENT_NAME");
                            table_cell=new PdfPCell(new Phrase(dept_name));
                            my_report_table.addCell(table_cell);
                            String manager_id=query_set.getString("MANAGER_ID");
                            table_cell=new PdfPCell(new Phrase(manager_id));
                            my_report_table.addCell(table_cell);
                            String location_id=query_set.getString("LOCATION_ID");
                            table_cell=new PdfPCell(new Phrase(location_id));
                            my_report_table.addCell(table_cell);
                            }
            
            my_pdf_report.add(my_report_table);                       
            my_pdf_report.close();
            
            
            query_set.close();
            stmt.close(); 
            conn.close();               
			
            */
            mc.setViewName("generate.jsp");
			return mc;
		}
		
	/*	@RequestMapping(value = "/display.html", method = RequestMethod.POST)
		public ModelAndView display() throws SQLException {
			ModelAndView mc = new ModelAndView();
			Connection c=DbConnection.getConnection();
			Statement st=c.createStatement();
	ResultSet rs=st.executeQuery("SELECT * user_roles ");	
			//mc.setViewName("edit.jsp");
	while(rs.next())
	{
		
	}
	
			return mc;
		}*/
		

		@RequestMapping(value = "/pdf.html", method = RequestMethod.POST)
		public ModelAndView pdf(@RequestParam("user_role_id") String user_role_id) 
		{
			ModelAndView mc = new ModelAndView();
			mc.setViewName("pdfgeneration.jsp");
			return mc;
		}
		
	}

