<%-- 
    Document   : Notifications
    Created on : Jul 29, 2019, 1:29:01 PM
    Author     : sidibe
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="manifest" href="./manifest.json"/>

        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>

        <!-- The core Firebase JS SDK is always required and must be listed first -->
        <script src="https://www.gstatic.com/firebasejs/6.2.4/firebase.js"></script>

        <!-- TODO: Add SDKs for Firebase products that you want to use
             https://firebase.google.com/docs/web/setup#config-web-app -->

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
            firebase.initializeApp(firebaseConfig);
            const messaging = firebase.messaging();

            navigator.serviceWorker.register('./firebase-messaging-sw.js')
                    .then((registration) => {
                        messaging.useServiceWorker(registration);

                        messaging.requestPermission().then((permission) => {
                            console.log('Notification permission granted cool.');

                            return messaging.getToken();
                            // TODO(developer): Retrieve an Instance ID token for use with FCM.
                            // that returns a promise that I consume using then()

                        })
                                .then(function (currentToken) {
                                    alert(currentToken);
                                    console.log(currentToken);
                                    sendTokenToServer(currentToken);
                                    //console.log("your token is:"+token);

                                })
                                .catch(function (error) {
                                    console.log('An error occurred while retrieving token. ', error);
                                    showToken('Error retrieving Instance ID token. ', error);
                                    setTokenSentToServer(false);

                                });
                    });


            function isTokenSentToServer() {
                return window.localStorage.getItem('sentToServer') === '1';
            }
            function setTokenSentToServer(sent) {
                window.localStorage.setItem('sentToServer', sent ? '1' : '0');
            }
            function sendTokenToServer(currentToken) {
                if (!isTokenSentToServer()) {
                    console.log('Sending token to server...');
                    // TODO(developer): Send the current token to your server.
                    setTokenSentToServer(true);
                } else {
                    console.log('Token already sent to server so won\'t send it again ' +
                            'unless it changes');
                }
            }

            //localStorage.clear();


            messaging.onMessage((payload) => {
                console.log('Message received in foreground. ', payload);
               // console.log('Message received in foreground. ', payload.notification.m);

                var title = payload.notification.title;
                var options = {
                    body: payload.notification.body,
                    icon: payload.notification.icon,
                    click_action: payload.notification.click_action

                };
                var myNotification = new Notification(title, options);


            });

        </script>
    </body>
</html>
