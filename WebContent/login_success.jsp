<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>登陆成功</title>
</head>
<body>
	<h1>登陆成功</h1> <hr />
	<%
	String loginuser="";
	if(session.getAttribute("loginName")!=null)
	{
		loginuser=session.getAttribute("loginName").toString();
	}
	%>
	欢迎<font color="red"><%=loginuser %></font>
</body>
</html>