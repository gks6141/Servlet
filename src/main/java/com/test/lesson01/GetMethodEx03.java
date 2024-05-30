package com.test.lesson01;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/lesson01/ex03")
public class GetMethodEx03 extends HttpServlet{
	
	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/json");
		
		//테스트용 주석 추가
		//request parameter
		String userId = request.getParameter("userId");
		String name = request.getParameter("name");
		int age = Integer.valueOf(request.getParameter("age"));
		
		PrintWriter out = response.getWriter();
//		out.println("서블릿 수행");
//		out.println("userId: " + userId);
//		out.println("name: " + name);
//		out.println("age: " + age );
		
		// {"userId":"maronbiana", "name":"한주형","age":30}
		out.print("{\"userId\":\"" + userId +"\", \"name\":\"" + name
					+"\", \"age\":"+ age + "}");
	}
}
