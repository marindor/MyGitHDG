<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false" import="java.util.*, pro14_re.guysData.*"%>
    
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
    
    
<% request.setCharacterEncoding("utf-8"); %>

<%
	List guys = new ArrayList();
	guys.add("hellow");
	guys.add("world");
	guys.add("guys!");
	
	List girls = new ArrayList();
	JavaBeanVO girl1 = new JavaBeanVO("a", "1111", "rose", "rose@gmail.com");
	JavaBeanVO girl2 = new JavaBeanVO("b", "2222", "tulip", "tulip@gmail.com");
	JavaBeanVO girl3 = new JavaBeanVO("c", "3333", "napal", "napal@gmail.com");
	girls.add(girl1);
	girls.add(girl2);
	girls.add(girl3);
%>    

<c:set var="data1" value="<%= guys %>" />

<c:set var="data2" value="<%= girls %>" />
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>c:forEach"</title>
</head>
<body>
	<h3 style="color:blue">
		List xxx = new ArrayList() 객체와 <br>
		&ltc:forEach var="i" items="like Array" begins="0" end="15" step="1" varStatus="something.index|count|first|last" /&gt<br>
		그리고	
		&ltc:forTokens var="piece" items="tuple" delims="," /&gt
	</h3>
	<br>
	<hr>
	<c:forEach var="i" begin="1" end="10" step="1" varStatus="check">
		i=${i} <span> </span>iterator = ${check.count }<span> </span>${check.first}<span> </span>${check.last}<span> </span>${check.index}<br>
	</c:forEach>
	<br>
	<hr>
	<div>c:set을 통해 단순 ArrayList 돌려보기</div>
	<c:forEach var="aaa" items="${data1}">
		${aaa}<br>
	</c:forEach>
	<br>
	<hr>
	<div>c:set의 복수 value를 c:forToken을 통해 받고 구분자 돌려보기</div>
	<c:set var="letter" value="a,b,c,d,e" />
	<c:forTokens var="piece" items="${letter }" delims=",">
		${piece }<br>
	</c:forTokens>
	<br>
	<hr>	
	<div>JavaBeanVO 돌려보기1 : c:set의 var 그리고 start, end, step을 통해!</div>
	<c:forEach var="i" begin="0" end="2" step="1">
		${data2[i].id}
		${data2[i].pwd}
		${data2[i].name}
		${data2[i].email}
		<br>
	</c:forEach>
	<br>
	<hr>
	<div>JavaBeanVO 돌려보기2 : c:set의 var 그리고 items를 통해! 간단히!</div>
	<c:forEach var="bbb" items="${data2}">
		${bbb.id}
		${bbb.pwd}
		${bbb.name}
		${bbb.email}
		<br>
	</c:forEach>	
</body>
</html>