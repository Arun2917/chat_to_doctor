
<%-- 
    Document   : admin
    Created on : Jan 21, 2023, 6:07:42 PM
    Author     : Java
--%>

<%@page import="javax.swing.JOptionPane"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
       <%
       String name = request.getParameter("name");
       String password= request.getParameter("password");
       try{
       if(name.equalsIgnoreCase("admin")&password.equals("admin123")){
           
                    out.println("<script type='text/javascript'>");
                    out.println("alert('Login Successfully')");
                    out.println("window.location='adminhome.jsp'");
                    out.println("</script>");
       }else{
            out.println("<script type='text/javascript'>");
                    out.println("alert('Try again something wrong')");
                    out.println("window.location='admin.jsp'");
                    out.println("</script>");
       }}catch(Exception ex){
           JOptionPane.showMessageDialog(null, ex);
       }
       %>
            
    </body>
</html>
