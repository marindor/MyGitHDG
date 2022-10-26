<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    isELIgnored="false"
    %>
    
<%
	request.setCharacterEncoding("utf-8");
%>

<jsp:useBean id="vo" class="pro14_re.guysData.JavaBeanVO"/>
<jsp:setProperty name="vo" property="*"/>

<jsp:useBean id="addr" class="pro14_re.guysData.Address"/>
<jsp:setProperty name="addr" property="city" value="서울"/>
<jsp:setProperty name="addr" property="zipcode" value="07654"/>

<%
	vo.setAddr(addr); //has-a 관계로 vo 안에서 addr클래스를 끌어쓰는 방식이므로 vo에서 setter로 불러와서 속성을 연결한다. 
%>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Using has-a child attr</title>
</head>
<body>
	<div>======================================</div>
	${vo.id }<br>
	${vo.pwd }<br>
	${vo.name }<br>
	${vo.email }<br>
	<%= vo.getAddr().getCity() %><br><!-- 표현식을 기용할 때에는 java 문법을 호출한다. -->
	<%= vo.getAddr().getZipcode() %><br>
	<div>======================================</div>
	${vo.addr.city }<br><!-- 표현식의 다음 세대. EL표기법이다. java 문법 대신 값을 메서드없이 속성으로 간단히 가져올 수 있다.  -->
	${vo.addr.zipcode }<br>
	<div>end</div>
	
</body>
</html>