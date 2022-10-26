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
	
	
<%
	javaBeanDAO dao = new javaBeanDAO();//dao를 끌어오고
	dao.addGuys(vo);//dao를 통해 멤버 추가하고
	List guysList = dao.read_guys_member();//dao를 통해 멤버를 읽어서 반환.
	//이 과정에서 회원추가와 회원조회 결과를 guysList 변수에 완전히 저장 완료
%>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	if(guysList.size()==0){
%>
		<h1>결과 없음</h1>
<%
	}else{
		for(int i=0; i<guysList.size(); i++){
			JavaBeanVO guys = (JavaBeanVO) guysList.get(i);
%>
		<%= guys.getId()%>
		<%= guys.getPwd()%>
		<%= guys.getName()%>
		<%= guys.getEmail()%>
		<%= guys.getJoinDate()%>
		<br>
<%
		}
	}
%>
	<h1>조회 완료</h1>

</body>
</html>