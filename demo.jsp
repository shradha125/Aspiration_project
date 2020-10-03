<%@page import="java.sql.*"%>
<%

Connection con=null;
	PreparedStatement ps=null;
	Statement stmt=null;
try
{
	String []courses=request.getParameterValues("courses");
         Class.forName("org.postgresql.Driver");

	con=DriverManager.getConnection("jdbc:postgresql://localhost:5432/demo","abc","123");
		
	if(con==null)
	{
		out.println("Connection failed");
	}
	else
	{
		out.println("Connection est");
		stmt=con.createStatement();

          for(int i=0;i<courses.length;i++)
          {
		
           	out.println("course is:" +courses[i]);
		String s=courses[i];
		ps=con.prepareStatement("insert into student values (?)");
		ps.setString(1,s);
		out.println("updated");
 		ps.executeUpdate();
          }
	}
}
catch(Exception e){}


%>
