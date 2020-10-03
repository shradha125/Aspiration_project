<%@page import="java.sql.*"%>

<%
	Connection con=null;
	PreparedStatement ps=null;

	ResultSet rs=null;



	String f=request.getParameter("txt");
	
try
{	
	Class.forName("org.postgresql.Driver");
	
	con=DriverManager.getConnection("jdbc:postgresql://localhost:5432/data","register","123");
	if(con!=null)
	{
		
	
        String q="insert into feedback(feed) values(?)";
	ps=con.prepareStatement(q);

	ps.setString(1,f);	
	ps.executeUpdate();
               
		out.println("<center><h2>Thank You!</h2></center>");
		

}

	con.close();
	
	}
	catch(Exception e)
	{
		System.out.println(e);
	}

%>
<html>
<body background="images/view.jpeg"><br>
<a href="signout.jsp">Sign Out</a>
</body>
</html>

