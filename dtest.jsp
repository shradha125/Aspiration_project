<html>
<body>
<form method="post" action="dtest.jsp">
<%@page import ="java.sql.*,java.util.*" %>
<%
	Connection con=null;

	Statement st=null;
	ResultSet rs=null;
	String i = request.getParameter("qid");


try
{	
	Class.forName("org.postgresql.Driver");
	
	con=DriverManager.getConnection("jdbc:postgresql://localhost:5432/data","register","123");
	

         if(con!=null)
		{
 			  st=con.createStatement();	
	  rs=st.executeQuery("select * from test1");
          
         con.close();
	
	}
}
	catch(Exception e)
	{
		System.out.println(e);
	}
 %>  




<tr>
<td><b>Question:<%=i+1%></b></td>
</tr>
<tr>

</tr>
<tr>
<td>
<b>
<input type='radio' name='op' value=1><%=rs.getString(3)%><br>
<input type='radio' name='op' value=2><%=rs.getString(4)%><br>
<input type='radio' name='op' value=3><%=rs.getString(5)%><br>
<input type='radio' name='op' value=4><%=rs.getString(6)%><br><br>
</b>
</td>
</tr>
<tr>
	<td align='center'>
	<input type='submit' value='Next' name='ok'>
	<input type="submit" value='Submit' name='ok'>
<input type="hidden" name='qid' value=<%=i+1%>>	
</td>
</tr>
</table>
</body>
</form>
</html>
