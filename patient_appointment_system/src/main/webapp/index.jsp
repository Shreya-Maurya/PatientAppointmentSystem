<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>indexjsp</title>
</head>
<body>
<%try{
String name=request.getParameter("n");
int age=Integer.parseInt(request.getParameter("a"));
String gen=request.getParameter("g");
String local=request.getParameter("city");
Class.forName("com.mysql.jdbc.Driver");

Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/patientproj","root","Shreya123#");
PreparedStatement ps=con.prepareStatement("insert into appointment(name,age,gen,loacal)values(?,?,?,?)");
ps.setString(1,name);
ps.setInt(2,age);
ps.setString(3,gen);
ps.setString(4,local);
ps.executeUpdate();
ps.close();
con.close();}
catch(Exception e)
{}
%>
</body>
<a href="fetch.jsp">fetch</a>
</html>