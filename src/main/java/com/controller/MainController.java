package com.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.example.User;
import com.example.UserDao;
@Controller
public class MainController {
	@RequestMapping("/findUser")
	public void getUser(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
		int id=Integer.parseInt(request.getParameter("id"));
		ApplicationContext ac=new ClassPathXmlApplicationContext("spring.xml");
	    User user=ac.getBean(User.class);
	    UserDao dao=ac.getBean(UserDao.class);
	    user=(User)dao.getUser(id);
	    if(user==null)
	    	response.sendRedirect("error.jsp");
	    else {
	    	request.setAttribute("user", user);
	    	 request.getRequestDispatcher("editUser.jsp").include(request, response);
	    }
		
	}
	@RequestMapping("/updateUser")
	public void updateUser(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
		int id=Integer.parseInt(request.getParameter("id"));
		String name=request.getParameter("name");
		String email=request.getParameter("email");
		String address=request.getParameter("address");
		ApplicationContext ac=new ClassPathXmlApplicationContext("spring.xml");
		User user=ac.getBean(User.class);
		UserDao dao=ac.getBean(UserDao.class);
		user.setId(id);
		user.setName(name);
		user.setEmail(email);
		user.setAddress(address);
		
		dao.updateUser(user);
		response.sendRedirect("success.jsp");
		
	}

}

