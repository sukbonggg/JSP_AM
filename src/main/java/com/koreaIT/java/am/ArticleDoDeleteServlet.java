package com.koreaIT.java.am;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.Map;

import com.koreaIT.java.am.config.Config;
import com.koreaIT.java.am.exception.SQLErrorException;
import com.koreaIT.java.am.util.DBUtil;
import com.koreaIT.java.am.util.SecSql;

@WebServlet("/article/doDelete")
public class ArticleDoDeleteServlet extends HttpServlet {
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html; charset=UTF-8");
		
		Connection conn = null;

		try {
			Class.forName(Config.getDBDriverClassName());
		} catch (ClassNotFoundException e) {
			System.out.println("드라이버 로딩 실패");
		}


		try {
			conn = DriverManager.getConnection(Config.getDBUrl(), Config.getDBUser(), Config.getDBPassword());

			int id = Integer.parseInt(request.getParameter("id")); 
			
			SecSql sql = SecSql.from("DELETE");
			sql.append("FROM article");
			sql.append("WHERE id = ?", id);
			
			DBUtil.delete(conn, sql);
			
			response.getWriter().append(String.format("<script>alert('%d번 글이 삭제 되었습니다.'); location.replace('list');</script>", id));

		} catch (SQLException e) {
			System.out.println("에러: " + e);
		}catch (SQLErrorException e) {
			e.getOrigin().printStackTrace();
		
		} finally {
			try {
				if (conn != null && !conn.isClosed()) {
					conn.close();
				}
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
	}
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);

}
}