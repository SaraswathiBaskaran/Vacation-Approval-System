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
public class TeamController {

	
	@RequestMapping(value = "/rejectmn.html", method = RequestMethod.POST)
	public ModelAndView reject(@RequestParam("user_role_id") String user_role_id,@RequestParam("requestStatus") String requestStatus,@RequestParam("comment") String comment) throws SQLException  {
		ModelAndView mc = new ModelAndView();
		
		Connection con=DbConnection.getConnection();
		PreparedStatement ps = null;
		ps = con.prepareStatement("Update user_roles set requestStatus=?,comment=? where  user_role_id="+user_role_id);


		//ps.setInt(1, Integer.parseInt(user_role_id));
		ps.setString(1,requestStatus);
		ps.setString(2, comment);
		
		int i = ps.executeUpdate();
		if (i >= 0) {
			System.out.println("Rejected request and  Updated Successfully");
		} else {
			System.out.println("There is a problem in updating Record.");
		
		}
	
		mc.setViewName("v4.jsp");
		return mc;
	}
	@RequestMapping(value = "/approvetl.html", method = RequestMethod.POST)
	public ModelAndView approve1(@RequestParam("user_role_id") String user_role_id,@RequestParam("requestStatus") String requestStatus,
		@RequestParam("comment") String comment) throws SQLException  {
		ModelAndView mc = new ModelAndView();
		
		Connection con=DbConnection.getConnection();
		PreparedStatement ps = null;
		ps = con.prepareStatement("Update user_roles set requestStatus=?,comment=?  where user_role_id=" +user_role_id);
		ps.setString(1,requestStatus);
		ps.setString(2, comment);
		
		int i = ps.executeUpdate();
		if (i >= 0) {
			System.out.println("Rejected request and  Updated Successfully");
		} else {
			System.out.println("There is a problem in updating Record.");
		
		}
	
		mc.setViewName("v5.jsp");
		return mc;
	}
	
	@RequestMapping(value = "/assigning.html", method = RequestMethod.POST)
	public ModelAndView assign(@RequestParam("user_role_id") String user_role_id,@RequestParam("requestassignedmn") String requestassignedmn,@RequestParam("manager") String manager) throws SQLException  {
		ModelAndView mc = new ModelAndView();
		
		Connection con=DbConnection.getConnection();
		PreparedStatement ps = null;
		
		ps = con.prepareStatement("Update user_roles set requestassignedmn=?,manager=? where user_role_id=" +user_role_id);


	//	ps.setInt(1, Integer.parseInt(user_role_id));
		ps.setString(1,requestassignedmn);
		ps.setString(2,manager);
		
		int i = ps.executeUpdate();
		if (i >= 0)
		{
			System.out.println("Rejected request and  Updated Successfully");
		} else
		{
			System.out.println("There is a problem in updating Record.");
		
		}
		mc.setViewName("v7.jsp");
		return mc;
	}
}
