<%@ page language="java" contentType="text/html; charset=UTF-8"
	import="java.util.*"
	import="db.*"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>회원정보 표출</title>
	<style>
		h1{
			text-align:center;
		}
	</style>
</head>
<body>
	<h1>회원 정보 창</h1>
	<%
		request.setCharacterEncoding("utf-8");
		String _name = request.getParameter("name");
		VO vo = new VO();
		vo.setName(_name);
		DAO dao = new DAO();
		List memberList = dao.listMembers(vo);
	%>
	<table border=1 width=800 align=center>
		<tr align=center bgcolor="#FFFF66">
			<td>id</td>
			<td>password</td>
			<td>name</td>
			<td>email</td>
			<td>joinDate</td>
		</tr>
		<%
			for(int i=0;i<memberList.size();i++){
				VO vo1 = (VO)memberList.get(i);
				String id=vo1.getId();
				String pwd=vo1.getPwd();
				String name=vo1.getName();
				String email=vo1.getEmail();
				Date joinDate = vo1.getJoinDate();
		%>
			<tr align=center>
				<td><%=id %></td>
				<td><%=pwd %></td>
				<td><%=name %></td>
				<td><%=email %></td>
				<td><%=joinDate %></td>
			</tr>
		<%
		}
		%>
	</table>
</body>
</html>