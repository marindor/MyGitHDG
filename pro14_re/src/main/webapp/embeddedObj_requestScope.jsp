<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    isELIgnored="false"%>
    
<%
	request.setCharacterEncoding("utf-8");
    //common_page.jsp에서 id, pwd, name, email을 보냈기 때문에 request객체에 그 param들이 들어있다.
    String address="hahahaha";
	request.setAttribute("address", address);//request객체에 address를 바인딩했다.
	//이 때 request.setAttribute는 string이 아닌 객체를 묶는다.
	//문법적으로 request.setAttribute을 실앵하면 서블릿간 공유할 수 있는 객체 정보를 바인딩하는 메서드이다.
	//그래서 attribute한 객체속성은 request.parameter와는 다른 객체속성이다.
	//그러므로 request.getParameter(address);로 꺼내봐야 null값이다.
	
	//https://shs2810.tistory.com/20
	 String addressParam = request.getParameter("address"); //null이다.
	 //그 이유는 request의 parameter에 address 속성이 없기 떄문이다.
	 Object addressObject = request.getAttribute("address"); //"hahahaha"가 나온다.
	 //그 이유는 reqeust의 attribute에 address 속성이 있기 때문이다. 거기에 "hahahaha" 객체가 들어있기 때문이다.
%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Using embedded_param</title>
	<script defer>alert("포워딩 갑니다.")	</script>
</head>
<body>
	<!-- jsp:forward는 컴파일러가 코드를 실행하는 순간 현재 url만을 고정시킨체 웹page를 다른 jsp로 교체함 -->
	<jsp:forward page="embeddedObj_requestScope_forwarded.jsp"></jsp:forward>
	 
	<%= addressObject %>
	<%= addressParam %>
</body>

</html>