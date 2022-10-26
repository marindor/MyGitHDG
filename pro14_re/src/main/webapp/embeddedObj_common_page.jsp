<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    
    <%
	request.setCharacterEncoding("utf-8");
    //common_page.jsp에서 id, pwd, name, email을 보냈기 때문에 상대방 jsp의 request객체에 그 param들이 들어있다.
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원 정보</title>
</head>
<body>
	<!-- 
	<form method="post" action="embeddedObj_param.jsp">
	-->
	<!-- 
	<form method="post" action="embeddedObj_requestScope.jsp">
	-->
	<!-- 
	<form method="post" action="embeddedObj_useBean_jsp_or_EL.jsp">
	-->
	<!-- 
	<form method="post" action="embeddedObj_collection_ArrayList.jsp">
	-->
	<!-- 
	<form method="post" action="embeddedObj_collection_Hashmap.jsp">
	 -->
	<form method="post" action="embeddedObj_has-a_relationship.jsp">
		id : <input type="text" name="id"><br>
		password : <input type="password" name="pwd"><br>
		name : <input type="name" name="name"><br>
		email : <input type="text" name="email"><br>
		<input type="submit" value="가입">
		<input type="reset" value="re"><br>
	</form>
</body>
</html>