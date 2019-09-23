<%-- 
    Document   : CustomerRegistration
    Created on : Jul 1, 2019, 1:05:18 AM
    Author     : sidibe
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

        <style>
            body{
                background: url("img/city.png") bottom no-repeat;
                margin-top: -7%;
                background-size: contain;
                height: 700px;
                margin-bottom: -1.8%;
                position: relative;
            }


            .container {
                margin-right: auto;
                margin-left: auto;
                padding-left: 15px;
                padding-right: 15px;
            }
            #cloud1 {
                top: 320px;
                background: url("https://s3.ap-south-1.amazonaws.com/drivezy.com-assets/drivezy-cloud.png") bottom left no-repeat;
                background-size: 35px 20px;
                z-index: 1;
                -webkit-animation: moveclouds 66s linear infinite;
                animation: moveclouds 66s linear infinite;
            }
            #cloud2 {
                bottom: 53%;
                left: 10%;
                top: 40%;
                background: url("https://s3.ap-south-1.amazonaws.com/drivezy.com-assets/drivezy-cloud.png") bottom left no-repeat;
                background-size: 50px 26px;
                z-index: 1;
                -webkit-animation: moveclouds 47s linear infinite;
                animation: moveclouds 47s linear infinite;
            }
            #cloud3 {
                bottom: 47%;
                left: 50%;
                top: 46%;
                background-size: 34px 18px;
                z-index: 1;
                -webkit-animation: moveclouds 100s linear infinite;
                animation: moveclouds 100s linear infinite;
            }
            #cloud4 {
                bottom: 44%;
                left: 16%;
                background-size: 50px 30px;
                -webkit-animation: movecar 35s linear infinite;
                animation: movecar 35s linear infinite;
            }
            #cloud5 {
                bottom: 51%;
                left: 1%;
                background: url("https://s3.ap-south-1.amazonaws.com/drivezy.com-assets/drivezy-cloud.png") bottom left no-repeat;
                background-size: 28px 16px;
                -webkit-animation: moveclouds 84s linear infinite;
                animation: moveclouds 84s linear infinite;
            }
            #cloud3, #cloud4 {
                background: url("https://s3.ap-south-1.amazonaws.com/drivezy.com-assets/drivezy-cloud2.png") bottom left no-repeat;
            }
            #cloud4, #cloud5 {
                top: 44%;
                z-index: 1;
            }
            #cloud1, #cloud2, #cloud3, #cloud4, #cloud5
            {
                position: absolute;
                top: 0;
                left: 0;
                bottom: 70%;
                width: 8%;
            }
            @media (max-width: 767px)
            {
                .hidden-xs {
                    display: none!important;
                }
            }
            #car1 {
                bottom: .8%;
                left: 10%;
                background-size: 60px 29px;
                z-index: 12;
                -webkit-animation: movecar 30s linear infinite;
                animation: movecar 30s linear infinite;
            }
            #car2 {
                bottom: 3%;
                left: 10%;
                background-size: 53px 27px;
                z-index: 9;
                -webkit-animation: movecar 24s linear infinite;
                animation: movecar 24s linear infinite;
            }
            #car3 {
                bottom: 6.5%;
                right: 10%;
                background: url("https://jtride-data.s3.ap-south-1.amazonaws.com/uploads/1499845090_scooter.png") bottom left no-repeat;
                background-size: 52px 26px;
                z-index: 1;
                -webkit-animation: movebike 30s linear infinite;
                animation: movebike 30s linear infinite;
            }
            #car1, #car2 {
                position: absolute;
                right: 0;
                width: 8%;
            }
            #car1, #car2 {
                background: url("https://s3.ap-south-1.amazonaws.com/drivezy.com-assets/carn.png") bottom left no-repeat;
            }
            @media (max-width: 992px)
            {
                .home-page #car2 {
                    top: 89%;
                    bottom: 1%;
                }
            }
            #bike, #car1, #car2, #car3 {
                top: 85%;
            }
            #bike, #car3 {
                position: absolute;
                width: 8%;
            }
            @media (max-width: 992px)
            {
                .home-page #car3 {
                    top: 89%;
                    bottom: 3%;
                }}
            #bike, #car1, #car2, #car3 {
                top: 85%;
            }

            #bike {
                bottom: 5%;
                right: 10%;
                background: url("img/truck-del.png") bottom left no-repeat;
                background-size: 100px 80px;
                z-index: 3;
                -webkit-animation: movebike 25s linear infinite;
                animation: movebike 25s linear infinite;
            }

            @keyframes moveclouds
            {
                0% {
                    margin-left: 90%;
                    opacity: 1;
                }
                33% {
                    opacity: .6;
                }
                50% {
                    opacity: .3;
                }
                77% {
                    opacity: 1;
                }
                100% {
                    margin-left: -10%;
                    opacity: 0;
                }
            }
            @keyframes movecar
            {
                0% {
                    margin-left: 90%;
                }
                100% {
                    margin-left: -10%;
                }
            }
            @keyframes movebike
            {
                0% {
                    margin-right: 90%;
                }
                100% {
                    margin-right: -10%;
                }
            }
            * {
                box-sizing: border-box;
            }



            #regForm {
                background-color: rgba(0,0,0,0.7);
                font-family: Raleway;
                padding: 40px;
                min-width: 300px;
                z-index: 5;

            }

            h1 {
                text-align: center;  
                color: pink;
            }

            input {
                padding: 10px;
                width: 100%;
                font-size: 17px;
                font-family: Raleway;
                border: 1px solid #aaaaaa;
            }

            /* Mark input boxes that gets an error on validation: */
            input.invalid {
                background-color: #ffdddd;
            }

            /* Hide all steps by default: */
            .tab {
                display: none;
            }

            button {
                background-color: pink;
                color: #00000;
                border: none;
                padding: 10px 20px;
                font-size: 17px;
                font-family: Raleway;
                cursor: pointer;
            }

            button:hover {
                opacity: 0.8;
            }

            #prevBtn {
                background-color: #bbbbbb;
            }

            /* Make circles that indicate the steps of the form: */
            .step {
                height: 15px;
                width: 15px;
                margin: 0 2px;
                background-color: #bbbbbb;
                border: none;  
                border-radius: 50%;
                display: inline-block;
                opacity: 0.5;
            }

            .step.active {
                opacity: 1;
            }

            /* Mark the steps that are finished and valid: */
            .step.finish {
                background-color: #4CAF50;
            }
            label
            {
                color:pink;
            }
            .c-pink
            {
                color:pink;
            }
            .patter-wrapper
            {
                border: 1px solid pink;
                height: fit-content;
                position: relative;
                left: 50%;
                transform: translate(-50%);
                width: fit-content;
                background: black;
            }

            .blue-fonce{background: rgb(46,59,89);color:white}


            /*OTP 4 Boxes*/
            #partitioned {
                padding-left: 15px;
                letter-spacing: 42px;
                border: 0;
                background-image: linear-gradient(to left, white 70%, rgba(255, 255, 255, 0) 0%);
                background-position: bottom;
                background-size: 50px 1px;
                background-repeat: repeat-x;
                background-position-x: 35px;
                width: 220px;
                min-width:220px;
            }

            #divInner{
                left: 0;
                position: sticky;
            }

            #divOuter{
                width:190px; 
                overflow:hidden
            }
            /*End OTP 4 Boxes*/
        </style>
       
       
    </head>
    <body>
        <div class="home-wrapper container" id="home-wrapper">
            <span class="hidden-xs" id="cloud1"></span>
            <span class="hidden-xs" id="cloud2"></span>
            <span class="hidden-xs" id="cloud3"></span>
            <span class="hidden-xs" id="cloud4"></span>
            <span class="hidden-xs" id="cloud5"></span>

            <span class="hidden-xs" id="car1"></span>
            <span class="hidden-xs" id="car2"></span>
            <span class="hidden-xs" id="car3"></span>
            <span class="hidden-xs" id="bike"></span>

        </div>  




        <div id="modal"> 


            <form id="regForm" class="w3-col s12 m12 l6 w3-display-middle"   action="./ForgotPassword" method="post">
                <h1><strong>Password assistance</strong></h1>
                <!-- One "tab" for each step in the form: -->
                <div>
                    <label>Enter the email address or mobile phone number associated with your chapdeals account.</label>
                    <p><input  class="w3-input" id="email" placeholder="Email..." oninput="this.className = ''" type="email" name="email" required></p>
                </div>


                <p class="w3-button w3-right w3-pink" id="submitEmail" onclick="checkIfUserEmailAlreadyExist()">Continue</p>



                <input type="hidden" id="username" name="username"/>
                <input type="hidden" id="dob" name="dob"/>
                <input type="hidden" id="address" name="address"/>
                <input type="hidden" id="phone" name="phone"/>
                <input type="hidden" id="key" name="key"/>
            </form>

        </div>


       
        <!-- The core Firebase JS SDK is always required and must be listed first -->
        <script src="https://www.gstatic.com/firebasejs/6.2.4/firebase.js"></script>

        <!-- TODO: Add SDKs for Firebase products that you want to use
             https://firebase.google.com/docs/web/setup#config-web-app -->
        <script>




                    function checkIfUserEmailAlreadyExist()
                    {
                        // Your web app's Firebase configuration
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
                        // firebase.initializeApp(firebaseConfig);
                        if (!firebase.apps.length) {
                            firebase.initializeApp(firebaseConfig);
                        }


                        var email = document.getElementById("email").value;


                        //Promise once
                        firebase.database().ref('Users/').orderByChild("email").equalTo(email).once('value').then(snap =>
                        {
                            if (snap.exists()) 
                            {
                                snap.forEach(b =>
                                {
                                    document.getElementById("username").value = b.val().username;
                                    document.getElementById("phone").value = b.val().phone;
                                    document.getElementById("dob").value = b.val().dob;
                                    document.getElementById("address").value = b.val().address;
                                    document.getElementById("key").value = b.key;
                                    document.getElementById("regForm").submit();

                                });

                            } else {


                                alert('Sorry this email does not exist in our system😰');
                                document.getElementById("email").value = "";
                                //return false;

                            }




                        }, function (error) {
                            // The Promise was rejected.
                            console.error(error);
                        });






                    }













        </script>


    </body>
</html>