package com.koreaIT.java.am;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.List;
import java.util.Map;

import com.koreaIT.java.am.util.DBUtil;
import com.koreaIT.java.am.util.SecSql;

@WebServlet("/home/main")
public class MainPageServlet extends HttpServlet {
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
	
		HttpSession session = request.getSession();
		
		boolean isLogined=false;
		int loginedMemberId=-1;
		
		if (session.getAttribute("loginedMemberLoginId")!=null) {
			loginedMemberId =(int)session.getAttribute("loginedMemberId");
			isLogined=true;
		}
		
		request.setAttribute("isLogined", isLogined);
		request.setAttribute("loginedMemberId", loginedMemberId);
		
		request.getRequestDispatcher("/jsp/home/main.jsp").forward(request, response);
		
		
		
		
		
	}
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
}
	}