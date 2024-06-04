<%@page import="java.util.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>채널 안내</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-Fy6S3B9q64WdZWQUiU+q4/2Lc9npb8tCaSX9FK7E8HnRr0Jz8D6OP9dO5Vg3Q9ct" crossorigin="anonymous"></script>

<style>
	header {height:80px;}
	nav {height:80px;}
	section {min-height:500px;}
	footer {height:80px;}
</style> 

</head>
<body>
<%
    List<Map<String, String>> list = new ArrayList<>();
    Map<String, String> map = new HashMap<String, String>() {{ put("ch", "5"); put("name", "SBS"); put("category", "지상파"); } };
    list.add(map);
    map = new HashMap<String, String>() {{ put("ch", "7"); put("name", "KBS2"); put("category", "지상파"); } };
    list.add(map);
    map = new HashMap<String, String>() {{ put("ch", "9"); put("name", "KBS1"); put("category", "지상파"); } };
    list.add(map);
    map = new HashMap<String, String>() {{ put("ch", "11"); put("name", "MBC"); put("category", "지상파"); } };
    list.add(map);

    map = new HashMap<String, String>() {{ put("ch", "54"); put("name", "OCN"); put("category", "영화"); } };
    list.add(map);
    map = new HashMap<String, String>() {{ put("ch", "56"); put("name", "Screen"); put("category", "영화"); } };
    list.add(map);
    map = new HashMap<String, String>() {{ put("ch", "57"); put("name", "Mplex"); put("category", "영화"); } };
    list.add(map);

    map = new HashMap<String, String>() {{ put("ch", "30"); put("name", "KBS 드라마"); put("category", "드라마"); } };
    list.add(map);
    map = new HashMap<String, String>() {{ put("ch", "32"); put("name", "MBC 드라마"); put("category", "드라마"); } };
    list.add(map);
    map = new HashMap<String, String>() {{ put("ch", "34"); put("name", "Olive"); put("category", "드라마"); } };
    list.add(map);

    map = new HashMap<String, String>() {{ put("ch", "3"); put("name", "tvN"); put("category", "예능"); } };
    list.add(map);
    map = new HashMap<String, String>() {{ put("ch", "28"); put("name", "MBC Every1"); put("category", "예능"); } };
    list.add(map);
    map = new HashMap<String, String>() {{ put("ch", "48"); put("name", "JTBC2"); put("category", "예능"); } };
    list.add(map);
    map = new HashMap<String, String>() {{ put("ch", "49"); put("name", "E채널"); put("category", "예능"); } };
    list.add(map);

    map = new HashMap<String, String>() {{ put("ch", "120"); put("name", "SPOTV"); put("category", "스포츠"); } };
    list.add(map);
    map = new HashMap<String, String>() {{ put("ch", "121"); put("name", "KBSN 스포츠"); put("category", "스포츠"); } };
    list.add(map);
%>

	<div class="container">
	<header>
		<h1 class="text-danger text-center">Sk BronadBand IPTV</h1>
	</header>
	<nav class="bg-danger d-flex align-items-center">
		<ul class="nav nav-fill w-100">
			<li class="nav-item"><a href="/lesson02/quiz09.jsp?category=전체" class="nav-link text-light">전체</a></li>
			<li class="nav-item"><a href="/lesson02/quiz09.jsp?category=지상파" class="nav-link text-light">지상파</a></li>
			<li class="nav-item"><a href="/lesson02/quiz09.jsp?category=드라마" class="nav-link text-light">드라마</a></li>
			<li class="nav-item"><a href="/lesson02/quiz09.jsp?category=예능" class="nav-link text-light">예능</a></li>
			<li class="nav-item"><a href="/lesson02/quiz09.jsp?category=영화" class="nav-link text-light">영화</a></li>
			<li class="nav-item"><a href="/lesson02/quiz09.jsp?category=스포츠" class="nav-link text-light">스포츠</a></li>
		</ul>
	</nav>
	<section>
	<table class="table text-center">
		<thead>
			<tr>
				<th scope="col">채널</th>
				<th scope="col">채널명</th>
				<th scope="col">카테고리</th>
			</tr>
		</thead>
		<tbody>
<% 
	String category = request.getParameter("category");
	for(Map<String, String> channel : list){
		if(category == null || category.equals("전체")){
%>
			<tr>
				<td><%=channel.get("ch") %></td>
				<td><%=channel.get("name") %></td>
				<td><%=channel.get("category") %></td>
			</tr>
<%	
			continue;
		} else if(category.equals(channel.get("category"))){
		
%>
			<tr>
				<td><%=channel.get("ch") %></td>
				<td><%=channel.get("name") %></td>
				<td><%=channel.get("category") %></td>
			</tr>
<%			
			continue;
		}
	}
%>
		</tbody>
	
	</table>
	</section>
	
	
	<footer class="text-center">
		<small>Copyright 2024. marondal All Rights Reserved.</small>
	</footer>
	</div>

</body>
</html>