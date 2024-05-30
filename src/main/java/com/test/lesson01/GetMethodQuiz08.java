package com.test.lesson01;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/lesson01/quiz08")
public class GetMethodQuiz08 extends HttpServlet{
	
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		
		
				
		String research = request.getParameter("research");
		
		List<String> list = new ArrayList<>(Arrays.asList(
				"강남역 최고 맛집 소개 합니다.", 
				"오늘 기분 좋은 일이 있었네요.", 
				"역시 맛집 데이트가 제일 좋네요.", 
				"집에 가는 길에 동네 맛집 가서 안주 사갑니다.",
				"자축 저 오늘 생일 이에요."));
		
		out.print("<html><head><title></title><body>");
		for(int i =0 ; i < list.size(); i++) { 
			StringBuffer sb = new StringBuffer(list.get(i));
			int start = list.get(i).indexOf(research);
			int end = list.get(i).indexOf(research)+5;
			if(list.get(i).contains(research)){
		        sb.insert(start, "<b>");
		        sb.insert(end, "</b>");
		        out.print(sb+"<br>");
			}
		}
		out.print("</body></html>");
		
//		out.print("<html><head><title></title><body>");
//		Iterator<String> iter = list.iterator();
//		while(iter.hasNext()) {
//			String line = iter.next();
//			//System.out.println(line);
//			if(line.contains(research)) {
//				out.print(line+"<br>");
//			}
//		}
//		out.print("</body></html>");
		
		
		
	}

}
