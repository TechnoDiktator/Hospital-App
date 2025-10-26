package com.admin.servlet;
import javax.servlet.http.HttpServlet;


import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.entity.User;


@WebServlet("/admin_login")
public class AdminLogin extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	
	
		try {

			String email = req.getParameter("email");
			System.out.println(email);
			String password = req.getParameter("password");
			System.out.println(password);
			HttpSession session = req.getSession();
			
			
			//so if in the user login page the email and passord is that of an admin then we will be allowed to go to the admin page
			if ("admin@hospital".equals(email) && "admin123".equals(password)) {
				
				//we are creating a new session attribute corresponding to the admin in which the admin
				session.setAttribute("adminObj", new User());
				resp.sendRedirect("admin/index.jsp");   //going to the admin folders index page
				
				
			} else {
				
				session.setAttribute("errMsg", "invalid email & password");
				resp.sendRedirect("admin_login.jsp");
			}

		} catch (Exception e) {
			e.printStackTrace();
		}
	
	
	}
}
