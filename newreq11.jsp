<%@include file="ptheader.jsp"%>
<%@ page  import="java.sql.*" import="databaseconnection.*" %>
<%! String pk;%>
<%
String ap=request.getParameter("ap");
String pid= (String)session.getAttribute("pid");
String doceid= request.getParameter("doceid");
String acesp=ap+"&&"+doceid;

	Connection con1 = databasecon.getconnection();
	Statement st1 = con1.createStatement();
	String sss1 = "select * from setup";
	ResultSet rs=st1.executeQuery(sss1);
	if(rs.next())
		{
			pk=rs.getString(1);
		}
session.setAttribute("pk",pk);
session.setAttribute("acesp",acesp);
	%>

	<section class="logins py-5">
		<div class="container py-xl-5 py-lg-3">
			<div class="title-section mb-md-5 mb-4">
				
				<h3 class="w3ls-title text-uppercase text-dark font-weight-bold">Upload PHR</h3>
			</div>
			<div class="login px-sm-4 mx-auto mw-100 login-wrapper">
					     <form  action="UpdateAnyFiles"  class="login-wrapper" ENCTYPE="multipart/form-data" method="post" >
							
					    <div class="right_form">
								<div>
								<span><label>Public key ( PK )</label></span>
						    	<span><input name="pk" class="form-control"type="text" value="<%=pk%>" class="textbox" required="" readonly></span>
						    	</div>
								<div>
								<span><label>Access Policy ( T )</label></span>
						    	<span><input name="acesp" class="form-control"type="text" value="<%=acesp%>" class="textbox" required="" readonly></span>
						    	</div>
								
							<div>
						    	<span><label>Data( M )</label></span>
							 <span>
						
						<input type="file" name="file" class="form-control" class="textbox" required>
						
						</span>
							</div>
							<div>
						     	<span><button type="submit"class="btn submit mt-4">Encrypt</button></span>
						    </div>
								
							 
					    </div>
					    <div class="clearfix"></div>
						</form>
				</div>
		</div>
	</section>
		

	<!-- footer --><br><br><br>
	
<%@include file="footer.jsp"%>