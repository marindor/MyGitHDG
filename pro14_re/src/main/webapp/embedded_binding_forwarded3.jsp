<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="pro14_re.guysData.JavaBeanVO, java.util.*" isELIgnored="false"%>
    
<%
	request.setCharacterEncoding("utf-8");
%>
<%
	ArrayList<JavaBeanVO> data = (ArrayList<JavaBeanVO>)request.getAttribute("data");
	String id1 = data.get(0).getId();
	String pwd1 = data.get(0).getPwd();
	String name1 = data.get(0).getName();
	String email1 = data.get(0).getEmail();
	String id2 = data.get(1).getId();
	String pwd2 = data.get(1).getPwd();
	String name2 = data.get(1).getName();
	String email2 = data.get(1).getEmail();	
%>
    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>embeded binding forwarded1</title>
</head>
<body>
	<h1>VO(자바빈)을 ArrayList에 넣고 request에 포워드 및 바인딩3</h1>
	<h2>request, session, application 내장 객체에 바인딩 후 포워드</h2>
	<p style="color:blue">받을 때는 아래와 같이 자료형과 제네릭을 반드시 명시한다.</p>
	<p style="color:blue; font-weight:bold"> ArrayList&ltJavaBeanVO&gt data = (ArrayList&ltJavaBeanVO&gt)request.getAttribute("data");</p>
	
	<h3>기본 표현식</h3>
	<p style="color:blue">
		String id1 = data.get(0).getId();<br>
		String pwd1 = data.get(0).getPwd();<br>
		String name1 = data.get(0).getName();<br>
		String email1 = data.get(0).getEmail();
	</p>
	<hr>
	<%=id1 %><br> 
	<%=pwd1 %><br>
	<%=name1 %><br>
	<%=email1 %><br>

	<hr>
	<%=id2 %><br> 
	<%=pwd2 %><br>
	<%=name2 %><br>
	<%=email2 %><br>
	
	<br><br>	
	<h3>확장 EL</h3>
	<p style="color:blue">
	ArrayList는 넣을 떄는 get(vo1)처럼 클래스명으로 넣지만, 꺼낼 때는 get(0)와 같이 인덱스 번호로 꺼낸다. 좀 아쉽네!<br>
	id: &#36{data[0].id }<br>
	pwd: &#36{data[0].pwd }<br>
	name: &#36{data[0].name }<br>
	email: &#36{data[0].email }<br>	
	</p>
	<hr>
	id: ${data[0].id }<br> <!-- EL에서는 클래스 VO 선언을 통해 외부 클래스를 내장 객체로 연동할 수 있다. -->
	pwd: ${data[0].pwd }<br>
	name: ${data[0].name }<br>
	email: ${data[0].email }<br>	
	<hr>		
	id: ${data[1].id }<br> <!-- EL에서는 클래스 VO 선언을 통해 외부 클래스를 내장 객체로 연동할 수 있다. -->
	pwd: ${data[1].pwd }<br>
	name: ${data[1].name }<br>
	email: ${data[1].email }<br>	
</body>
</html>