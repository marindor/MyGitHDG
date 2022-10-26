<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
	request.setCharacterEncoding("utf-8");
%>
<%
	//아세리파 <form><input>태그 없이 자체 아,세,리 객체에 setAttribute로 Object를 세팅함
	request.setAttribute("id", "Hong-Dang-Mu");
	request.setAttribute("pwd","1234");
	
	session.setAttribute("name","홍당무");
	
	application.setAttribute("email","hongdang@gmail.com");
%>
    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>embeded binding forward1</title>
</head>
<body>
	<h1>포워드와 바인딩1</h1> <!-- 어차피 무시해서 안나옴-->
	<h2>request, session, application 내장 객체에 바인딩 후 포워드</h2> <!-- 어차피 무시해서 안나옴-->
	<jsp:forward page="embedded_binding_forwarded1.jsp"></jsp:forward>
</body>
</html>