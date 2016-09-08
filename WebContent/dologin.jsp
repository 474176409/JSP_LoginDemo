<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
    	String username="";
   		String password="";
   		request.setCharacterEncoding("utf-8");//防止中文乱码
   		//用request方法获取用户名，密码
   		username=request.getParameter("username");
   		password=request.getParameter("password");
   		//如果用户名密码均为admin则登陆成功
   		if("admin".equals(username)&&"admin".equals(password))
   		{
   			//用服务器内部转发的方式转到登陆成功的页面,将request对象和response对象向后传
   			session.setAttribute("loginName", username);//用session保存登陆的用户名
   			request.getRequestDispatcher("login_success.jsp").forward(request, response);
   		}
   		else
   		{
   			//登陆失败就请求重定向到登陆失败页面
   			response.sendRedirect("login_failure.jsp");
   		}
    %>