<%@page import="java.sql.*"%>

<%
	Connection con=null;
	PreparedStatement ps=null;
	Statement stmt=null;
	ResultSet rs=null;String f=request.getParameter("fname");
	String m=request.getParameter("mname");
try
{
Class.forName("org.postgresql.Driver");
	
	con=DriverManager.getConnection("jdbc:postgresql://localhost:5432/demo","stud","123");
	if(con!=null)
	{
		

	ps=con.prepareStatement("insert into stud values(?)");



		ps.setString(1,f);

		 ps.executeUpdate();
                 

		out.println("updated");
		

}

	con.close();
	
	}
	catch(Exception e)
	{
		System.out.println(e);
	}

%>

