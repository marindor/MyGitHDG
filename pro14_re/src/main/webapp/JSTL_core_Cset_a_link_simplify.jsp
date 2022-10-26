<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
    
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
    
    
<% request.setCharacterEncoding("utf-8"); %>


<c:set var="contextPath" value="${pageContext.request.contextPath}" scope="page" />
    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>c:set var="" value="" scope="</title>
</head>
<body>
	<h3 style="color:blue">
		&ltc:set var="id" value="molang" scope="page" /&gt	
	</h3>
	<p style="color:blue">
		&lta href='pageContext.request.contextPath/embeddedObj_common_page.jsp'&gt내장객체 연습으로 이동&lt/a&gt
	</p>
	<a href='pageContext.request.contextPath/embeddedObj_common_page.jsp'>내장객체 연습으로 이동</a>
	<br>
	<br>
	<p style="color:blue">
		c:set을 이용해 코딩 길이를 줄이다.<br>
		&lta href='${contextPath}/embeddedObj_common_page.jsp'&gt내장객체 연습으로 이동&lt/a&gt
	</p>
	<a href='${contextPath}/embeddedObj_common_page.jsp'>내장객체 연습으로 이동</a>

	${height }<br>
</body>
</html>