package com.test.lesson03;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.test.common.MysqlService;

@WebServlet("/lesson03/ex02_delete")
public class DeleteEx02 extends HttpServlet{
		
	@Override
	public void doGet(HttpServletRequest request,HttpServletResponse response) throws IOException {
		
		String Id = request.getParameter("id");
		
		MysqlService ms = MysqlService.getInstance();
		ms.connect();
		
		String deleteQuery = "Delete from `new_user` where `id` = "+ Id +";";
		
		try {
			ms.update(deleteQuery);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		ms.disconnect();
		
		response.sendRedirect("/lesson03/ex02_1.jsp");
	}
}
