<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="pro14_re.guysData.JavaBeanVO"%>
    
<%
	request.setCharacterEncoding("utf-8");
%>
<%
	//아세리파 <form><input>태그 없이 자체 아,세,리 객체에 setAttribute로 Object를 세팅함
	
	JavaBeanVO vo = new JavaBeanVO("Dan-mu-ji","dddd","단무지","danmu@naver.com");
	
	request.setAttribute("vo", vo);
	
	session.setAttribute("vo",vo);
	
	application.setAttribute("vo",vo);
%>
    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>embeded binding forward2</title>
</head>
<body>
	<h1>포워드와 바인딩2(JavaBean 그러니까 VO 연결 사용)</h1> <!-- 어차피 무시해서 안나옴-->
	<h2>request, session, application 내장 객체에 바인딩 후 포워드</h2> <!-- 어차피 무시해서 안나옴-->
	<jsp:forward page="embedded_binding_forwarded2.jsp"></jsp:forward>
</body>
</html>