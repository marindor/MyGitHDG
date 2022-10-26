<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>forwarded page</title>
</head>
<body>
	<h3>url은 그대로지만</h3>
	<h3>embeddedObj_requestScope_forwarded.jsp 파일이다.</h3>
	<h3>title도 embeddedObj_requestScope_forwarded.jsp 것이다.</h3>
	<h3>url 빼고 싹 다 바꾼거다.</h3>
	아이디  ${param.id}<br>
	암호  ${param.pwd}<br>
	이름  ${param.name}<br>
	이메일  ${param.email}<br>
	주소  ${requestScope.address}<br>
	<!-- reqeustScope는 서블릿간 공유 객체인 attribute를 참고하는 메서드이다. -->

	
</body>
</html>