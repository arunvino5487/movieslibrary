package controller;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.Dao;
import dto.Admin;
@WebServlet("/saveadmin")
public class SaveAdmin extends HttpServlet
{

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException 
	{
		int id = Integer.parseInt(req.getParameter("aid"));
		String name = req.getParameter("aname");
		long contact = Long.parseLong(req.getParameter("acontact"));
		String email = req.getParameter("amail");
		String pass = req.getParameter("apass");
		
		
		Admin admin = new Admin();
		
		admin.setAdminid(id);
		admin.setAdminname(name);    
		admin.setAdmincontact(contact);
		admin.setAdminemail(email);
		admin.setAdminpassword(pass);				
		
		Dao dao = new Dao();
		
		try {
			
			dao.saveAdmin(admin);
						
		} catch (ClassNotFoundException | SQLException e) {
			
			e.printStackTrace();
		}
		
	}
}
