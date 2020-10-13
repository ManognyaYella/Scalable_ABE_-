<%@include file="ptheader.jsp"%>
<%@ page  import="java.sql.*" import="databaseconnection.*" %>
<%! String pk;
byte[] ct;
%>
<%
String qid=request.getParameter("qid");
String pid = request.getParameter("pid");

	Connection con1 = databasecon.getconnection();
	Statement st1 = con1.createStatement();
	
Statement st=con1.createStatement();
ResultSet r11=st.executeQuery("select resdata from docresponse where qid="+qid+" ");
if(r11.next())
	{
ct=r11.getBytes(1);

	}

	%>

<section class="logins py-5">
		<div class="container py-xl-5 py-lg-3">
			<div class="title-section mb-md-5 mb-4">
				
				<h3 class="w3ls-title text-uppercase text-dark font-weight-bold">View Reports</h3>
			</div>
			<div class="login px-sm-4 mx-auto mw-100 login-wrapper">
					     <form  action="resview2.jsp"  class="login-wrapper"  method="post" >
							
							<div class="right_form">
								<div>
								<span><label>Request Id</label></span>
						    	<span><input type="text" name="qid" class="form-control"   required="" value=<%=qid%> readonly></span>
								<input type="hidden" name="pid" value=<%=pid%>>
						    	</div>



							<div class="right_form">
								<div>
								<span><label>Report</label></span>
						    	<span><textarea name="ct" class="form-control"type="text"  class="textbox" required="" readonly><%=ct%></textarea></span>
						    	</div>
							

							<div>
						     	<span><button type="submit" name="download" class="btn submit mt-4">Get Secretkey</button></span>
						    </div>

							
							
							 
					    </div>
					    <div class="clearfix"></div>
						</form>
				</div>
		</div>
	</section>
		


	<!-- footer --><br><br><br>
	
<%@include file="footer.jsp"%>