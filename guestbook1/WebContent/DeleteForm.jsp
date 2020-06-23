<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "com.javaex.dao.GuestBookDao" %>
<%@ page import = "com.javaex.vo.PersonVo" %>

<%
	request.setCharacterEncoding("UTF-8");
	int no = Integer.parseInt(request.getParameter("no"));	

	GuestBookDao  gb = new GuestBookDao();
	PersonVo pv = gb.getPerson(no);
%>
	
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<form action ="./Delete.jsp" method ="post">
비밀번호 : 
<input type = "text" name="password" >
<input type = "hidden" name ="no" value = "<%=pv.getNo()%>">
<button type ="submit">확인</button>
</form>
<br>
<a href ="./AddList.jsp">메인으로 돌아가기</a>

</body>
</html>