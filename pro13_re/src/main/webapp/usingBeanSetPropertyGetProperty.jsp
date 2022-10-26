<%@ page language="java" contentType="text/html; charset=UTF-8"
	import="java.util.*, pro13_re.*" pageEncoding="UTF-8"%>
	
<%
	request.setCharacterEncoding("utf-8");

	String id = request.getParameter("id");//request했으니 값 가져와서 변수에 저장
	String pwd = request.getParameter("pwd");//request했으니 값 가져와서 변수에 저장
	String name = request.getParameter("name");//request했으니 값 가져와서 변수에 저장
	String email = request.getParameter("email");//request했으니 값 가져와서 변수에 저장

%>

	<jsp:useBean id="vo" class="pro13_re.JavaBeanVO" scope="page"/>
	<jsp:setProperty name="vo" property="*"/>
	//이 코드는 dao 코드를 삭제하고 DB에 저장하지 않는다.

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
		//setProperty를 *로하면 for문을 돌릴 수가 없다.
		<jsp:getProperty name="vo" property="id"/>
		<br>
		<jsp:getProperty name="vo" property="pwd"/>
		<br>
		<jsp:getProperty name="vo" property="name"/>
		<br>
		<jsp:getProperty name="vo" property="email"/>
		<br>						
		

	<h1>조회 완료</h1>

</body>
</html>