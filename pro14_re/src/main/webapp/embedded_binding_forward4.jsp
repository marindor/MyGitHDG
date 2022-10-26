<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="pro14_re.guysData.JavaBeanVO"%>
    
<%
	request.setCharacterEncoding("utf-8");
%>
<%
	//아세리파 <form><input>태그 없이 자체 아,세,리 객체에 setAttribute로 Object를 세팅함
	request.setAttribute("id", "requestScope~");
	session.setAttribute("name", "sessionScope~"); //받는 쪽에 넘겨서 동일한 id로 속성 붙일꺼임
%>
    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>embeded binding forward4</title>
</head>
<body>
	<h1>아세리파가 각각 동일한 속성을 가질 경우 역순 기준으로 값을 참조한다.</h1> <!-- 어차피 무시해서 안나옴-->
	<h2>request 내장 객체에 바인딩 후 포워드</h2> <!-- 어차피 무시해서 안나옴-->
	<jsp:forward page="embedded_binding_forwarded4.jsp"></jsp:forward>
</body>
</html>