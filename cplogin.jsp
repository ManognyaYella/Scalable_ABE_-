
<%@page import="databaseconnection.*,java.sql.*"%>
<%!
Connection con;
Statement stmt;
ResultSet rs;
%>
<%
String uname = request.getParameter("cp");
String password = request.getParameter("pwd");

con = databasecon.getconnection();
stmt = con.createStatement();

if(uname.equals("CS") && (password.equals("CS"))){
response.sendRedirect("cphome.jsp?msg=succ");
}else{
response.sendRedirect("CS.jsp?msg1=unsucc");
}
%>