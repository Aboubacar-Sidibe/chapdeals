/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package mail;

import java.util.Properties;
import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

/**
 *
 * @author sidibe ibrahim
 */
public class EmailSender {
  static  MessagingException me;
    public static boolean sendMail(String from,String password,String message,String to[],String title)
    {
        String host = "smtp.gmail.com";
        Properties props = System.getProperties();
        props.put("mail.smtp.starttls.enable", "true");
        props.put("mail.smtp.host", host);
        props.put("mail.smtp.user", from);
        props.put("mail.smtp.password", password);
        props.put("mail.smtp.host", 587);
        props.put("mail.smtp.auth", "true");
        Session session = Session.getDefaultInstance(props, null);
        MimeMessage mimeMessage = new MimeMessage(session);
        try
        {
        mimeMessage.setFrom(new InternetAddress(from));
        InternetAddress[] toAddress = new InternetAddress[to.length];
        for(int i=0;i<to.length;i++)
        {
             toAddress[i] = new InternetAddress(to[i]);
        }
        for(int i=0;i<toAddress.length;i++)
        {
            mimeMessage.addRecipient(Message.RecipientType.TO,toAddress[i]);
        }
        //sdd subject
        mimeMessage.setSubject(title);
        //set message to mimeMessage
        mimeMessage.setText(message,"UTF-8","html");
        Transport transport = session.getTransport("smtp");
        transport.connect(host,from,password);
        transport.sendMessage(mimeMessage,mimeMessage.getAllRecipients());
        transport.close();
        return true;
        }
        catch(MessagingException m)
        {
            me.printStackTrace();
        }
        
        return false;
    }
}
