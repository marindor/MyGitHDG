<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="pro14_re.guysData.JavaBeanVO, java.util.*" isELIgnored="false"%>
    
<%
	request.setCharacterEncoding("utf-8");
%>
<%
	session.setAttribute("id","sessionScope~!!");
	application.setAttribute("name","applicationScope~!!");
%>
    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>embeded binding forwarded1</title>
</head>
<body>
	<h1>아세리파가 각각 동일한 속성을 가질 경우 역순 기준으로 값을 참조한다.</h1>
	<h2>request, session, application 내장 객체에 바인딩 후 포워드</h2>
	<h3>확장 EL</h3>
	<br>
	<p style="color:blue">
	포워딩 페이지에서 아래를 보냈고<br>
	request.setAttribute("id", "requestScope~");<br>
	session.setAttribute("name", "sessionScope~");<br>
	<br>
	이 jsp의 표현태그에서<br> 
	session.setAttribute("id","sessionScope~!!");<br>
	application.setAttribute("name","applicationScope~!!");<br>
	을 넣었다. 우선순위에 따라 아래가 찍힌다.<br>
	<br>
	중복시킨 id는 request가 더 높아서 request값을 썼고, <br> 
	중복시킨 name은 session이 더 높아서 session값을 썼다.
	아 &lt 세 &lt 리 &lt 페
	</p>
	
	<hr>
	id: ${id }<br>
	pwd: ${name }<br>


</body>
</html>