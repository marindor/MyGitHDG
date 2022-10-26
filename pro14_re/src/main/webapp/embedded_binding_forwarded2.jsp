<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="pro14_re.guysData.JavaBeanVO" isELIgnored="false"%>
    
<%
	request.setCharacterEncoding("utf-8");
%>
<%
	//아세리파 <form><input>태그 없이 자체 아,세,리 객체에 getAttribute로 Object를 가져온 후 (String)으로 형변환
	
	JavaBeanVO vo1 = (JavaBeanVO)request.getAttribute("vo");
	JavaBeanVO vo2 = (JavaBeanVO)session.getAttribute("vo");
	JavaBeanVO vo3 = (JavaBeanVO)application.getAttribute("vo");

	
	String id = vo1.getId();
	
	String pwd = vo1.getPwd();
	
	String name = vo2.getName();//vo2
	
	String email = vo3.getEmail();//vo3
	

%>
    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>embeded binding forwarded1</title>
</head>
<body>
	<h1>VO(자바빈)을 아.세.리에 포워드 및 바인딩2</h1>
	<h2>request, session, application 내장 객체에 바인딩 후 포워드</h2>
	<hr>
	<%=id %><br> <!-- 기본 표현식 문법으로는 값을 그대로 가져올 수 있다. -->
	<%=pwd %><br>
	<%=name %><br>
	<%=email %><br>
	<hr>
	id: ${id }<br>  <!-- 출력할 값이 없다. 왜냐면 중괄호 EL은 출력할 내장 객체가 필요하다. -->
	pwd: ${pwd }<br>
	name: ${name }<br>
	email: ${email }<br>
	<hr>
	id: ${vo.id }<br> <!-- EL에서는 클래스 VO 선언을 통해 외부 클래스를 내장 객체로 연동할 수 있다. -->
	pwd: ${vo.pwd }<br>
	name: ${vo.name }<br>
	email: ${vo.email }<br>	
</body>
</html>