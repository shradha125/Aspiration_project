<%@page import="java.io.*,java.sql.*"%>
<html>
<body background="images/view.jpeg">
<center>

<Table>
<tr>

<td bgColor=silver vAlign=top align="right" ><Font size=4 face=Arial><B>
<a href="view.jsp">View Student Record</a></B></Font></td>

<td bgColor=silver vAlign=top align="right"><Font size=4 face=Arial><B>
<a href="delete.jsp">Delete a Particular Record</a></B></Font></td>

<td bgColor=silver vAlign=top align="center" WIDTH=250><Font size=4 face=Arial><B>
 <a href="course.jsp">View List of Courses</a></B></Font></td>

<td bgColor=silver vAlign=top align="center" WIDTH=250><Font size=4 face=Arial><B>
 <a href="cDelete.jsp">Delete a particular Course</a></B></Font></td>

<hr>
 </tr>
 </Table>
</center>
<br><br>
<p align="right">
 <B><a href="signout.jsp"><Font size=4 face=Arial>Sign out</a></B></Font>
</p>
<hr>
<center>
<%
Connection con=null;
ResultSet rs=null;
Statement stmt=null;
try

{
Class.forName("org.postgresql.Driver");
con=DriverManager.getConnection("jdbc:postgresql://localhost:5432/data","register","123");

if(con==null)
out.println("failed");
else
{
	stmt=con.createStatement();
	rs=stmt.executeQuery("Select * from Course");
%>
<center><h2>List of Courses</h2></center>
<br>
<br>
<table border="1" width=500>
<tr>
<th>Course Id</th>
<th>Course name</th>
</tr>

<%
	while(rs.next())
	{%>
<tr>
<td><% out.println(rs.getString(1));
%>
<td>
<%
out.println(rs.getString(2));
%></td>
</tr>

<%
}
}
con.close();
}
catch(Exception e)
{
	out.println(e);
}
%>
</center>
</body>
</html>

