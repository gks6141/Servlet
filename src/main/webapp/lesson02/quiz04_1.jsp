<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>길이 변환</title>
</head>
<body>
	<%	int leng = Integer.valueOf(request.getParameter("leng")); 
		String[] chanArr = request.getParameterValues("chan");
		String result ="";
		if(chanArr != null){
			for(String chan : chanArr){
				result += chan + " ";
			}
		}
		double inch = 0;
		double yard = 0;
		double fit = 0;
		double meter = 0;
		if(result.contains("인치") == true){
			inch = leng*0.393701;
		}
		if(result.contains("야드") == true){
			yard = leng*0.010936;
		}
		if(result.contains("피트") == true){
			fit=leng*0.032808;
		}
		if(result.contains("미터") == true){
			meter = leng*0.01;
		}
	%>
	<div class="container">
		<h1>길이 변환 결과</h1>
		<%=leng%>cm
		<hr>
		<%=inch %> in <br>
		<%=yard %> yd <br>
		<%=fit %> ft<br>
		<%=meter %> m <br>
	</div>
</body>
</html>