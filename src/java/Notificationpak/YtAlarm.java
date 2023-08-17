package Notificationpak;

import java.awt.Image;
import java.awt.SystemTray;
import java.awt.Toolkit;
import java.awt.TrayIcon;
import java.util.*; 
import java.time.format.DateTimeFormatter;  
import java.time.LocalDateTime;
import java.text.*;
import java.lang.*;
import javax.swing.JOptionPane;
public class YtAlarm{  
	public static void main(String[] args){  
		try{
		        
		    Scanner sc= new Scanner(System.in);
		    System.out.println("Enter the time that you want to get up in HH:mm format");
		    String s= sc.next();
		    System.out.println("Your alarm is now set for "+s+" !!");  
		    while(1==1){	//An always true condition.
			    String currentTime = new SimpleDateFormat("HH:mm").format(new Date());	//Fetching the current system time.
			    boolean x = currentTime.equals(s);	//Equating the correct time to the time entered by the user.
			    if(x==true){
                                SystemTray tray = SystemTray.getSystemTray();
                                Image image = Toolkit.getDefaultToolkit().createImage("img/icon.png");
            JOptionPane.showMessageDialog(null,currentTime+" alarm");
         TrayIcon trayIcon = new TrayIcon(image, "Tray Demo");
        //Let the system resize the image if needed
        trayIcon.setImageAutoSize(true);
        //Set tooltip text for the tray icon
        trayIcon.setToolTip("System tray icon demo");
        tray.add(trayIcon);

        trayIcon.displayMessage("Need to take medicine", "notification demo", TrayIcon.MessageType.INFO);
                                                            
				    break;	//Using break to jump out of the loop as soon as the alarm rings.
			    }
			    else
				    continue;  //To keep the program running until the desired time is reached.
				
    		    }	
        }
        catch(Exception e){
            System.out.println("Ohh.. believe me, something's wrong");
           }
    }
}