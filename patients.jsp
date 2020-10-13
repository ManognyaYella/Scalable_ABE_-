<%@ page  import="java.sql.*" import="databaseconnection.*"%>
<%@ include file="aaheader.jsp"%>
	                  <%
                                                       String message=request.getParameter("msg");
                                                       if(message!=null)
                                                       {
                                                              out.println("<script>alert('Secret key SK  Generated Successfully')</script>");
                                                       }
                                               %>

<center><br><br>
<div class="page-header">
				<h3 class="bars">New Patients</h3>
			</div>
<div class="bs-docs-example">
				<table class="table">
					<thead>
						<tr>
							<th>Name</th>
							<th>Email</th>
							<th>Gender</th>
							<th>Age</th>
							<th>KeyGen</th>
							
				
						</tr>
					</thead>
					
			
<tbody>																																																			
<%
	
		try{

			
		
		Connection con=databasecon.getconnection();
				Statement st=con.createStatement();
	ResultSet rs=st.executeQuery("select * from patient where sts='non' ");
		
		while(rs.next())
		{
		%>
		<tr><td><%=rs.getString("name")%><td><%=rs.getString("email")%><td><%=rs.getString("gen")%><td><%=rs.getString("age")%><td><a href="keyjen.jsp?uid=<%=rs.getString("uid")%>"><h3>GenSK</a>
		<%
		}
		}catch(Exception e){
		System.out.println(e);
		}

		


%>
</tbody>
</table>
</div>

<br><br><br><br><br><br><br><br>


<%@ include file="footer.jsp"%>