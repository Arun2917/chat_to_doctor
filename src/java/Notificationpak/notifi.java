/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Notificationpak;

import java.awt.*;
import java.awt.TrayIcon.MessageType;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.logging.Level;
import java.util.logging.Logger;
/**
 *
 * @author Java
 */
public class notifi {
    





    public static void main(String[] args) throws AWTException {
        if (SystemTray.isSupported()) {
            try {
                
                Thread.sleep(50);
            } catch (InterruptedException ex) {
                Logger.getLogger(notifi.class.getName()).log(Level.SEVERE, null, ex);
            }
            
       
//             Date thisDate = new Date();
//        SimpleDateFormat dateForm = new SimpleDateFormat("MM/DD/YYYY hh:mm a");
//        System.out.println(dateForm.format(thisDate));
            notifi td = new notifi();
            td.displayTray();
        } else {
            System.err.println("System tray not supported!");
        }
    }

    public void displayTray() throws AWTException {
       
        //Obtain only one instance of the SystemTray object
        SystemTray tray = SystemTray.getSystemTray();

        //If the icon is a file
        Image image = Toolkit.getDefaultToolkit().createImage("img/icon.png");
        //Alternative (if the icon is on the classpath):
        //Image image = Toolkit.getDefaultToolkit().createImage(getClass().getResource("icon.png"));

        TrayIcon trayIcon = new TrayIcon(image, "Tray Demo");
        //Let the system resize the image if needed
        trayIcon.setImageAutoSize(true);
        //Set tooltip text for the tray icon
        trayIcon.setToolTip("System tray icon demo");
        tray.add(trayIcon);

        trayIcon.displayMessage("Need to take medicine", "notification demo", MessageType.INFO);
    }
}