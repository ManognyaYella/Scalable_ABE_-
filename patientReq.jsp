<%@ page  import="java.sql.*" import="databaseconnection.*"%>
<%@ include file="dheader.jsp"%>
<%
if(request.getParameter("msg")!=null){

out.println("<script>alert('You can not access this one')</script>");
}

if(request.getParameter("msg1")!=null){

out.println("<script>alert('Responsed Successfully..!')</script>");
}

if(request.getParameter("msg2")!=null){

out.println("<script>alert('Re-encrypted Ciphertext shared to Specialist')</script>");
}

if(request.getParameter("msg3")!=null){

out.println("<script>alert('Incorrect SecretKey')</script>");
}

%>

<center><br>
<div class="page-header">
				<h3 class="bars">Patient Requests</h3>
			</div><br>
<div class="bs-docs-example">
				<table class="table">
					<thead>
						<tr>
							<th>RequestId</th>
							<th>PatientID</th>
							<th>Access Policy</th>
							<th>PHR Files</th>
						</tr>
					</thead>
					
			
<tbody>
<%
	
		try{

			
		
		Connection con=databasecon.getconnection();
				Statement st=con.createStatement();
	ResultSet rs=st.executeQuery("select * from cloud order by qid desc");
		
		while(rs.next())
		{
		%>
		<tr><td><%=rs.getString("qid")%></td><td><%=rs.getString("puid")%></td><td><%=rs.getString("aces")%></td><td> <a href="viewdata.jsp?qid=<%=rs.getString("qid")%>&puid=<%=rs.getString("puid")%>"><span class="badge badge-primary">View</span></a>
		</td></tr>
		<%
		}
		}catch(Exception e){
		System.out.println(e);
		}

		


%>
</tbody>
</table>
</div>
			
<br><br><br><br>


<%@ include file="footer.jsp"%>