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
public class MessageWrapper {
    private Message message;
    public void setMessage(Message message)
    {
        this.message=message;
    }
    public Message getMessage()
    {
        return message;
    }
    
}
