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
<title>c:set var="" value="" scope="</title>
</head>
<body>
	<h3 style="color:blue">
		&ltc:set var="id" value="molang" scope="page" /&gt	
	</h3>
	${id }<br>
	${pwd }<br>
	${name }<br>
	${age }<br>
	${height }<br>
</body>
</html>