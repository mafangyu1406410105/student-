package com.sevlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.imp.UsersDaoImp;
import com.whjg.Users;

public class UpdateServlet extends HttpServlet {

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
			doPost(request, response);
	}

	
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
			
			//±àÂë
		 	request.setCharacterEncoding("utf-8");
		 	response.setCharacterEncoding("utf-8");
		 	response.setContentType("text/html");
		 	
		 	UsersDaoImp udi = new UsersDaoImp();
		 	String userid = request.getParameter("userid");
		 	String username = request.getParameter("username");
		 	String userpass = request.getParameter("userpass");
		 	String userage = request.getParameter("userage");
			String usersex = request.getParameter("usersex");
			String userdate = request.getParameter("userdate");
			String useremail = request.getParameter("useremail");
			
			Users u = new Users();
			u.setUserid(Integer.parseInt(userid));
			u.setUsername(username);
			u.setUserpass(userpass);
			u.setUserage(Integer.parseInt(userage));
			u.setUsersex(usersex);
			u.setUserdate(userdate);
			u.setUseremail(useremail);
			
		try {
			udi.update(u);
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
		
			request.getRequestDispatcher("List1Servlet").forward(request, response);
	}

}
