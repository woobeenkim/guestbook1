<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "com.javaex.dao.GuestBookDao" %>
<%@ page import = "com.javaex.vo.PersonVo" %>

<%
	request.setCharacterEncoding("UTF-8");
	String password = request.getParameter("password");
	int no = Integer.parseInt(request.getParameter("no"));	
	GuestBookDao gb =new GuestBookDao();
	gb.personDelete(no,password);
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