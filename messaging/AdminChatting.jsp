<%-- 
    Document   : chatting
    Created on : Aug 7, 2019, 10:31:57 AM
    Author     : sidibe
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">

        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

        <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">

        <link rel="stylesheet"  href="../css/main_theme.css"/>

        <style>

            .msg-header
            {
                border:1px solid #ccc;
                height: 10%;
                display: inline-block;
                background: #e91e63 !important;
            }
            .msg-header-img{
                margin-left: 5%;
                margin-top: 12px;
                margin-bottom: 2px;
                float: left;
            }

            .active
            {
                width: 180px;
                float: left;
                margin-top: -2px;
            }
            .active h4
            {
                font-size: 15px;
                margin-left: 8px;
                color:#fff;

            }

            .active h6
            {
                font-size: 10px;
                margin-left: 10px;
                line-height: 0.5px;
                color:white;
            }
            .header-icons
            {
                width: 120px;
                float: right;
                margin-top: 12px;
                margin-right: 10px;

            }

            .header-icons .fa
            {
                color:white;
                cursor: pointer;
                margin: 10px;
            }
            .msg-bottom
            {
                background: #fff;
                color:#000;
                height: content-box;
                padding: 10px;
                border: 1px solid black;
                position: fixed;
                bottom: 0;
            }

            .msg-bottom i{
                margin: 5px;

            }

            .sendMessageControl
            {
                display: inline-block;
                left: 40%;
                transform: translate(40%);
                border:1px solid black;
                padding: 5px;



            }
            .sendMessageControl input{
                background: transparent;
                outline: none;
                border: none;
            }

            .sendMessageControl input:focus
            {
                outline: none;
            }

            #chatbox
            {
                height: 655.5px;
                overflow-y: scroll;
            }
            .received-chats-img
            {
                display: inline-block;

                float:left;
            }
            .received-msg
            {
                display: inline-block;
                padding: 0 0 0 10px;
                vertical-align: top;
                width: 92%;
            }
            .received-msg-inbox
            {
                width: 52%;
            }
            .received-msg-inbox p
            {
                background: #efefef none repeat 0 0;
                border-radius: 10px;
                color:#646464;
                font-size: 14px;
                margin: 0;
                padding: 5px 10px 5px 12px;
                width: 100%;
            }
            .time,.timeImg
            {
                color:#777;
                display: block;
                font-size: 12px;
            }
            .timeImg
            {
                margin-left: 60px;
            }

            .outgoing-chats
            {
                overflow: hidden;
            }

            .outgoing-chats-msg p
            {
                background: pink none repeat 0 0;
                border-radius: 10px;
                color:#646464;
                font-size: 14px;
                margin: 0;
                padding: 5px 10px 5px 12px;
                width: 100%;
            }
            .outgoing-chats-msg
            {
                float: left;
                width: 46%;
                margin-left: 45%;
            }
            .outgoing-chats-img
            {
                display: inline-block;
                float: right;
            }

            .chat-container
            {
                position: relative;
                left: 30%;

            }

            #fileButton, #passToUpload {
                visibility: hidden;
                position: absolute;
                z-index: -1;
            }






        </style>

        <title>Messaging</title>
    </head>
    <body>
        <section class="chat-container w3-card-4">
            <div class="w3-top">
                <div class="w3-blue w3-col s12 m7 l5">

                    <div class="msg-header-img">
                        <img  src="../images/me.jpeg" class="w3-circle" height="40" width="40"/>
                    </div>

                    <div class="active">
                        <h4>Admin</h4>
                        <h6>2 hours ago</h6>
                    </div>

                    <div class="header-icons">
                        <i class="fa fa-phone"></i>
                        <i class="fa fa-address-book"></i>
                        <i class="fa fa-home"></i>
                    </div>
                </div>
            </div>

            <div id="chatbox" class="w3-container w3-col s12 m7 l5 w3-border  w3-padding-16" >
                <br><br>

            </div>  


            <div class="msg-bottom  w3-col s12 m7 l5">
                <i class="fa fa-camera"></i>
                <label for="fileButton"><i class="fa fa-file-photo-o"></i></label>
                <i class="fa fa-smile-o"></i>
                <article class="sendMessageControl w3-round-xlarge">
                    <input id="content" type="text" class="form-control" placeholder="write a message"/>
                    <span onclick="sendOutgoingChat()">
                        <i class="fa fa-paper-plane w3-text-blue"></i>
                    </span>
                </article>

                <input type="file" id="fileButton">             
                <i class="fa fa-microphone w3-right"></i>
            </div>

        </section>

        <script  src="https://www.gstatic.com/firebasejs/6.3.3/firebase-app.js"></script>
        <script  src="https://www.gstatic.com/firebasejs/6.3.3/firebase-database.js"></script>
        <script  src="https://www.gstatic.com/firebasejs/6.3.3/firebase-messaging.js"></script>
        <script src="https://www.gstatic.com/firebasejs/6.3.4/firebase-storage.js"></script>

        <script>

                        var msgpage = document.getElementById("chatbox");
                        var months = ["January", "February", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December"];
                        // Your web app's Firebase configuration
                        var firebaseConfig = {
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

                        //Sendinf Logic
                        function  sendOutgoingChat()
                        {
                            const text = document.getElementById("content").value;
                            var date = new Date();
                            const hour = date.getHours();
                            const minutes = date.getMinutes();
                            const month = date.getMonth();
                            const todayDate = date.getDate();
                            const dateString = hour + ":" + minutes + " | " + months[month] + " " + todayDate;

                            document.getElementById("content").value = "";

                            messageRef = firebase.database().ref('rooms/-LisWssZm-euDh0eRWm9').push();
                            messageRef.update({
                                content: text,
                                created: dateString,
                                senderId: "-LisWssZm-euDh0eRWm10",
                                senderName: "admin",
                                mimeType: "text"

                            }, function (error) {
                                if (error)
                                {
                                    console.log(error);
                                } else
                                {
                                    //document.getElementById("deliveryStatus").innerText = "sent";

                                }

                            });
                        }
                        
                        
                        function sendImageMessage(url, contentType, fileName)
                        {
                            var date = new Date();
                            const hour = date.getHours();
                            const minutes = date.getMinutes();
                            const month = date.getMonth();
                            const todayDate = date.getDate();
                            const dateString = hour + ":" + minutes + " | " + months[month] + " " + todayDate;

                            messageRef = firebase.database().ref('rooms/-LisWssZm-euDh0eRWm9').push();
                            messageRef.update({
                                content: url,
                                created: dateString,
                                senderId: "-LisWssZm-euDh0eRWm10",
                                senderName: "admin",
                                mimeType: contentType,
                                fileName: fileName

                            }, function (error) {
                                if (error)
                                {
                                    console.log(error);
                                } else
                                {
                                    //document.getElementById("deliveryStatus").innerHTML = "<i class='fa fa-check'> sent<i/>";

                                }

                            });

                        }


                        //File upload logic
                        fileButton.addEventListener('change', function (e) {
                            //get the file
                            var file = e.target.files[0];

                            // create a storage ref 
                            var storageRef = firebase.storage().ref('photos/' + file.name);
                            //upload file
                            var uploadTask = storageRef.put(file);

                            uploadTask.on('state_changed', function progress(snapshot) {


                            }, function error() {

                            }, function complete() {

                                uploadTask.snapshot.ref.getDownloadURL().then(function (downloadURL)
                                {
                                    var url = downloadURL;
                                    var contentType = "";
                                    var fileName = "";
                                    //console.log('File available at: ', downloadURL);

                                    storageRef.getMetadata().then(function (metadata)
                                    {
                                        fileName = metadata.name;
                                        contentType = metadata.contentType;
                                        sendImageMessage(url, contentType, fileName);
                                    }).catch(function (error)
                                    {
                                        // Uh-oh, an error occurred!
                                    });
                                });

                            });

                        });




                        //Displaying Logic
                        messageRef = firebase.database().ref('rooms/-LisWssZm-euDh0eRWm9');
                        messageRef.on('child_added', function (data) {
                            var childData = data.val();
                            var mimeType = childData["mimeType"];



                            if (mimeType.startsWith("image"))
                            {
                                if (childData["senderId"] == "-LisWssZm-euDh0eRWm10")
                                {
                                    var outgoingMsg = '<div class="outgoing-chats w3-animate-bottom"> <div class="outgoing-chats-msg"> <div class="outgoing-msg-inbox"> <img style="width: 100%" src="' + childData["content"] + 'class="w3-round-large"" />' +
                                            '<span class="time">' + childData["created"] + '<span class="w3-right" id="deliveryStatus"> sent' + '</span></span> </div> </div>' + '<div class="outgoing-chats-img">' +
                                            ' <img  src="../images/m1.jpeg" class="w3-circle" height="25" width="25" /> </div> </div>';
                                    msgpage.insertAdjacentHTML("beforeend", outgoingMsg);



                                } else
                                {
                                    var receivendMsg = '<div  class="received-chats w3-animate-bottom"><div class="received-chats-img"><img  src="../images/1.jpg" class="w3-circle" height="25" width="25" />\n\
                                    </div> <div class="received-msg"> <div class="received-msg-inbox"> <img style="width: 100%" src="' + childData["content"] + 'class="w3-round-large"" />' + '<span class="time">' + childData["created"] + '<span class="w3-right" id="deliveryStatus2">' + '</span></span> </div> </div> </div>';
                                    msgpage.insertAdjacentHTML("beforeend", receivendMsg);
                                }
                            }
                            
                           else
                            {
                                if (childData["senderId"] == "-LisWssZm-euDh0eRWm10")
                                {
                                    var outgoingMsg = '<div class="outgoing-chats w3-animate-bottom"> <div class="outgoing-chats-msg"> <div class="outgoing-msg-inbox"> <p>' + childData["content"] + '</p>' +
                                            '<span class="time">' + childData["created"] + '<span class="w3-right" id="deliveryStatus"> sent' + '</span></span> </div> </div>' + '<div class="outgoing-chats-img">' +
                                            ' <img  src="../images/m1.jpeg" class="w3-circle" height="25" width="25" /> </div> </div>';
                                    msgpage.insertAdjacentHTML("beforeend", outgoingMsg);



                                } else
                                {
                                    var receivendMsg = '<div  class="received-chats w3-animate-bottom"><div class="received-chats-img"><img  src="../images/1.jpg" class="w3-circle" height="25" width="25" />\n\
                                    </div> <div class="received-msg"> <div class="received-msg-inbox"> <p> ' + childData["content"] + '</p>' + '<span class="time">' + childData["created"] + '<span class="w3-right" id="deliveryStatus2">' + '</span></span> </div> </div> </div>';
                                    msgpage.insertAdjacentHTML("beforeend", receivendMsg);
                                }
                            }




                        });




        </script>
    </body>
</html>
