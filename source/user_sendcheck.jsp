<%-- 
    Document   : user_sendcheck
    Created on : Feb 4, 2023, 4:10:30 PM
    Author     : Java
--%>

<%@page import="java.sql.Statement"%>
<%@page import="java.io.FileOutputStream"%>
<%@page import="java.io.File"%>
<%@page import="java.io.DataInputStream"%>
<%@page import="javax.swing.JOptionPane"%>
<%@page import="com.Database"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="com.oreilly.servlet.MultipartRequest" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%           
     

String rep=request.getParameter("report");
JOptionPane.showMessageDialog(null, rep); 
String contentType = request.getContentType();
if ((contentType != null) && (contentType.indexOf("multipart/form-data") >= 0))
{
DataInputStream in = new DataInputStream(request.getInputStream());
int formDataLength = request.getContentLength();
byte dataBytes[] = new byte[formDataLength];
int byteRead = 0;
int totalBytesRead = 0;
while (totalBytesRead < formDataLength) {
byteRead = in.read(dataBytes, totalBytesRead,formDataLength);
totalBytesRead += byteRead;
}
String file = new String(dataBytes);
String saveFile = file.substring(file.indexOf("filename=\"") + 10);
saveFile = saveFile.substring(0, saveFile.indexOf("\n"));
saveFile = saveFile.substring(saveFile.lastIndexOf("\\") + 1,saveFile.indexOf("\""));
int lastIndex = contentType.lastIndexOf("=");
String boundary = contentType.substring(lastIndex + 1,contentType.length());
int pos;
pos = file.indexOf("filename=\"");
pos = file.indexOf("\n", pos) + 1;
pos = file.indexOf("\n", pos) + 1;
pos = file.indexOf("\n", pos) + 1;
int boundaryLocation = file.indexOf(boundary, pos) - 4;
int startPos = ((file.substring(0, pos)).getBytes()).length;
int endPos = ((file.substring(0, boundaryLocation)).getBytes()).length;
File f = new File("C:/Users/User/Desktop/chat to doctor/CHAT TO DOCTOR AND MEDICINE ALERT/web/file/"+saveFile);
String fn=f.toString();
int size=file.length();
FileOutputStream fileOut = new FileOutputStream(f);
fileOut.write(dataBytes, startPos, (endPos - startPos));
fileOut.flush();
fileOut.close();

        PreparedStatement ps = Database.con().prepareStatement("insert into report (name,des,path)values(?,?,?)");
        ps.setString(1, na);
        ps.setString(2, rep);
         ps.setString(3, fn);
       
ps.executeUpdate();
JOptionPane.showMessageDialog(null, "Uploaded Successfully");

}
else
{
JOptionPane.showMessageDialog(null, "Uploading failed");

}
                
//            MultipartRequest m=new MultipartRequest(request,"C:/Users/User/Desktop/chat to doctor/CHAT TO DOCTOR AND MEDICINE ALERT/web/file/");
//           
//            
//           JOptionPane.showMessageDialog(null, "upload successfull");
//        String file= request.getParameter("file");
//         JOptionPane.showMessageDialog(null, file);
//           String na = "" + session.getAttribute("un");
//        String rep = request.getParameter("report");
//        PreparedStatement ps = Database.con().prepareStatement("insert into report (name,des,path)values(?,?,?)");
//        ps.setString(1, na);
//        ps.setString(2, rep);
//       
//        
//        ps.executeUpdate();
//          out.println("<script type='text/javascript'>");
//                    out.println("alert('send success')");
//                    out.println("window.location='user_send.jsp'");
//                    out.println("</script>");
        %>
    </body>
</html>
