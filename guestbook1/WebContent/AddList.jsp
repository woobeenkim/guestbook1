<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "com.javaex.dao.GuestBookDao" %>
<%@ page import = "com.javaex.vo.PersonVo" %>
<%@ page import = "java.util.List" %>

 <%
 	GuestBookDao listdao = new GuestBookDao();
    List<PersonVo> PL = listdao.getPersonList();
  	System.out.println(PL.toString());
 %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<form action ="./Add.jsp" method = "post">
<table border = '1'>
<tbody>
	<tr>
		<td>이름</td>
		<td><input type = "text" name = "name"></td>
		<td>비밀번호</td>
		<td><input type = "text" name = "password"></td>
	</tr>
	<tr>
		<td colspan="4"><input type = "text" name = "content" size = "60"></td>
	</tr>
	<tr>
		<td colspan="4"><button type ="submit">확인</button></td>
	</tr>
	</tbody>
</table>
</form>

<br>
<div>
	<%for(PersonVo pv : PL) {%>
<table border = '1' width ="476">

	<tr>
		<td><%=pv.getNo() %></td>
		<td><%= pv.getName() %></td>
		<td><%= pv.getReg_date() %></td>
		<td><a href ="./DeleteForm.jsp?no=<%= pv.getNo()%>">삭제</a></td>
	</tr>
	<tr>
		<td colspan="4"><%=pv.getContent() %></td>
	</tr>

	</tbody>
</table>
<%} %>
</div>


</body>
</html>