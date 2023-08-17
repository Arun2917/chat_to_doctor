<%-- 
    Document   : alertalarm
    Created on : 11 Feb, 2023, 4:26:36 PM
    Author     : User
--%>

<%@page import="java.sql.SQLException"%>
<%@page import="java.time.LocalDate"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>

<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.awt.TrayIcon"%>
<%@page import="javax.swing.JOptionPane"%>
<%@page import="java.awt.Toolkit"%>
<%@page import="java.awt.Image"%>
<%@page import="java.awt.SystemTray"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<%@page import="java.util.Scanner"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
       <%
       
       try{
		        
		    
		  
                     String tabletname= request.getParameter("tname");
                      String type= request.getParameter("chtablet");
                        String date= request.getParameter("date");
                       String s= request.getParameter("time");
                       Class.forName("com.mysql.jdbc.Driver");
                      if(tabletname!=null && type!=null && date!=null & s!=null){
                      Connection con = DriverManager.getConnection("jdbc:mysql://localhost/medicinealert?characterEncoding=utf8","root","admin");
                      String query=("insert into timealert(taname,type,date,time)values(?,?,?,?)");
                   PreparedStatement ps = con.prepareStatement(query);
                //  ps.setString(1, id);
		  ps.setString(1, tabletname);
                  ps.setString(2, type);
                   ps.setString(3,date);
                   ps.setString(4,s);
                  // ps.setString(6, Gender);
                      ps.executeUpdate();
                      
                      JOptionPane.showMessageDialog(null, tabletname);
                     JOptionPane.showMessageDialog(null, type);
                      JOptionPane.showMessageDialog(null, date);
		    
		    while(1==1){	//An always true condition.
                        Class.forName("com.mysql.jdbc.Driver");
                     
                      Connection con1 = DriverManager.getConnection("jdbc:mysql://localhost/medicinealert?characterEncoding=utf8","root","admin");
                      String query1=("select * from timealert");
                   PreparedStatement ps1 = con.prepareStatement(query1);
                   ResultSet rs=ps1.executeQuery();
                        if(rs.next()){
                            
			    String currentTime = new SimpleDateFormat("HH:mm").format(new Date());	//Fetching the current system time.
			    boolean x = currentTime.equals(rs.getString("time"));
                     
			     //boolean y = currentDa.equals(rs.getString("date"));
                          
                             
                            if(x==true){
                                SystemTray tray = SystemTray.getSystemTray();
                                Image image = Toolkit.getDefaultToolkit().createImage("img/icon.png");
         
         TrayIcon trayIcon = new TrayIcon(image, "Tray Demo");
        //Let the system resize the image if needed
        trayIcon.setImageAutoSize(true);
        //Set tooltip text for the tray icon
        trayIcon.setToolTip("System tray icon demo");
        tray.add(trayIcon);

        trayIcon.displayMessage("Need to take medicine", "notification demo", TrayIcon.MessageType.INFO);
         
        response.sendRedirect("add_remainder.jsp");
				    break;	//Using break to jump out of the loop as soon as the alarm rings.
			    }
			    else
				    continue;  //To keep the program running until the desired time is reached.
                      }	
    		    
                    }
                    
                    }
                    else{
                        JOptionPane.showMessageDialog(null, "pls fill the all column");
                        response.sendRedirect("add_remainder.jsp");
                    }
        }
        catch(SQLException e){
           JOptionPane.showMessageDialog(null,e);
           }
       
       
       
       %>
    </body>
</html>
