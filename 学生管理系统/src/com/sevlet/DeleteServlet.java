package com.sevlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.imp.UsersDaoImp;

public class DeleteServlet extends HttpServlet {

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
			doPost(request, response);
	}

	
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
			
			//±àÂë
			request.setCharacterEncoding("utf-8");
			response.setContentType("text/html");
			response.setCharacterEncoding("utf-8");
			
			String userid = request.getParameter("userid");
			
			UsersDaoImp udi = new UsersDaoImp();
			
			int id = Integer.parseInt(userid);
			try {
				udi.delete(id);
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
			request.getRequestDispatcher("List1Servlet").forward(request, response);
		
	}

}
