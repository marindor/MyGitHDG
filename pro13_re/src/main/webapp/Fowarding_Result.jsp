<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("utf-8");
%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	String id = request.getParameter("id");
	if(id.length()==0){		
%>
		<jsp:forward page="Fowarding_Login.jsp"/>
<%
	}
%>
	<h1>login complete!</h1>
	<h2>welcome! <%=id %>!</h2>
</body>
</html>