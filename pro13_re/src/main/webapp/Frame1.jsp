<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("utf-8");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<jsp:include page="Frame_Piece.jsp" flush="true">
		<jsp:param name="name" value="창캡쳐"/>
		<jsp:param name="imgName" value="dong.png"/>
	</jsp:include>
</body>
</html>