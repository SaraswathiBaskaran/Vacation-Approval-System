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
public class ManagerController {
	
	@RequestMapping(value = "/reject.html", method = RequestMethod.POST)
	public ModelAndView add1() {
		ModelAndView mc = new ModelAndView();
		mc.setViewName("rejecting.jsp");
		return mc;
	}
	@RequestMapping(value = "/processreject.html", method = RequestMethod.POST)
	public ModelAndView reject(@RequestParam("user_role_id") String user_role_id,@RequestParam("requestStatus") String requestStatus,
		@RequestParam("comment") String comment) throws SQLException  {
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
	@RequestMapping(value = "/processingapprove.html", method = RequestMethod.POST)
	public ModelAndView approve(@RequestParam("user_role_id") String user_role_id,@RequestParam("requestStatus") String requestStatus,
		@RequestParam("comment") String comment) throws SQLException  {
		ModelAndView mc = new ModelAndView();
		
		Connection con=DbConnection.getConnection();
		PreparedStatement ps = null;
		ps = con.prepareStatement("Update user_roles set requestStatus=?,comment=?  where user_role_id=" +user_role_id);


	//	ps.setInt(1, Integer.parseInt(user_role_id));
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
	
	
	@RequestMapping(value = "/assignprocess.html", method = RequestMethod.POST)
	public ModelAndView assign(@RequestParam("user_role_id") String user_role_id,@RequestParam("teamleader") String teamleader,@RequestParam("requestassignedtl") String requestassignedtl) throws SQLException  {
		ModelAndView mc = new ModelAndView();
		
		Connection con=DbConnection.getConnection();
		PreparedStatement ps = null;
		
		ps = con.prepareStatement("Update user_roles set requestassignedtl=?,teamleader=? where user_role_id=" +user_role_id);


	//	ps.setInt(1, Integer.parseInt(user_role_id));
		ps.setString(1,requestassignedtl);
		ps.setString(2,teamleader);
		
	
		int i = ps.executeUpdate();
		if (i >= 0) {
			System.out.println("Rejected request and  Updated Successfully");
		} else {
			System.out.println("There is a problem in updating Record.");
		
		}
	
		mc.setViewName("v6.jsp");
		return mc;
	}
}
