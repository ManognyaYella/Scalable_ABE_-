<%@ page import="java.sql.*,databaseconnection.*"%>
<%	
		try{
	
	String nm = request.getParameter("nm");
	String unm = request.getParameter("unm");
	String cn= request.getParameter("cn");
	String em = request.getParameter("em");	
   String pwd = request.getParameter("pwd");
   String grpnm = request.getParameter("grpnm");
     String job= request.getParameter("job");
   String pltfm = request.getParameter("pltfm");
   String exp= request.getParameter("exp");
 
   

      
		
		HttpSession ses=request.getSession();
					
				Connection con=databasecon.getconnection();
				Statement st=con.createStatement();
						Statement st1=con.createStatement();

						ResultSet rst=st.executeQuery("select *from users  where uid='"+unm+"'  ");
				if(!rst.next()){

				PreparedStatement p=con.prepareStatement("insert into users values(?,?,?,?,?,?,?,?,?,?,?)");
				    p.setString(1,nm);
				    p.setString(2,unm);
					p.setString(3,pwd);
					p.setString(4,em);
					p.setString(5,cn);
					p.setString(6,grpnm);
					p.setString(7,job);
					p.setString(8,pltfm);
				    p.setString(9,exp);
				    p.setString(10,"non");
					p.setString(11,"non");
			
				int i=p.executeUpdate();
				if(i>0){
					
			response.sendRedirect("userreg.jsp?msg=succes");		
				}
				}else{
				response.sendRedirect("userreg.jsp?msg2=available");	
				}
		}catch(Exception e){
			e.printStackTrace();
		}
			
			
%>