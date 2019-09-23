/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package notifications;

/**
 *
 * @author sidibe
 */
public class Message {
    private String to;
    //Let fcm handle for me
    private Notification notification;
    //In case I wanna send custome data that I handle in setBackground and onReceive
    private DataPayload data;

    public DataPayload getData() {
        return data;
    }

    public void setData(DataPayload data) {
        this.data = data;
    }

    public Notification getNotification() {
        return notification;
    }

    public void setNotification(Notification notification) {
        this.notification = notification;
    }

   

    public String getTo() {
        return to;
    }

    public void setTo(String to) {
        this.to = to;
    }

    
    
}
