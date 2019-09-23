<%-- 
    Document   : uploadFile
    Created on : Aug 8, 2019, 11:48:22 AM
    Author     : sidibe
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">


        <style>
            #fileButton, #passToUpload {
                opacity: 1;
                position: absolute;
                z-index: -1;
            }
        </style>
    </head>
    <body>
        <input   type="file"   id="fileButton">
        <label class="w3-btn w3-teal" for="fileButton"><i class="fa fa-upload"></i></label><br>


        <progress value="0" max="100" id="uploader">0%</progress><br>



        <div class="outgoing-chats w3-animate-bottom"> 
            <div class="outgoing-chats-msg"> 
                <div class="outgoing-msg-inbox"> 
                    <p><img src="../images/m1.jpeg" height="150" width="150"></p>
                    <span class="time"> 11:50 |  7 august<span class="w3-right" id="deliveryStatus"> sent</span></span> 
                </div> 
            </div>
            <div class="outgoing-chats-img">
                <img  src="../images/m1.jpeg" class="w3-circle" height="25" width="25" /> 
            </div> 
        </div>

        <script  src="https://www.gstatic.com/firebasejs/6.3.3/firebase-app.js"></script>
        <script  src="https://www.gstatic.com/firebasejs/6.3.3/firebase-database.js"></script>
        <script  src="https://www.gstatic.com/firebasejs/6.3.3/firebase-messaging.js"></script>

        <script src="https://www.gstatic.com/firebasejs/6.3.4/firebase-storage.js"></script>
        <script>

            // Your web app's Firebase configuration
            const firebaseConfig = {
                apiKey: "AIzaSyBaVHudheBwEnBN5L6Fyt9vzRb525uhD6w",
                authDomain: "chapdeal-1295d.firebaseapp.com",
                databaseURL: "https://chapdeal-1295d.firebaseio.com",
                projectId: "chapdeal-1295d",
                storageBucket: "chapdeal-1295d.appspot.com",
                messagingSenderId: "849110353062",
                appId: "1:849110353062:web:88a3f28f878b67ab"
            };
            // Initialize Firebase
            firebase.initializeApp(firebaseConfig);
            var uploader = document.getElementById("uploader");
            var fileButton = document.getElementById("fileButton");

            fileButton.addEventListener('change', function (e) {
                //get the file
                var file = e.target.files[0];
                // create a storage ref 
                var storageRef = firebase.storage().ref('photos/' + file.name);
                //upload file
                var uploadTask = storageRef.put(file);

                uploadTask.on('state_changed', function progress(snapshot) {
                    var percentage = (snapshot.bytesTransferred / snapshot.totalBytes) * 100;
                    uploader.value = percentage;


                }, function error() {

                }, function complete() {
                    uploadTask.snapshot.ref.getDownloadURL().then(function (downloadURL) {
                        console.log('File available at: ', downloadURL);
                    });

                });




            });

        </script>
    </body>
</html>
