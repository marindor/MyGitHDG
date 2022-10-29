<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    isElIgnored="false"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%
	request.setCharacterEncoding("utf-8");
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script>
	window.onload=function(){
		const option = doucment.getElementById("selectLanguage")
		doucment.getElementById("call").addEventListner("click",function(e){
			
			const a = doucment.getElementById('us')
			const b = doucment.getElementById('kr')
			const k = doucment.getElementById("call")
			
			a.style.display="none"
			b.style.display="none"
			if(k.value==1) a.style.display="block"
			else{b.style.display="block"}				
		})	
	}
</script>
</head>
<body>
	<label>언어선택<input id="selectLanguage" value="1"></label>
	<c:set var="lang" value="<%= %>"/>
	<button id="call">선택</button>
	

	<div id="us">
		<ftm:setLocale value="en_us"/>
	</div>
	
	<div id="ko">
		<fmt:setLocale value="ko_KR"/>
	</div>
	
	
	
	
	<fmt:bundle basename="resource.member">
		<fmt:message key="mem.name"/><br>
		<fmt:message key="mem.address"/><br>
		<fmt:message key="mem.job"/><br>
	</fmt:bundle>
	
</body>
</html>