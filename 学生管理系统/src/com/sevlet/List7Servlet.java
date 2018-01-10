package com.sevlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.imp.UsersDaoImp;
import com.whjg.Users;

public class List7Servlet extends HttpServlet {

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
			
			String username = request.getParameter("username");
			
			UsersDaoImp udi = new UsersDaoImp();
			Users u = new Users();
			u.setUsername(username);
			
			List<Users> urs = new ArrayList<Users>();
			
			try {
				urs = udi.queryList3(u);
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
			request.setAttribute("urs", urs);
			request.getRequestDispatcher("list5.jsp").forward(request, response);
	}

}
