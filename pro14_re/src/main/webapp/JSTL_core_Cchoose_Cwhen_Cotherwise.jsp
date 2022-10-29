<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
    
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
    
    
<% request.setCharacterEncoding("utf-8"); %>


<c:set var="id" value="molang" scope="page" />
<c:set var="pwd" value="1234" scope="page" />
<c:set var="name" value="밥달라" scope="page" />
<c:set var="age" value="28" scope="page" />
<c:set var="height" value="180" scope="page" />
    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>c:choose c:when c:otherwise</title>
</head>
<body>
	<h3 style="color:blue"></h3>
	
	<c:choose>
		<c:when test="${id=='aaa'}"><h3>aaa</h3></c:when>
		<c:when test="${id=='aaa'}"><h3>aaa</h3></c:when>
		<c:when test="${id=='molang'}"><h3>case find!</h3></c:when>
		<c:when test="${id=='aaa'}"><h3>aaa</h3></c:when>
		<c:otherwise>case에 걸리는게 없음</c:otherwise>
	</c:choose>
	<br>
	
	${id }<br>
	${pwd }<br>
	${name }<br>
	${age }<br>
	${height }<br>
</body>
</html>