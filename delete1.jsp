<%@page import="java.io.*,java.sql.*"%>
<html>
<body background="images/view.jpeg">
<center>

<Table>
<tr>

<td bgColor=silver vAlign=top align="right" ><Font size=4 face=Arial><B>
<a href="view.jsp">View Record</a></B></Font></td>

<td bgColor=silver vAlign=top align="right"><Font size=4 face=Arial><B>
<a href="delete.jsp">Delete a Particular Record</a></B></Font></td>

<td bgColor=silver vAlign=top align="right"><Font size=4 face=Arial><B>
<a href="viewfeed.jsp">View student feedbacks</a></B></Font></td>

<hr>
 </tr>
 </Table>
</center>
<br><br>
<p align="right">
 <B><a href="signout.jsp"><Font size=4 face=Arial>Sign out</a></B></Font>
</p>
<hr>
<%
Connection con=null;
ResultSet rs=null;
PreparedStatement ps=null;
try

{


Class.forName("org.postgresql.Driver");
String user=request.getParameter("user");
con=DriverManager.getConnection("jdbc:postgresql://localhost:5432/data","register","123");

if(con!=null)

{
	
	ps=con.prepareStatement("delete from student where user_id=?");
	ps.setString(1,user);
	ps.executeUpdate();
	out.println("Student record deleted successfully");
}
con.close();
}
catch(Exception e)
{
	out.println(e);
}

%>
</body>
</html>

