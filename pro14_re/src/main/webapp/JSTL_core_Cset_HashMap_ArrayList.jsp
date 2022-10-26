<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false" import="pro14_re.guysData.*, java.util.*"%>
    
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
    
    
<% request.setCharacterEncoding("utf-8"); %>


<jsp:useBean id="myArrayList" class="java.util.ArrayList"/>
<jsp:useBean id="myHashMap" class="java.util.HashMap"/>

<%
	myHashMap.put("id","park");
	myHashMap.put("pwd","1234");
	myHashMap.put("name","박총지");
	myHashMap.put("email","aaa@cdfg.com");
	
	JavaBeanVO vo1 = new JavaBeanVO("hong","5667","홍방방","name@gggg.com");
	JavaBeanVO vo2 = new JavaBeanVO("kim","9867","송태송","songe@sdfsdg.com");
	
	myArrayList.add(vo1);
	myArrayList.add(vo2);
	
	myHashMap.put("myArrayList",myArrayList);
%>

<!-- 단순 문자열이 아닌 경우의 내장객체는 반드시 ${}를 해서 value에 넣는다. -->
<c:set var="HM" value="${myHashMap}" scope="page"/>
<c:set var="AL" value="${myHashMap.myArrayList}" scope="page"/>

    
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
	${HM.id }<br>
	${HM.pwd }<br>
	${HM.name }<br>
	${HM.email }<br>
	<br>	
	${AL[0].id }<br>
	${AL[0].pwd }<br>
	${AL[0].name }<br>
	${AL[0].email }<br>
	<br>
	${AL[1].id }<br>
	${AL[1].pwd }<br>
	${AL[1].name }<br>
	${AL[1].email }<br>	
	
</body>
</html>