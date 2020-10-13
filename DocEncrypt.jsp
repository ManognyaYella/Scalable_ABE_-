<%@include file="dheader.jsp"%>
<%@ page  import="java.sql.*" import="databaseconnection.*,KGC.*" import="javax.swing.JOptionPane"%>

<%! int qid;byte[] ct,data;String docnm;%>
<%
	String pk =(String)session.getAttribute("pk");	
	String qid =(String)session.getAttribute("qid");

	String pid =(String)session.getAttribute("pid");
	String docid= (String)session.getAttribute("docid");
      try{

              Connection con=databasecon.getconnection();
				Statement st=con.createStatement();

	Statement stt=con.createStatement();
				
								ResultSet r12=stt.executeQuery("select  *from temp");
if(r12.next())
	{
data=r12.getBytes(2);
docnm=r12.getString(1);
	}

				
PreparedStatement ps=con.prepareStatement("INSERT INTO docresponse (qid,puid,resdata,docid,docnm)VALUES(?,?,"+CPABE_encrypt+"(?,'"+pk+"'),?,?)");

ps.setString(1,qid);
ps.setString(2,pid);
ps.setBytes(3,data);
ps.setString(4,docid);
ps.setString(5,docnm);
int s = ps.executeUpdate();

response.sendRedirect("patientReq.jsp?msg1=sent");

}
catch(Exception e){e.printStackTrace();}
%>
	<!-- footer --><br><br><br>
	
<%@include file="footer.jsp"%>



    
