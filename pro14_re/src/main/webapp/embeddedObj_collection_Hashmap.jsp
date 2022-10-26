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
<jsp:useBean id="member_hashMap" class="java.util.HashMap"/>

<%
	member_hashMap.put("id","park");
	member_hashMap.put("pwd","1111");
	member_hashMap.put("name","박지성");
	member_hashMap.put("email","park@koko.com");


	JavaBeanVO vo2 = new JavaBeanVO("BigMAMA","bibibig","빅마마","big@take.out");

	//ArrayList에 vo 객체들 저장
	member_arrayList.add(vo1);
	member_arrayList.add(vo2);
	//HashMap에 ArrayList 추가 단, key값은 "member_arrayList"로 지정, value는 앞에서 만든 member_arrayList
	member_hashMap.put("member_arrayList",member_arrayList);

%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Using embedded_param</title>
</head>
<body>

	${member_hashMap.id }<br>
	${member_hashMap.pwd }<br>
	${member_hashMap.name }<br>
	${member_hashMap.email }<br>
	<hr>
	${member_hashMap.member_arrayList[0].id }<br>
	${member_hashMap.member_arrayList[0].pwd }<br>
	${member_hashMap.member_arrayList[0].name }<br>
	${member_hashMap.member_arrayList[0].email }<br>
	<hr>
	${member_hashMap.member_arrayList[1].id }<br>
	${member_hashMap.member_arrayList[1].pwd }<br>
	${member_hashMap.member_arrayList[1].name }<br>
	${member_hashMap.member_arrayList[1].email }<br>
	<hr>	
</body>
</html>