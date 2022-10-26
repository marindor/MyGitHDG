<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
    
<%
	request.setCharacterEncoding("utf-8");
%>
<%
	//아세리파 <form><input>태그 없이 자체 아,세,리 객체에 getAttribute로 Object를 가져온 후 (String)으로 형변환
	
	String id = (String)request.getAttribute("id"); 
	
	String pwd = (String)request.getAttribute("pwd");
	
	String name = (String)session.getAttribute("name");
	
	String email = (String)application.getAttribute("email");
	
%>
    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>embeded binding forwarded1</title>
</head>
<body>
	<h1>아.세.리 포워드와 바인딩1</h1>
	<h2>request, session, application 내장 객체에 바인딩 후 포워드</h2>
	<hr>
	<%=id %><br>
	<%=pwd %><br>
	<%=name %><br>
	<%=email %><br>
	<hr>
	${id }<br>
	${pwd }<br>
	${name }<br>
	${email }<br>
	
</body>
</html>