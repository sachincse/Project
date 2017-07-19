<%@ page import="java.sql.*" %> 
<%
String name = request.getParameter("email").toString();
System.out.println(name);
String data ="";
try{
Class.forName("com.mysql.jdbc.Driver");
Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/locorum", "root", "");
Statement st=con.createStatement();
ResultSet rs=st.executeQuery("select * from login where email='"+name+"'");

if(rs.next())
{
data="Email-ID already exists!";
}
else
{
data="You can register now!!!!";

}
out.println(data);
System.out.println(data);
}
catch (Exception e) {
System.out.println(e);
}
%>