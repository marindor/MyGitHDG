<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    isELIgnored="false"%>
    
<%
	request.setCharacterEncoding("utf-8");
%>
<jsp:useBean id="vo" class="pro14_re.guysData.JavaBeanVO"/><!-- useBean 표기를 이용해 resource/java/밑에 pro14_re.guysData/JavaBeanVO.java 경로 -->
<jsp:setProperty name="vo" property="*"/><!-- setProperty를 통해 그리고 name을 통해 어느 Bean의 속성을 set할 건지 선택 후 property로 속성 설정하기 -->
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>2type of vo_find</title>
</head>
<body>
	<div>======<.%==========.%.>======================</div>
	<%= vo.getId()%><br>
	<%= vo.getPwd()%><br>
	<%= vo.getName()%><br>
	<%= vo.getEmail()%><br>
	<div>===========EL=========================</div>
	${vo.id }<br>
	${vo.pwd }<br>
	${vo.name }<br>
	${vo.email }<br>
</body>
</html>