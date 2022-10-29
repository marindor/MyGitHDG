<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"
    import="java.util.*, pro14_re.guysData.*"
    %>
    
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
    
    
<% request.setCharacterEncoding("utf-8"); %>

<%
	List aaa = new ArrayList();
	JavaBeanVO boys1 = new JavaBeanVO("a1","1111","계란","egg@gmail.com");
	JavaBeanVO boys2 = new JavaBeanVO("a2","2222","식빵","bread@gmail.com");
	JavaBeanVO boys3 = new JavaBeanVO("a3","3333","야채","vegitable@gmail.com");
	aaa.add(boys1);
	aaa.add(boys2);
	aaa.add(boys3);
%>

<c:set var="bbb" value="<%=aaa%>"/>

<c:set var="projectPath" value="${pageContext.request.contextPath }" scope="request" />
    
<c:url var="gogogo" value="embeddedObj_param.jsp" scope="request"/>
    
    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>c:redirect</title>
	<script>
	//http://localhost:8090/pro14_re/JSTL_core_Credirect.jsp
	//redirect에서는 alert조차 무시한다!
		window.onload=function(){
			alert(${bbb[0].id})
		}
	</script>
</head>
<body>
	<h3 style="color:blue">
		&ltc:redirect url="url path" /&gt	
	</h3>

	<c:redirect url="${gogogo}">
		<c:param name="id" value="${bbb[0].pwd}"/> 
		<c:param name="pwd" value="${bbb[1].pwd}"/>
		<c:param name="name" value="${bbb[2].name}"/>
		<c:param name="email" value="${bbb[0].email}"/>
	</c:redirect>

</body>
</html>