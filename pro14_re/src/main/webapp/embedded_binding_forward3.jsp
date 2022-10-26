<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="pro14_re.guysData.JavaBeanVO, java.util.*"%>
    
<%
	request.setCharacterEncoding("utf-8");
%>
<%
	//아세리파 <form><input>태그 없이 자체 아,세,리 객체에 setAttribute로 Object를 세팅함
	
	JavaBeanVO vo1 = new JavaBeanVO("SoSeJi","kkaa","쏘세지","soso@naver.com");
	JavaBeanVO vo2 = new JavaBeanVO("kokeki","aann","지쎄소","osos@ com.naver");
	
	List data = new ArrayList();
	data.add(vo1);
	data.add(vo2);
	
	
	request.setAttribute("data", data);

%>
    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>embeded binding forward3</title>
</head>
<body>
	<h1>포워드와 바인딩3(JavaBean 그러니까 VO 연결 사용)+ List와 ArrayList 활용</h1> <!-- 어차피 무시해서 안나옴-->
	<h2>request 내장 객체에 바인딩 후 포워드</h2> <!-- 어차피 무시해서 안나옴-->
	<jsp:forward page="embedded_binding_forwarded3.jsp"></jsp:forward>
</body>
</html>