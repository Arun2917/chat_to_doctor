<%-- 
    Document   : registercheck
    Created on : Jan 20, 2023, 4:08:49 PM
    Author     : Java
--%>
<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="javax.swing.JOptionPane"%>
<%@page import="com.Database"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.util.Random"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
       
      <%
          // String id = request.getParameter("uid");
   String name = request.getParameter("name");
   String Address = request.getParameter("address");
   String email = request.getParameter("email");
   String Phonenumber = request.getParameter("number");
//   String Gender = request.getParameter("gender");
   String pass = request.getParameter("password");
           
                PreparedStatement pst = Database.con().prepareStatement("select * from user where email='"+email+"' ");
                ResultSet rs = pst.executeQuery();
                if(rs.next()){
                   
                    out.println("<script type='text/javascript'>");
                    out.println("alert('you already have an account')");
                    out.println("window.location='user.jsp'");
                    out.println("</script>");
                                                         
                }else{
                 try{
                     String query=("insert into user(name,address,email,number,password)values(?,?,?,?,?)");
                   PreparedStatement ps = Database.con().prepareStatement(query);
                //  ps.setString(1, id);
		  ps.setString(1, name);
                  ps.setString(2, Address);
                   ps.setString(3, email);
                   ps.setString(4, Phonenumber);
                  // ps.setString(6, Gender);
                    ps.setString(5, pass);
                      ps.executeUpdate();
                                      //session.setAttribute("patientname", name);
                       out.println("<script type='text/javascript'>");
                    out.println("alert('Register Successfully')");
                    out.println("window.location='user.jsp'");
                    out.println("</script>");
               
            }catch(Exception ex){
                     JOptionPane.showMessageDialog(null,ex);
            }
            }
        
        %>
    </body>
</html>
