<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="com.test.UserBean,com.test.StudentDAO"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta http-equiv="refresh" content="5;url=SView.jsp" />
<style>
  body, html {
    margin: 0px;
    padding: 0px;
    background-color: #ededed;
    font-family: 'Trebuchet MS';
}
      table {
        border-collapse: separate;
        border-spacing: 10px 10px
      }
      th {
        background-color: #4287f5;
        color: white;
      }
      th,
      td {
        width: 170px;
        text-align: left;

        padding: 5px;
      }
      h2 {
        color: #4287f5;
      }


.Container {
    width: 90%;
    min-width: 500px;
    margin: auto;
}
input {
  width: 80px;
  height: 10%;
}
</style>

</head>
<body>

<% 
String date_day = request.getParameter("Birthday_day");
String date_month = request.getParameter("Birthday_Month");
String date_year = request.getParameter("Birthday_Year");
String dob = date_day+"-"+date_month+"-"+date_year;
%>
<%=dob %>

<%UserBean ub = (UserBean)application.getAttribute("Bean");
  ub.setFname(request.getParameter("First_Name"));
  ub.setLname((request.getParameter("Last_Name")));
  ub.setDob(dob);
  ub.setMno(Long.parseLong(request.getParameter("Mobile_Number")));
  ub.setAddress(request.getParameter("Address"));
  ub.setCity(request.getParameter("City"));
  ub.setPincode(Integer.parseInt(request.getParameter("Pin_Code")));
  ub.setState(request.getParameter("State"));
  ub.setCountry(request.getParameter("Country"));
  String password = ub.getPassword();
  boolean b = new StudentDAO().updateStudent(password, ub);
  if(b==true)
  {
	  out.println("Success");
  }
  else
  {
	  out.print("Failed");
  }
%>
 
</body>
</html>