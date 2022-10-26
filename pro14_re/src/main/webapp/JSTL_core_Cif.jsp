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
		&ltc:if test="&#36{true}" var="result" scope="page" /&gt	
	</h3>

	<c:if test="${true}" var="result" scope="page">
		<p>첫 번째 비교문 결과는 ${result}이다!</p>
	</c:if>

	<h3 style="color:blue">
		&ltc:if test="&#36{pwd=='1234'}" var="result" scope="page"/&gt	
	</h3>	
	<c:if test="${pwd=='1234'}" var="result" scope="page">
		<p>두 번째 비교문 결과는 ${result}이다!</p>
	</c:if>	

	<h3>c:if의 test가 false이면 아예 화면에 나오지 않는 문법이다.</h3>

</body>
</html>