<%@ page import="java.sql.*,databaseconnection.*"%>
<%	
		try{
	
String nm = request.getParameter("nm");
	String uid = request.getParameter("uid");
	String pwd = request.getParameter("pwd");
	String gen = request.getParameter("gen");
	String age = request.getParameter("age");
	String cn= request.getParameter("cn");
	String em = request.getParameter("em");	
   
      
		
		HttpSession ses=request.getSession();
					
				Connection con=databasecon.getconnection();
				Statement st=con.createStatement();

				ResultSet rst=st.executeQuery("select *from patient  where uid='"+uid+"'  ");
				if(!rst.next()){
				PreparedStatement p=con.prepareStatement("insert into patient values(?,?,?,?,?,?,?,?,?)");
				p.setString(1,nm);
				p.setString(2,uid);
				p.setString(3,pwd);
				p.setString(4,gen);
				p.setString(5,age);
				p.setString(6,em);
				p.setString(7,cn);
				p.setString(8,"non");
				p.setString(9,"non");
				int i=p.executeUpdate();
				if(i>0){
			response.sendRedirect("patientreg.jsp?msg=succes");		
				}
		}else{
				response.sendRedirect("patientreg.jsp?msg2=available");	
				}
}
				catch(Exception e){
			e.printStackTrace();
		}
			
			
%>