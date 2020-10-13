<%@include file="dheader.jsp"%>
<%@ page  import="java.sql.*" import="databaseconnection.*,KGC.*" %>
<%! String pk,sk;
byte[] data;
%>
<%
String qid=request.getParameter("qid");
String docid= (String)session.getAttribute("docid");
String pid = request.getParameter("pid");
String sk = request.getParameter("sk");
String docnm = request.getParameter("docnm");
String dn = request.getParameter("download");
session.setAttribute("qid",qid);
session.setAttribute("sk",sk);

session.setAttribute("docnm",docnm);
 
if(dn!=null){
response.sendRedirect("download.jsp");

}else{

	Connection con1 = databasecon.getconnection();
	Statement st1 = con1.createStatement();	Statement st2 = con1.createStatement();
	String sss1 = "select * from setup";
	ResultSet rs=st1.executeQuery(sss1);
	if(rs.next())
		{
			pk=rs.getString(1);
		}

session.setAttribute("pk",pk);	
session.setAttribute("qid",qid);
session.setAttribute("pid",pid);
	%>

<section class="logins py-5">
		<div class="container py-xl-5 py-lg-3">
			<div class="title-section mb-md-5 mb-4">
				
				<h3 class="w3ls-title text-uppercase text-dark font-weight-bold">Responses</h3>
			</div>
			<div class="login px-sm-4 mx-auto mw-100 login-wrapper">
					     <form  action="UpdateAnyFiles1" ENCTYPE="multipart/form-data"    class="login-wrapper"  method="post" >
							
							<div class="right_form">
								<div>
								<span><label>Request Id</label></span>
						    	<span><input type="text" name="docnm" class="form-control"   required="" value=<%=qid%> readonly></span>
								</div>



							<div class="right_form">
								<div>
								<span><label>Public key</label></span>
						    	<span><input type="text" name="pk" class="form-control"   required="" value=<%=pk%> readonly></span>
						    	</div>

							<div class="right_form">
								<div>
								<span><label>Patient Identity </label></span>
						    	<span><input type="text" name="pid" class="form-control"   required="" value=<%=pid%> readonly></span>
						    	</div>
							
														<div class="right_form">
								<div>
								<span><label>Precations </label></span>
						    	<span><input type="file" name="file"  class="form-control"   required="" ></span>
						    	</div>
	

							
							<div>
						     	<span><button type="submit"class="btn submit mt-4"  name="response" >Encrypt & Share</button></span>
						    </div>
								
							 
					    </div>
					    <div class="clearfix"></div>
						</form>
				</div>
		</div>
	</section>
		
		<%}%>
	<!-- footer --><br><br><br>
	
<%@include file="footer.jsp"%>