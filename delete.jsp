<html>

<body background="images/view.jpeg">
<form action="delete1.jsp" method="post">
<center>

<Table>
<tr>

<td bgColor=silver vAlign=top align="right" ><Font size=4 face=Arial><B>
<a href="view.jsp">View Student Record</a></B></Font></td>

<td bgColor=silver vAlign=top align="right"><Font size=4 face=Arial><B>
<a href="delete.jsp">Delete a Particular Record</a></B></Font></td>

<td bgColor=silver vAlign=top align="center" WIDTH=250><Font size=4 face=Arial><B>
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
<h2>To delete the student record specify the username</h2>
<br>

Enter the student User<input type="text" name="user"><br>
<input type="submit" value="Delete">
</form>
</body>

</html>
