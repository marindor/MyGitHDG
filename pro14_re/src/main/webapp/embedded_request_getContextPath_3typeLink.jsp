<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입</title>
</head>
<body>
	<h1>3가지 타입의 링크 걸기</h1>
	<a href="http://localhost:8090/pro14_re/common_page.jsp">http:/localhost:8090/pro14_re/common_page.jsp</a><br><br>
	<a href="<%=request.getContextPath() %>/common_page.jsp"><%=request.getContextPath() %>/common_page.jsp</a><br><br>
	<a href="${pageContext.request.contextPath}/common_page.jsp">${pageContext.request.contextPath}/common_page.jsp</a><br><br>
</body>
</html>