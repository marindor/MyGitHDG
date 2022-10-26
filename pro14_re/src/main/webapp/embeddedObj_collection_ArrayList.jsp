<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="java.util.*, pro14_re.guysData.*"
    isELIgnored="false"%>
    
<%
	request.setCharacterEncoding("utf-8");
%>

<jsp:useBean id="vo1" class="pro14_re.guysData.JavaBeanVO"/>
<jsp:setProperty name="vo1" property="*"/>

<jsp:useBean id="member_arrayList" class="java.util.ArrayList"/>

<%
	JavaBeanVO vo2 = new JavaBeanVO("BigMAMA","bibibig","빅마마","big@take.out");

	member_arrayList.add(vo1);
	member_arrayList.add(vo2);

%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Using embedded_param</title>
</head>
<body>
	${member_arrayList[0].id }<br>
	${member_arrayList[0].pwd }<br>
	${member_arrayList[0].name }<br>
	${member_arrayList[0].email }<br>
	<hr>
	${member_arrayList[1].id }<br>
	${member_arrayList[1].pwd }<br>
	${member_arrayList[1].name }<br>
	${member_arrayList[1].email }<br>
	<hr>	
</body>
</html>