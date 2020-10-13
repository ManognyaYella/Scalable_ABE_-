<%@ include file="aaheader.jsp"%><%@ page  import="java.sql.*" import="databaseconnection.*,ECC.*"%>
<div >
      <!-- <div class="common_content"> --><br><br><br>
	  <section class="logins py-5">
		<div class="container py-xl-5 py-lg-3">
			<div class="title-section mb-md-5 mb-4">
				<h6 class="w3ls-title-sub"></h6>
				<h3 class="w3ls-title text-uppercase text-dark font-weight-bold">  Key Generation</h3>
			</div>
			<div class="login px-sm-4 mx-auto mw-100 login-wrapper">
	 
<%

Connection con = databasecon.getconnection();
Statement st=con.createStatement();
String atrbt=null,pk=null,msk=null;


ResultSet rss=st.executeQuery(" select *from  physician where uid='"+request.getParameter("uid")+"'");
if(rss.next()){
atrbt=rss.getString("uid")+","+rss.getString("hosp")+","+rss.getString("prof");
}
ResultSet rs=st.executeQuery(" select *from   setup" );
if(rs.next()){
	pk=rs.getString("pk"); 
	msk=rs.getString("msk");
}
%>
   
<form action="keygen2.jsp"  class="login-wrapper">


	<label>Public Key ( PK ) :</label>
	<div class="form-group">
	<td><input type="text" class="form-control" name="pk" value=<%=pk%>><input type="hidden" name="unm" value=<%=request.getParameter("uid")%>></td>
</div>


	<label>Master key ( MSK ) :</label>
	<div class="form-group">
	<td><input type="text"class="form-control" name="msk"  value=<%=msk%>><input type="hidden" name="unm" value=<%=request.getParameter("uid")%>></td>
</div>

	<label>Attributes ( S ) :</label>
	<div class="form-group">
	<td><textarea name="atrbt" class="form-control" cols=25 rows=2><%=atrbt%></textarea></td>
</div>
	<button type="submit" class="btn submit mt-4">GetPrivateKey</button>


</form>


	</div>
		</div>
	</section>
   </center>  
        </div>
     <br><br><br><br><br><br><br><br>
<%@ include file="footer.jsp"%>