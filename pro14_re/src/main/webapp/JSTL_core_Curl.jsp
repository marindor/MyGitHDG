<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
    
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
    
    
<% request.setCharacterEncoding("utf-8"); %>


<c:set var="projectPath" value="${pageContext.request.contextPath }" scope="page" />

    
<c:url var="gogogo" value="embeddedObj_common_page.jsp" scope="page"/>
    
    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>c:url var="" value="" scope="</title>
</head>
<body>
	<h3 style="color:blue">
		&ltc:set var="name" value="url path" scope="page" /&gt	
	</h3>

	<a href="${projectPath}/embeddedObj_common_page.jsp" >pageContext 객체로 common page 가기</a>
	<br><br>
	<a href="${gogogo}">c:url로 common page 가기</a>

	${height }<br>
</body>
</html>