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
  UserBean ub = new UserBean();
  application.setAttribute("bean", ub);
  
  String date_day = request.getParameter("Birthday_day");
  String date_month = request.getParameter("Birthday_Month");
  String date_year = request.getParameter("Birthday_Year");
  
  String fname = request.getParameter("First_Name");
  String lname = request.getParameter("Last_Name");
  String dob = date_day+"-"+date_month+"-"+date_year;
  String email = request.getParameter("Email_Id");
  String password = request.getParameter("PassWord");
  String gender = request.getParameter("Gender");;
  String address = request.getParameter("Address");;
  String city = request.getParameter("City");;
  String state = request.getParameter("State");;
  String country = request.getParameter("Country");;
  String x_board = request.getParameter("ClassX_Board");;
  String dip_board = request.getParameter("Diploma_Board");;
  String grad_board = request.getParameter("Graduation_Board");
  String course = request.getParameter("Course");;
  Long mno = Long.parseLong(request.getParameter("Mobile_Number"));
  int pincode = Integer.parseInt(request.getParameter("Pin_Code"));
  int x_yop = Integer.parseInt(request.getParameter("ClassX_YrOfPassing"));
  int dip_yop = Integer.parseInt(request.getParameter("Diploma_YrOfPassing"));
  int grad_yop = Integer.parseInt(request.getParameter("Graduation_YrOfPassing"));
  double x_percen = Double.parseDouble(request.getParameter("ClassX_Percentage"));
  double dip_percen = Double.parseDouble(request.getParameter("Diploma_Percentage"));
  double grad_percen = Double.parseDouble(request.getParameter("Graduation_Percentage"));
  
  ub.setFname(fname);
  ub.setLname(lname);
  ub.setDob(dob);
  ub.setEmail(email);
  ub.setPassword(password);
  ub.setGender(gender);
  ub.setAddress(address);
  ub.setCity(city);
  ub.setState(state);
  ub.setCountry(country);
  ub.setX_board(x_board);
  ub.setDip_board(dip_board);
  ub.setGrad_board(grad_board);
  ub.setCourse(course);
  ub.setMno(mno);
  ub.setPincode(pincode);
  ub.setX_yop(x_yop);
  ub.setDip_yop(dip_yop);
  ub.setGrad_yop(grad_yop);
  ub.setX_percen(x_percen);
  ub.setDip_percen(dip_percen);
  ub.setGrad_percen(grad_percen);
  
  
  boolean b = new StudentDAO().register(ub);
  
  if(b==true)
  {
	  
	  out.print("Registratin Successfull...");
  }
  else
  {
	  out.println("<br>Registration Failed");
  }
%>
<%@ include file="Home.html" %>
</body>
</html>