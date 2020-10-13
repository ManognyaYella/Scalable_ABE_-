<%@ page import="java.sql.*,databaseconnection.*"%>
<%	
		try{
		String uid=request.getParameter("uid");
		String pwd=request.getParameter("pwd");
		HttpSession ses=request.getSession();
	            Connection con=databasecon.getconnection();
				Statement st=con.createStatement();
				ResultSet rst=st.executeQuery("select *from physician  where uid='"+uid+"' and pwd='"+pwd+"' ");
				if(rst.next()){
					ses.setAttribute("docid",uid);
				
					response.sendRedirect("Physicianhome.jsp");	
				}
				else{
				response.sendRedirect("physician.jsp?msg=failed");
				
			}
		}catch(Exception e){
			e.printStackTrace();
		}
		
			
			
%>