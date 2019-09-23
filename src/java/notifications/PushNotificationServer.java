/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package notifications;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.OutputStreamWriter;
import java.io.PrintWriter;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


/**
 *
 * @author sidibe
 */
@WebServlet(name = "PushNotificationServer", urlPatterns = {"/PushNotificationServer"})
public class PushNotificationServer extends HttpServlet {

    	// Method to send Notifications from server to client end.
	public final static String SERVER_KEY_FCM = "AIzaSyAbhUcZRZw-7sAk216trjVHdnlRCHRDS_E";
	public final static String API_URL_FCM = "https://fcm.googleapis.com/fcm/send";
	public final static String DEVICE_TOKEN="eFvbnJaG6X4:APA91bGQShgCR9gOnJH2uiqRZAjxSWRTzqrVYyxQw_6rd97QwuMdG4vNe4rvg--OJsf19MmEbRyRxl49nYF0MyIeUzJQsvf7Qo41FuQqCiKzzLuwjz5U5zI0a6PCe-TUztqni8_7oAF3";
        
    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException, Exception {
        //response.setContentType("text/html;charset=UTF-8");
        
        pushFCMNotification(DEVICE_TOKEN);

        
    }
    
    public static void pushFCMNotification(String DeviceIdKey) throws Exception {

		URL url = new URL(API_URL_FCM);
		HttpURLConnection conn = (HttpURLConnection) url.openConnection();

		conn.setUseCaches(false);
		conn.setDoInput(true);
		conn.setDoOutput(true);
		conn.setRequestMethod("POST");
		conn.setRequestProperty("Authorization", "key=" + SERVER_KEY_FCM);

		conn.setRequestProperty("Content-Type", "application/json");
		
                Gson gson = new GsonBuilder().setPrettyPrinting().create();
                
                //Notification info
                Notification notification = new Notification();
                notification.setTitle("Chapdeals big discount season");
                notification.setBody("Visit to avail big discounts");
                notification.setIcon("./img/2.png");
                notification.setClick_action("https://firebase.google.com/docs/cloud-messaging/js/first-message");
                //notification.setM("bonjour");
                
                /*
                DataPayload dataPayload = new DataPayload();
                dataPayload.setTitle("Chapdeals Data payload");
                dataPayload.setBody("Visit to avail big discounts");
                dataPayload.setIcon("./img/2.png");
                dataPayload.setClick_action("https://www.france24.com/fr/");*/
                
       
                //Top level noti
                Message message = new Message();
                message.setTo(DeviceIdKey.trim());
                message.setNotification(notification);
                
               //message.setData(dataPayload);
                
                
                
                
                System.out.println(gson.toJson(message));
		//System.out.println(data.toJSONString());
		OutputStreamWriter wr = new OutputStreamWriter(conn.getOutputStream());
		wr.write(gson.toJson(message));
		wr.flush();
		wr.close();
		int responseCode = conn.getResponseCode();
		System.out.println("Response Code : " + responseCode);

		BufferedReader in = new BufferedReader(new InputStreamReader(conn.getInputStream()));
		String inputLine;
		StringBuffer response = new StringBuffer();

		while ((inputLine = in.readLine()) != null) {
			response.append(inputLine);
		}
		in.close();

	}


    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
            try {
                processRequest(request, response);
            } catch (Exception ex) {
                Logger.getLogger(PushNotificationServer.class.getName()).log(Level.SEVERE, null, ex);
            }
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
            try {
                processRequest(request, response);
            } catch (Exception ex) {
                Logger.getLogger(PushNotificationServer.class.getName()).log(Level.SEVERE, null, ex);
            }
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
