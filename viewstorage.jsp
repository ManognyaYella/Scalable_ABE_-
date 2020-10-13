<%@ include file="cheader.jsp"%>
<%@ page import="java.sql.*,databaseconnection.*"%>
<div class="breadcrumb-agile py-1">
		<ol class="breadcrumb m-0">
			
			<li class="breadcrumb-item active" aria-current="page"></li>
		</ol>
	</div>
<head>
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <div class="w3l-main-contact">
        <div class="container">
            <div class="col-md-9 agileinfo-contact-main-address">
                <h4 class="w3ls-inner-title">Storage Details</h4>
</head>
<style>
table {
    border-collapse: collapse;
    width: 70%;
}

th, td {
    text-align: left;
    padding: 8px;
}

tr:nth-child(even){background-color: #f2f2f2}
</style>

<%@ page import="java.sql.*,databaseconnection.*"%>
<br>

	       
           
<%@ page  import="java.sql.*" import="databaseconnection.*,java.util.*" import="javax.swing.JOptionPane"%>



<%! String name,username,pasword,gen,doj,branch,dept,subdept,eid,cno,adrs;
	int i=0,exp=0;
%>  
<%if(request.getParameter("msg")!=null){
	  out.println("<script>alert('Sorry, this file can not  Access by You')</script>");
}
if(request.getParameter("msg1")!=null){
	  out.println("<script>alert('Invalid SecretKey ( SK )')</script>");
}
%>
<%
try{
Connection con = databasecon.getconnection();

Statement st=con.createStatement();
%>
<div class="container">
  <div class="table-responsive"> 
<center><table class="table"><tr><th>Fid.</th><th>FileName</th><th>Patient</th><th>Reports</th></tr>
<%
ResultSet r=st.executeQuery("select *from cloud");
while(r.next()){%>
<tr><td><strong><%=r.getInt(1)%></strong></td><td><strong><%=r.getString("docnm")%></td><td><strong><%=r.getString("puid")%></td><td> <a href="csview.jsp?qid=<%=r.getString("qid")%>&puid=<%=r.getString("puid")%>"><span class="badge badge-primary">View</span></a>
<%}}catch(Exception e){e.printStackTrace();}%>
</table></div></div>
		        <div class="clearfix">	</div>
	        </div>		
         </div>
        </div>
	

<br><br><br><br><br><br><br>
<%@ include file="footer.jsp"%>