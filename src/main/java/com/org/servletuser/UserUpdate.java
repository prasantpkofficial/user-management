package com.org.servletuser;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.org.dao.UserDao;
import com.org.dto.User;
@WebServlet("/userUpdate")
public class UserUpdate extends HttpServlet{
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String strId = req.getParameter("id");
		String name = req.getParameter("name");
		String age = req.getParameter("age");
		String mobile= req.getParameter("mobile");
		String email = req.getParameter("email");
		String password = req.getParameter("password");
		int id=Integer.parseInt(strId);
		
		
		User user=new User();
		user.setName(name);
		user.setAge(age);
		user.setMobile(mobile);
		user.setEmail(email);
		user.setPassword(password);
		user.setId(id);
		 
		UserDao dao=new UserDao();
		dao.updateUserById(id, user);
		resp.sendRedirect("fetchallusers.jsp");
	}

}
