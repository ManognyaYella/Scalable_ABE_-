<%@ page  import="java.sql.*" import="databaseconnection.*"%>
<%@ include file="ptheader.jsp"%>

<center><br>
<div class="page-header"><br>
				<h3 class="bars">View Reports</h3><br><br>
			</div>
<div class="bs-docs-example">
				<table class="table">
					<thead>
						<tr>
							<th>RequestId</th>
							<th>Doctor ID</th>
							<th>Response</th>
						</tr>
					</thead>
					
			
<tbody>
<%
	
		try{

			
		
		Connection con=databasecon.getconnection();
				Statement st=con.createStatement();
				String pid=(String)session.getAttribute("pid");
	ResultSet rs=st.executeQuery("select *from docresponse where puid='"+pid+"' order by qid desc");
		
		while(rs.next())
		{
		%>
		<tr><td><%=rs.getString("qid")%></td><td><%=rs.getString("docid")%></td><td> <a href="resview.jsp?qid=<%=rs.getString("qid")%>&pid=<%=rs.getString("puid")%>"><span class="badge"><font size="+1">View</font></span></a>
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