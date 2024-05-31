<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>길이 변환</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-Fy6S3B9q64WdZWQUiU+q4/2Lc9npb8tCaSX9FK7E8HnRr0Jz8D6OP9dO5Vg3Q9ct" crossorigin="anonymous"></script>
</head>
<body>
		<%	int leng = Integer.valueOf(request.getParameter("leng")); 
			String[] chanArr = request.getParameterValues("chan"); %>
	<div class="container">
		<h1>길이 변환 결과</h1>
		<h3><%=leng %>cm</h3>
		<hr>
		<h2>
		<%	
			double num = 0;
			if(chanArr != null){
				for(String chan : chanArr){
					if(chan.equals("in")){
						num = 0.393701;	
					} else if(chan.equals("yd")){
						num = 0.010936;
					} else if(chan.equals("ft")){
						num = 0.032808;
					} else{
						num = 0.01;
					}
					out.print((leng * num) + chan +"<br>");
				}
			}
		%>
		</h2>
	</div>
</body>
</html>