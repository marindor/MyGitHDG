<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
    
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
    
    
<% request.setCharacterEncoding("utf-8"); %>

    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>c:out recieved</title>
</head>
<body>
	<c:choose>
		<c:when test="${empty param.punch}">
			<h3>punch로 받은 값이 없다. 다시 보내라.</h3>
		</c:when>
		<c:otherwise>
			<h3>punch로 값 받았다. 보아랏</h3>
			<c:out value="${param.punch}"/>
		</c:otherwise>
	</c:choose>
</body>
</html>