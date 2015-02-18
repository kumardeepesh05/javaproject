/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com;

import java.util.Properties;
import javax.mail.Message;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

/**
 *
 * @author DEEPESH
 */
public class javamail {

    public static String mail(String mail, String pass, String uname, String name) {
        try {

            String to = mail;//change accordingly  

            //Get the session object  
            Properties props = new Properties();
            props.put("mail.smtp.host", "smtp.gmail.com");
            props.put("mail.smtp.socketFactory.port", "465");
            props.put("mail.smtp.socketFactory.class", "javax.net.ssl.SSLSocketFactory");
            props.put("mail.smtp.auth", "true");
            props.put("mail.smtp.port", "465");

            Session session;
            session = Session.getDefaultInstance(props, new javax.mail.Authenticator() {
                @Override
                protected PasswordAuthentication getPasswordAuthentication() {
                    return new PasswordAuthentication("kumardeepesh05@gmail.com", "05.kumar.deepesh.1234");//change accordingly  
                }
            });

            //compose message  
            try {
                MimeMessage message = new MimeMessage(session);
                message.setFrom(new InternetAddress("kumardeepesh05@gmail.com"));//change accordingly  
                message.addRecipient(Message.RecipientType.TO, new InternetAddress(to));
                message.setSubject("password");
                String msg = "Hello " + name + "\n\nyour username and password is given below\n\n"+"Username=" + uname + "\nPassword=" + pass +"\n\nwith Regards\nDeepesh Kumar";
                message.setText(msg);
                //send message  
                Transport.send(message);

                return "message sent successfully";

            } catch (Exception e) {
                return e.toString();
            }
        } catch (Exception e) {
            return e.toString();
        }
    }
}
