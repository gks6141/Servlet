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
	<form method="post" action="/lesson02/quiz05_1.jsp">
		<div class="container">
			<h1>사칙연산</h1>
			<div class="d-flex">
				<input type="text" name="num1" class="form-control col-3 mr-2">
				<select name="calculation" class="form-control mr-2 col-2">
					<option>*</option>
					<option>/</option>
					<option>+</option>
					<option>-</option>
				</select>
				<input type="text" name="num2" class="form-control mr-2 col-3">
				<button type="submit" class="btn btn-info" class="col-2">계산하기</button>
			</div>
		</div>
	</form>
</body>
</html>