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
<h1>Displaying Student List</h1>
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
        
        <br><br><br><br>
        <a href="Home.html"><button type="button">Home</button></a>
        <a href="Register.html"><button type="button">New Student?</button></a>

</body>
</html>