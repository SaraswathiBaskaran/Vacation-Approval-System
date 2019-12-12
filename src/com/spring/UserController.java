package com.spring;
import com.connection.DbConnection;
import com.spring.*;
import java.sql.*;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import java.io.*;

@Controller
public class UserController {
	@RequestMapping(value = "/vacationrequest.html", method = RequestMethod.POST)
	public ModelAndView vacation() {
		ModelAndView mc = new ModelAndView();
		mc.setViewName("requesting.jsp");
		return mc;
	}
	@RequestMapping(value = "/requestvacation.html", method = RequestMethod.POST)
	public ModelAndView requestvacation(@RequestParam("user_role_id") String user_role_id,
		@RequestParam("startDate") String startDate,@RequestParam("endDate") String endDate) throws SQLException  {
		ModelAndView mc = new ModelAndView();
		
		Connection con=DbConnection.getConnection();
	//	Statement s=con.createStatement();
		//s.executeQuery("select * from user_roles where ");
		PreparedStatement ps = null;
		ps = con.prepareStatement("Update user_roles set user_role_id=?,startDate=?,endDate=? where  user_role_id="+user_role_id);
				//+ "//user_role_id='+user_role_id'");

		ps.setInt(1, Integer.parseInt(user_role_id));
		ps.setString(2, startDate);
		ps.setString(3, endDate);
		
		int i = ps.executeUpdate();
		if (i >= 0) {
			System.out.println("Record Updated Successfully");
		} else {
			System.out.println("There is a problem in updating Record.");
		
		}
	
		mc.setViewName("v8.jsp");
		return mc;
	}
	@RequestMapping(value = "/select.html", method = RequestMethod.POST)
	public ModelAndView team(@RequestParam("user_role_id") String user_role_id,
		@RequestParam("teamleader") String teamleader) throws SQLException  {
		ModelAndView mc = new ModelAndView();
		
		Connection con=DbConnection.getConnection();
	
		PreparedStatement ps = null;
		ps = con.prepareStatement("update user_roles set teamleader=? where user_role_id="+user_role_id);

		
		ps.setString(1, teamleader);
	
		
		int i = ps.executeUpdate();
		if (i >= 0) {
			System.out.println("Record Updated Successfully");
		} else {
			System.out.println("There is a problem in updating Record.");
		
		}
	
		mc.setViewName("v9.jsp");
		return mc;
	}
	
	
}
