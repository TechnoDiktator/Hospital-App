package com.admin.servlet;

import javax.servlet.http.HttpServlet;
import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/adminLogout")
public class AdminLogout extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		//when admin logs out we will first remove its attribute from session and then redirect to admin_login
		HttpSession session = req.getSession();
		session.removeAttribute("adminObj");
		session.setAttribute("succMsg", "Admin Logout Sucessfully");
		resp.sendRedirect("admin_login.jsp");

	}
	
	
}

