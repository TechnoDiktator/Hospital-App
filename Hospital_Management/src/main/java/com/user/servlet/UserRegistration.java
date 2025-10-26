package com.user.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.dao.UserDao;
import com.db.DbConnect;
import com.entity.User;


//when user register link is fired from the fromtend then the dopost request will be invoked and the UserRegistration Class Servlet will run
@WebServlet("/user_register")
public class UserRegistration extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		try {
			
			String fullname = req.getParameter("name");
			String email = req.getParameter("email");
			String password = req.getParameter("password");
			
			//passsing the user details to a user object fromm the registration form
			User u =  new User(fullname , email ,password);
			UserDao dao = new UserDao(DbConnect.getConn());
			
			HttpSession session = req.getSession();
			
			
			boolean result = dao.register(u);
			
			if(result == true) {
				
				System.out.println("Registration successful");
				session.setAttribute("succMsg", "Registration Successfull");
				resp.sendRedirect("signup.jsp");
				
			}else {
				
				System.out.println("Error on the server side");
				session.setAttribute("errMsg", "Something wrong on server");
				resp.sendRedirect("signup.jsp");
				
				
				
			}
			
			
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		
		}
	}

	
	
}



