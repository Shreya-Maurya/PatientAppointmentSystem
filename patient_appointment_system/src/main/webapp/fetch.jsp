<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>fetchdetails</title>
</head>
<body><% try{
Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/patientproj","root","Shreya123#");
PreparedStatement ps=con.prepareStatement("select * from appointment");
ResultSet rs=ps.executeQuery();
out.println("<table border='2'><tr><th>nasme</th><th>age</th><th>gender</th></tr>");
while(rs.next())
{
out.println("<tr><td>"+rs.getString(1)+"</td><td> "+rs.getInt(2)+"</td><td> "+rs.getString(3)+"</td></tr> ");
}
con.close();ps.close();

out.println("</table>");}
catch(Exception e)
{}
%>
</body>
</html>