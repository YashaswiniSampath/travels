<%-- 
    Document   : validate
    Created on : 27 Oct, 2018, 9:58:05 PM
    Author     : Sampath
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
    <%    try
{
Connection con = null;
Statement st=null;
Statement st1=null;
int i;

String connectionURL = "jdbc:mysql://127.0.0.1:3307/travel";

String g1=request.getParameter("username");
String s1=request.getParameter("password");
if(g1!=null)
{

String sql1="select * from login where username='"+g1+"' and password='"+s1+"'";

Class.forName("com.mysql.jdbc.Driver").newInstance();
 Connection connection =DriverManager.getConnection(connectionURL,"yashu","yashu");
st=connection.createStatement();
ResultSet rs=st.executeQuery(sql1);

if(rs.next())
{
response.sendRedirect("admin.jsp");

}

else
{
out.println("<html><body><script type=\"text/javascript\">");
out.println("confirm('INVALID USERNAME or PASSWORD');");
out.println("</script></body></html>");
}

}


}
catch(Exception e)
{
out.println(e);
}
    %>
    </body>
</html>
