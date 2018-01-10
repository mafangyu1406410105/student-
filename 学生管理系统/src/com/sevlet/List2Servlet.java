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

public class List2Servlet extends HttpServlet {
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
			doPost(request, response);
	}


	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
			
			//±àÂë
			response.setCharacterEncoding("utf-8");
			request.setCharacterEncoding("utf-8");
			response.setContentType("text/html");
			
			UsersDaoImp udq = new UsersDaoImp();
			List<Users> uss = new ArrayList<Users>();
			try {
				uss = udq.queryList1();
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
			request.setAttribute("uss", uss);
			request.getRequestDispatcher("list4.jsp").forward(request, response);
	}

}
