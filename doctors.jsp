<%@ page  import="java.sql.*" import="databaseconnection.*"%>
<%@ include file="aaheader.jsp"%>
	                  <%

				String message=request.getParameter("msg");
                                                       if(message!=null)
                                                       {
                                                              out.println("<script>alert('Secret key SK  Generated Successfully')</script>");
                                                       }


String message1=request.getParameter("msg1");
                                                       if(message1!=null)
                                                       {
                                                              out.println("<script>alert('Attribute key AK  Generated Successfully')</script>");
                                                       }


                                               %>

<center><br><br>
<div class="page-header">
				<h3 class="bars">New Doctors</h3>
			</div>
<div class="bs-docs-example">
				<table class="table">
					<thead>
						<tr>
							<th>Name</th>
							<th>Email</th>
							<th>Profession</th>
							<th>Hospital</th>
							<th>KeyGen</th>
						
				
						</tr>
					</thead>
					
			
<tbody>																																																					<%
	
		try{

			
		
		Connection con=databasecon.getconnection();
				Statement st=con.createStatement();
	ResultSet rs=st.executeQuery("select * from physician where sk='non' or sts='non' ");
		
		while(rs.next())
		{
		%>
		<tr><td><%=rs.getString("name")%><td><%=rs.getString("email")%><td><%=rs.getString("prof")%>
		<td><%=rs.getString("hosp")%><td><a href="daccept1.jsp?uid=<%=rs.getString("uid")%>"><h3>GenSK</a>
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