<%-- 
    Document   : doclogincheck
    Created on : Jan 27, 2023, 12:09:16 PM
    Author     : Java
--%>

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
        String password = request.getParameter("password");
        if(name.equalsIgnoreCase("doctor")&password.equals("doctor")){
            
                    out.println("<script type='text/javascript'>");
                    out.println("alert('Login success')");
                    out.println("window.location='doctorhome.jsp'");
                    out.println("</script>");
        }else{
              out.println("<script type='text/javascript'>");
                    out.println("alert('Login Failed')");
                    out.println("window.location='doctorlogin.html'");
                    out.println("</script>");
        }
        %>
    </body>
</html>
