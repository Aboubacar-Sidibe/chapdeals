<%-- 
    Document   : Messaging
    Created on : Jul 28, 2019, 8:12:19 PM
    Author     : sidibe
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"> 
        <link rel="manifest" href="manisfest/manifest.json"/>
        <script src="messaging/firebase-messaging-sw.js"/>
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>

        <script  src="https://www.gstatic.com/firebasejs/6.3.3/firebase-app.js"></script>
        <script  src="https://www.gstatic.com/firebasejs/6.3.3/firebase-database.js"></script>
        <script  src="https://www.gstatic.com/firebasejs/6.3.3/firebase-messaging.js"></script>
        <script>

            var firebaseConfig = {
                apiKey: "AIzaSyBaVHudheBwEnBN5L6Fyt9vzRb525uhD6w",
                authDomain: "chapdeal-1295d.firebaseapp.com",
                databaseURL: "https://chapdeal-1295d.firebaseio.com",
                projectId: "chapdeal-1295d",
                storageBucket: "",
                messagingSenderId: "849110353062",
                appId: "1:849110353062:web:88a3f28f878b67ab"
            };
            // Initialize Firebase
            if (!firebase.apps.length) {
                firebase.initializeApp(firebaseConfig);
            }

            // Retrieve Firebase Messaging object.
            const messaging = firebase.messaging();

            Notification.requestPermission().then((permission) => {
                if (permission === 'granted') {
                    console.log('Notification permission granted.');
                    getRegisteredToken();
                    // TODO(developer): Retrieve an Instance ID token for use with FCM.
                    // ...
                } else {
                    console.log('Unable to get permission to notify.');
                }
            });


            function getRegisteredToken()
            {
                // Get Instance ID token. Initially this makes a network call, once retrieved
               // subsequent calls to getToken will return from cache.
                messaging.getToken().then((currentToken) => {
                    if (currentToken) {
                        console.log("this is the registered token:"+currentToken);
                        sendTokenToServer(currentToken);
                     //   updateUIForPushEnabled(currentToken);
                    } else {
                        // Show permission request.
                        console.log('No Instance ID token available. Request permission to generate one.');
                        // Show permission UI.
                        //updateUIForPushPermissionRequired();
                        setTokenSentToServer(false);
                    }
                }).catch((err) => {
                    console.log('An error occurred while retrieving token. ', err);
                    //showToken('Error retrieving Instance ID token. ', err);
                    setTokenSentToServer(false);
                });
            }



        </script>
    </body>
</html>
