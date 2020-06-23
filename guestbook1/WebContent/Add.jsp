<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "com.javaex.dao.GuestBookDao" %>
<%@ page import = "com.javaex.vo.PersonVo" %>
<%
	request.setCharacterEncoding("UTF-8");
	String name = request.getParameter("name");
	String password = request.getParameter("password");
	String content = request.getParameter("content");
	String reg_date = request.getParameter("reg_date");
	GuestBookDao gb = new GuestBookDao();
	PersonVo pv = new PersonVo(name,password,content,reg_date);
	gb.personInsert(pv);
	response.sendRedirect("./AddList.jsp");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

</body>
</html>