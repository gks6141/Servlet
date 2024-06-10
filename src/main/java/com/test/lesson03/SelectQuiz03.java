package com.test.lesson03;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.test.common.MysqlService;

@WebServlet("/lesson03/SelectQuiz03")
public class SelectQuiz03 extends HttpServlet{
	
	@Override
	public void doGet(HttpServletRequest requset, HttpServletResponse response) throws IOException {
		
		MysqlService ms = MysqlService.getInstance();
		ms.connect();
		
		//
		String SelectQuery="";
		try {
			ms.select(SelectQuery);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		ms.disconnect();
		
		response.sendRedirect("/lesson03/quiz03.jsp");
		
		
	}

}
