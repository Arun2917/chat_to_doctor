<%-- 
    Document   : logincheck
    Created on : Jan 20, 2023, 4:51:39 PM
    Author     : Java
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="javax.swing.JOptionPane"%>
<%@page import="com.Database"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.util.Random"%>
<%@page import="java.sql.ResultSet"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
   
         <%
           String id=request.getParameter("uid");
       
     String name=request.getParameter("name");
         
            String pass=request.getParameter("password");
            
            try{                               
                 PreparedStatement ps = Database.con().prepareStatement("select * from user where name='"+name+"' and password='"+pass+"'");
                    ResultSet rs = ps.executeQuery();
              
                  
                    //JOptionPane.showMessageDialog(null,check); 
                if(rs.next()){   
                     out.println("<script type='text/javascript'>");
                    out.println("alert('Login success')");
                    out.println("window.location='userhome.jsp'");
                    out.println("</script>");
                    session.setAttribute("un", name);
                     session.setAttribute("userid", id);
                }else{
                    out.println("<script type='text/javascript'>");
                    out.println("alert('Login Failed')");
                    out.println("window.location='user.jsp'");
                    out.println("</script>");
                }

            }catch(Exception ex){
                  JOptionPane.showMessageDialog(null,ex);
            
            }
        
        %>
    </body>
</html>
