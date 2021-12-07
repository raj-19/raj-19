
<%@ page language="java" 
         contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1"
         import="com.test.UserBean,com.test.StudentDAO"
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
  String uname = request.getParameter("uname");
  String password = request.getParameter("password");
  
  UserBean ub = new UserBean();
  ub.setEmail(uname);
  ub.setPassword(password);
  
  application.setAttribute("Bean", ub);
  boolean b = new StudentDAO().studentLogin(uname,password);
  
  
  String s = request.getParameter("login");
  
  if(s.equals("Slogin")) {
  if(b==true)
  {
	response.sendRedirect("smsg.html");
  }
  else
  {
	  out.print("Invalid username or password...");
  }
  }
  else {
	  if(b==true)
	  {
		response.sendRedirect("msg.html");
	  }
	  else
	  {
		  out.print("Invalid username or password...");
	  }
  }
  
%>
<%@ include file="Home.html" %>
</body>
</html>