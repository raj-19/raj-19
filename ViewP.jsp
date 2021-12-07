<%@ page language="java" 
         contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1"
         import="java.util.List,com.test.StudentDAO,com.test.UserBean"
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h1>Displaying Student List for Admin</h1>
      <table border ="1" width="500" align="center">
         <tr bgcolor="00FF7F">
          <th><b>Student First Name</b></th>
          <th><b>Student Last Name</b></th>
          <th><b>Student E-Mail</b></th>
          <th><b>View Details</b></th>
          <th><b>Delete Details</b></th>
         </tr>
         
        <%List<UserBean> ubList = new StudentDAO().allStudents();
        for(UserBean ub : ubList){%>
        <%-- Arranging data in tabular form
        --%>
            <tr>
                <td><%=ub.getFname()%></td>
                <td><%=ub.getLname()%></td>
                <td><%=ub.getEmail()%></td>
                <td>
                   <form method="post" action="ViewP.jsp">
                   <input type="hidden" name="password" value="<%=ub.getPassword()%>">
                   <button type="submit" name="submit">
                        View
                   </button>
                   </form>
                </td>
                <td>
                   <form method="post" action="Delete.jsp">
                   <input type="hidden" name="password" value="<%=ub.getPassword()%>">
                   <button type="submit" name="submit">
                        Delete
                   </button>
                   </form>
                </td>
            </tr>
            <%}%>
        </table> 
        <hr/>
        <a href="View.jsp" style="margin-left: 90%">
        <button type="button">
                        Clear
        </button>
        </a>
    
<% 
  String password = request.getParameter("password");
  UserBean ub = new StudentDAO().partiStudents(password);
%>
<h1><%= "Displaying "+ub.getFname()+" "+ub.getLname() %></h1>
<table width="50%">
         <h3>Personal Information</h3>
         <tr>
           <td><b>First Name</b></td>
           <td><%=ub.getFname()%></b>
         </tr>
         <tr>
           <td><b>Last Name</b></td>
           <td><%=ub.getLname()%></b>
         </tr>
         <tr>
           <td><b>Date of Birth</b></td>
           <td><%=ub.getDob()%></b>
         </tr>
         <tr>
           <td><b>E-Mail</b></td>
           <td><%=ub.getEmail()%></b>
         </tr>
         <tr>
           <td><b>Mobile Number</b></td>
           <td><%=ub.getMno() %></b></td>
         </tr>
         <tr>
           <td><b>Gender</b></td>
           <td><%=ub.getGender()%></b>
         </tr>
         <tr>
           <td><b>Address</b></td>
           <td><%=ub.getAddress()%></b>
         </tr>
         <tr>
           <td><b>City</b></td>
           <td><%=ub.getCity()%></td>
         </tr>
         <tr>
           <td><b>PinCode</b></td>
           <td><%=ub.getPincode()%></td>
         </tr>
         <tr>
           <td><b>State</b></td>
           <td><%=ub.getState()%></td>
         </tr>
         <tr>
           <td><b>Country</b></td>
           <td><%=ub.getFname()%></td>
         </tr>
         <tr>
            <td><b>Course</b></td>
            <td><%=ub.getCourse()%></td>
         </tr>
</table>
<h2>============================================================</h2>
<table width="100%">
<h3>Educational Qualification</h3> 
<tr>
<td align="center"><b>Sl.No.</b></td>
<td align="center"><b>Examination</b></td>
<td align="center"><b>Board</b></td>
<td align="center"><b>Percentage</b></td>
<td align="center"><b>Year of Passing</b></td>
</tr>
 
<tr>
<td align="center">1</td>
<td align="center">Class X</td>
<td align="center"><%=ub.getX_board()%></td>
<td align="center"><%=ub.getX_percen()%></td>
<td align="center"><%=ub.getX_yop()%></td>
</tr>
 
<tr>
<td align="center">2</td>
<td align="center">Diploma</td>
<td align="center"><%=ub.getDip_board()%></td>
<td align="center"><%=ub.getDip_percen()%></td>
<td align="center"><%=ub.getDip_yop()%></td>
</tr>

<tr>
<td align="center">3</td>
<td align="center">Graduation</td>
<td align="center"><%=ub.getGrad_board()%></td>
<td align="center"><%=ub.getGrad_percen()%></td>
<td align="center"><%=ub.getGrad_yop()%></td>
</tr>
</table>

<br><br><br><br>
        <a href="Home.html"><button type="button">Home</button></a>
        <a href="Register.html"><button type="button">New Student?</button></a>

</body>
</html>