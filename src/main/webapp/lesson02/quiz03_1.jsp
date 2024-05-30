<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-Fy6S3B9q64WdZWQUiU+q4/2Lc9npb8tCaSX9FK7E8HnRr0Jz8D6OP9dO5Vg3Q9ct" crossorigin="anonymous"></script>
</head>
<body>
<%
	double height = Integer.valueOf(request.getParameter("height"));
	double weight = Integer.valueOf(request.getParameter("weight"));
	double bmi = weight / ((height/100.0)*(height/100.0));
	String result = null;
	if(bmi <= 20){
		result = "저체중";
	} else if(bmi<=25 && bmi >= 21){
		result = "정상";
	} else if(bmi<=30 && bmi >= 26){
		result = "과체중";
	} else if(bmi>=31){
		result = "비만";
	}
%>
<div class="container">
	<div class="display-3">BMI 측정 결과</div>
	<div class="display-2">당신은 <span class="text-info"><%=result %></span> 입니다.</div>
	<small>BMI 수치 : <%=bmi %>

</div>

</body>
</html>