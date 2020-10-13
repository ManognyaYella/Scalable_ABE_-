<%@include file="ptheader.jsp"%>
<%@ page  import="java.sql.*" import="databaseconnection.*,KGC.*" %>
<%! String pk,sk;
byte[] data;
%>
<%
String qid=request.getParameter("qid");
String sk=request.getParameter("sk");
String pid = request.getParameter("pid");
	Connection con1 = databasecon.getconnection();
	Statement st1 = con1.createStatement();	Statement st2 = con1.createStatement();
	
Statement st=con1.createStatement();
ResultSet r11=st.executeQuery("select "+CPABE_decrypt+"(resdata,'"+sk+"') from docresponse where qid="+qid+" ");
if(r11.next())
	{
data=r11.getBytes(1);
	}
	%>

<section class="logins py-5">
		<div class="container py-xl-5 py-lg-3">
			<div class="title-section mb-md-5 mb-4">
				
				<h3 class="w3ls-title text-uppercase text-dark font-weight-bold">View Reports</h3>
			</div>
			<div class="login px-sm-4 mx-auto mw-100 login-wrapper">
					     <form  action="download1.jsp"  class="login-wrapper"  method="post" >
							
							<div class="right_form">
								<div>
								<span><label>Request Id</label></span>
						    	<span><input type="text" name="qid" class="form-control"   required="" value=<%=qid%> readonly></span>
									<input type="hidden" name="sk" value=<%=sk%>>
									<input type="hidden" name="pid" value=<%=pid%>>
									</div>



							<div class="right_form">
								<div>
								<span><label>Report</label></span>
						    	<span><textarea name="ct" class="form-control"type="text"  class="textbox" required="" readonly><%=data%></textarea></span>
						    	</div>
							
							

							
							<div>
						     	<span><button type="submit" name="download" class="btn submit mt-4">Download</button></span>
						    </div>

							
							
							 
					    </div>
					    <div class="clearfix"></div>
						</form>
				</div>
		</div>
	</section>
		


	
	<!-- footer --><br><br><br>
	
<%@include file="footer.jsp"%>