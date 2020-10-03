<%@page import ="java.sql.*,java.util.*" %>
<html>
<body background="images/view.jpeg">
<%
	if ((request.getParameter("uname").equals("shradhag")) && (request.getParameter("pass").equals("shr12345") ))
		{
%>
<center>

<Table>
<tr>

<td bgColor=silver vAlign=top align="center" WIDTH=250><Font size=4 face=Arial><B>
<a href="view.jsp">View Student Record</a></B></Font></td>

<td bgColor=silver vAlign=top align="center" WIDTH=250><Font size=4 face=Arial><B>
<a href="delete.jsp">Delete a Particular Record</a></B></Font></td>

<td bgColor=silver vAlign=top align="center" WIDTH=250><Font size=4 face=Arial><B>
<a href="viewfeed.jsp">View student feedbacks</a></B></Font></td>

<hr>
 </tr>
 </Table>
</center>
<br>
<br>
<hr>
<br><br>
<p align="right">
 <B><a href="signout.jsp"><Font size=4 face=Arial>Sign out</a></B></Font>
</p>

<%
			String uname=request.getParameter("uname");
			session.setAttribute("username",uname);
			out.println("<html><body>");
			out.println("<h2>Welcome "+uname);
		
		}

	else if (!(request.getParameter("uname").equals("shradhag")) && !(request.getParameter("pass").equals("shr12345") ))
	{
Class.forName("org.postgresql.Driver");
Connection con=DriverManager.getConnection("jdbc:postgresql://localhost:5432/data","register","123"); 

Statement st=con.createStatement();

ResultSet rs=st.executeQuery("select * from administrator where admin_username='"+request.getParameter("uname")+"' and admin_password='"+request.getParameter("pass")+"'");
if(rs.next())
{
Cookie[] cookies = request.getCookies();
 
   
    if (cookies != null) {
 
        for (int i = 0; i < cookies.length; i++) {
 
            Cookie cookie = cookies[i];
            cookies[i].setValue(null);
            cookies[i].setMaxAge(0);
            response.addCookie(cookie);
        }
    }

%>

<center>

<Table>
<tr>

<td bgColor=silver vAlign=top align="right" ><Font size=4 face=Arial><B>
<a href="view.jsp">View Record</a></B></Font></td>

<td bgColor=silver vAlign=top align="right"><Font size=4 face=Arial><B>
<a href="delete.jsp">Delete a Particular Record</a></B></Font></td>

<td bgColor=silver vAlign=top align="right"><Font size=4 face=Arial><B>
 <a href="update.jsp">Update</a></B></Font></td>

<hr>
 </tr>
 </Table>
</center>
<br>
<br>
<hr>
<br><br>
<p align="right">
 <B><a href="signout.jsp"><Font size=4 face=Arial>Sign out</a></B></Font>
</p>
<%
String uname=request.getParameter("uname");
session.setAttribute("username",uname);
out.println("<h2>Welcome "+uname+"...");
}
	}
	else
	{
	out.println(" <h2>the user or password entered is not correct enter again</h2>");
	}
%>
</body>
</html>
