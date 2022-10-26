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
	<h1>아이디 다시 입력하시오.</h1>
	<form action="Fowarding_Result.jsp" method="post">
		아이디: <input type="text" name="id">
		비번 : <input type="password" name="pw">
		<input type="submit" value="login">
		<input type="reset" value="re">
	</form>
</body>
</html>