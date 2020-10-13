<%@ page import="java.sql.*, javax.sql.*, java.util.HashSet, java.util.ArrayList, java.util.Iterator, java.io.*"%>
<%@page import="java.io.*,java.net.*"%>
<%@ page  import="java.sql.*" import="databaseconnection.*" %>
<%@include file="ptheader.jsp"%>
<%!
public static String getMimeType(String fileUrl)
    throws java.io.IOException, MalformedURLException 
  {
    String type = null;
    URL u = new URL(fileUrl);
    URLConnection uc = null;
    uc = u.openConnection();
    type = uc.getContentType();
    return type;
  }

%>
<%				
byte[] data=null;
String sk=request.getParameter("sk");
String qid=(String)session.getAttribute("qid");
String docnm=null;
System.out.println("de="+sk+"qid="+qid);
Connection con1 = databasecon.getconnection();
Statement st=con1.createStatement();
ResultSet r11=st.executeQuery("select "+CPABE_decrypt+"(resdata,'"+sk+"'),docnm from docresponse where qid="+qid+" ");
if(r11.next())
	{
data=r11.getBytes(1);
docnm=r11.getString(2);
System.out.println("doc="+docnm);
	}


	String type=getMimeType("file:"+docnm);

    response.setContentType (type);
    response.setHeader ("Content-Disposition", "attachment;     filename=\""+docnm+"\"");

   
  
        ServletOutputStream outs = response.getOutputStream();

        int bit = 256;
        int i = 0;
            try {
                   
                        outs.write(data);
                    }
                         catch (IOException ioe) {
                        ioe.printStackTrace(System.out);
                    }
                        outs.flush();
                    outs.close();
                   

					//	session.removeAttribute("file");
%>