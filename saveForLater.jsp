<%-- 
]=` 
    Document   : index
    Created on : Jul 911, 2019, 9:37:03 AM
    Author     : sidibe 
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<c:choose>
    <c:when test="${param['locale'] != null}">
        <fmt:setLocale value="${param['locale']}" scope="session"/>
    </c:when>
    <%--
    <c:otherwise>

        <fmt:setLocale value="fr-FR" scope="session"/>
   </c:otherwise>
    --%>
</c:choose>
<fmt:setBundle basename="i18n.Home" scope="session"/>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <!-- Global site tag (gtag.js) - Google Analytics -->
        <script async src="https://www.googletagmanager.com/gtag/js?id=UA-114501583-1"></script>
        <script>
            window.dataLayer = window.dataLayer || [];
            function gtag() {
                dataLayer.push(arguments);
            }
            gtag('js', new Date());

            gtag('config', 'UA-114501583-1');
        </script>
        <!-- Global site tag (gtag.js) - Google Analytics -->
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="shortcut icon" href="img/2.png" type="image/png">


        <!-- font-icon -->
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

        <!-- material buttom!-->
        <link rel="stylesheet" href="css/material_design/component.css"/>

        <!-- w3 !-->
        <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
        <link rel="stylesheet" href="css/w3.css">
        <link rel="stylesheet"  href="css/main_theme.css"/>

        <style>




            #search
            {
                outline: none;
            }
            .cd-hover-pink:hover
            {
                color:#fff !important; background-color:pink !important
            }
            dl, article a
            {
                font-family: "Times new roman"
            }
            .sign-padding
            {
                padding: 4px;
            }
            .mySlides {display:none;}


            section.scrollmenu {
                overflow: auto;
                white-space: nowrap;
            }
            section.scrollmenu  a {
                display: inline-block;
                color: white;
                text-align: center;
                padding: 14px;
                text-decoration: none;
            }
            #products p , p span
            {
                color: #282c3f;
                font-weight: 400;
                margin-bottom: 0;
                display: inline-block;
                font-size: 15px;
            }

            .cd-strike-through
            {
                text-decoration: line-through;
            }




            .bottom-nav {
                height:70px;
                width: 100vw;
                position:absolute;
                bottom:0;
            }
            .fab{
                height:64px;
                width:64px;
                border-radius:100%;
                border : 6px solid white;
                margin: auto;
                position: relative;
                top:-42px;
                text-align: center;
                line-height : 64px;
            }


            /* Extra small devices (phones, 600px and down) */
            @media only screen and (max-width: 600px) {
                #banner
                {
                    width: 100%;
                    height: 250px;
                }
                #banner  img
                {
                    width: 100%;
                    max-height: 250px;
                }
            } 
            @media only screen and (min-width: 600px) {
                #banner  img
                {
                    width: 100%;
                    height: 400px;
                }
            }

            @media only screen and (min-width: 768px) {
                #banner  img
                {
                    width: 100%;
                    height: 400px;
                }
            }

            .cd-padding
            {
                padding: 2px;
            }



            .appbar {
                width: 100%;
                min-height: 3.5rem;
            }
            .appbar__bottom {
                position: fixed;
                bottom: 0;
                display: grid;
                width: 100%;

            }
            .appbar__bottom--normal {
                display: flex;  
                align-items: center;
                background-color: #a91143 !important;
            }
            .appbar__bottom--normal a {

                display: inline-block;
                margin: 0 0.25rem;
                padding: 0.5rem;
                color: rgba(255, 255, 255, 1);
                font-size: 0;
                text-decoration: none;
            }

            .appbar__bottom--spacer {
                background-color:  #a91143 !important;
            }
            .appbar__bottom--cutout {
                width: 5rem;
                max-width: 5rem;
                background: #a91143 !important;
                -webkit-clip-path: url(#appbar__cutout);
                clip-path: url(#appbar__cutout);
            }
            .appbar__bottom--fab {
                -webkit-transform: box-shadow 170ms ease-out;
                transform: box-shadow 170ms ease-out;
                position: absolute;
                top: -50%;
                left: 50%;
                display: flex;
                align-items: center;
                justify-content: center;
                width: 3.5rem;
                height: 3.5rem;
                padding: 0;
                background-color: #f279a1 !important;
                color: white;
                border-radius: 50%;
                box-shadow: 0 2px 4px -1px rgba(0, 0, 0, 0.2), 0 4px 5px 0 rgba(0, 0, 0, 0.14), 0 1px 10px 0 rgba(0, 0, 0, 0.12);
                -webkit-transform: translateX(-50%);
                transform: translateX(-50%);
            }
            /*
            .appbar__bottom--fab-primary {
                background-color: #263238;
                color: white;
            }*/

            .appbar__bottom--fab-end {
                left: auto;
                right: 1rem;
                -webkit-transform: translateX(0);
                transform: translateX(0);
            }
            .appbar__bottom--fab:hover, .appbar__bottom--fab:focus {
                box-shadow: 0 5px 5px -3px rgba(0, 0, 0, 0.2), 0 8px 10px 1px rgba(0, 0, 0, 0.14), 0 3px 14px 2px rgba(0, 0, 0, 0.12);
            }

            .appbar__bottom--center-cut {
                grid-template: auto/1fr 4.8rem 1fr;
            }

            .appbar__bottom--no-fab {
                grid-template: auto / 1fr 1fr;
            }
            .appbar a {
                text-decoration: none;
            }

            .flex--right {
                justify-content: flex-end;
            }

            #accountSmall
            {
                height:250px;
                width: 95%;
                left: 50%;
                transform: translate(-50%);
                background-color:#fff;
                position:fixed!important;
                bottom: 0;
                z-index:999;
                overflow:auto;
                border-radius: 5px;
                display: none;
            }
            #accountMediumLarge
            {
                left: 50%;
                transform: translate(-50%);
                background-color:#fff;
                position:fixed!important;
                bottom: 0;
                z-index:999;
                overflow:auto;
                border-radius: 5px;
                display: none;
            }

            .grid-container {
                position: absolute;
                right: 60px;
                display: grid;
                grid-template-columns: auto auto auto;
                background-color:white;
            }





            .grid-container > a {
                background-color: rgba(255, 255, 255, 0.8);
                padding: 5px 20px;
                text-decoration: none;

            }

            .item1,.hr {
                grid-column-start: 1;
                grid-column-end: 4;
                padding: 0
            }
            .item3,.item5,.item7,.item9,.item11,.item13
            {
                grid-column-start: 2;
                grid-column-end: 4;
            }



        </style>
        <title>Chapdeals achat en ligne</title>
    </head>

    <body>


        <%@include file="SideBar.jsp"%>
        <%@include file="AccountModal.jsp"%>
        <section class="w3-main"  id="main"  style="margin-left:200px">


            <%@include file="ActionBarMediumScreen.jsp"%>
            <%@include file="ActionBarLargeScreen.jsp" %>
            <%@include file="MenuSmallScreen.jsp"%>
            <%@include file="MenuMLScreen.jsp" %>
            <%@include  file="AccountSettings.jsp" %>

            

            <%--
        <section class="w3-hide-small  grid-container w3-border  w3-text-gray " id="accountMediumLarge" style="visibility: hidden">
            <a class="item1 w3-border-bottom w3-theme" style="padding-right: 0">Account setting <sub class="w3-btn w3-card w3-right w3-large" onclick="document.getElementById('accountMediumLarge').style.visibility = 'hidden'"> &times;</sub></a>
            <a href="#" class="item2"><i class="fa fa-gift w3-text-theme"><sup class="w3-text-black">6</sup></i></a>
            <a href="#" class="item3">Your orders</a>  
            <a href="#" class="item4"><i class="fa fa-envelope  w3-text-theme"></i></a>
            <a href="#" class="item5">Contact us</a>
            <a href="#" class="item6"><i class="fa fa-edit  w3-text-theme"></i></a>
            <a href="#" class="item7">Details</a>


                <hr class="hr">
                <a href="#"  class="item10"><i class="fa fa-bell  w3-text-theme"><sup class="w3-text-black">3</sup></i></a> 
                <a href="#" class="item11">Notifications</a> 
                <a href="#" class="item12"><i class="fa fa-tag  w3-text-theme"><sup class="w3-text-black"></sup></i></a> 
                <a href="#" class="item13">Coupons</a>
                <a href="#" class="item12"><i class="fa fa-money  w3-text-theme"></i></a> 
                <a href="#" class="item13">Credit</a>
                <a href="#" class="item8  w3-theme"><i class="fa fa-sign-in  w3-text-white"></i></a> 
                <a href="#" class="item9 w3-theme">Sign in</a> 
            </section>--%>

            <section id="banner" class="w3-row">
                <img class="mySlides" src="img/ama6.jpg">
                <img class="mySlides" src="img/ama9.jpg">
                <img class="mySlides" src="img/ama10.jpg">
                <img class="mySlides" src="img/ama7.jpg">
                <img class="mySlides" src="img/ama5.jpg">
                <img class="mySlides" src="img/ama2.jpg">

                <button id="btnPhoneLeft" class="w3-button w3-black  w3-hide-medium w3-hide-large" style="position:absolute;top:20%;left:0%;transform:translate(0%,-20%);-ms-transform:translate(-0%,-20%)"  onclick="plusDivs(-1)">&#10094;</button>
                <button id="btnPhoneRight" class="w3-button w3-black w3-hide-medium w3-hide-large" style="position:absolute;top:20%;right:0%;transform:translate(0%,-50%);-ms-transform:translate(0%,-20%)" onclick="plusDivs(1)">&#10095;</button>

                <button id="btnTablette" class="w3-button w3-black w3-display-left w3-hide-small  w3-hide-large"  onclick="plusDivs(-1)">&#10094;</button>
                <button id="btnDesktop"  class="w3-button w3-black w3-display-left  w3-hide-small w3-hide-medium" style="margin-left: 200px" onclick="plusDivs(-1)">&#10094;</button>
                <button id="btnDeskTabRight"  class="w3-button w3-black w3-display-right w3-hide-small" onclick="plusDivs(1)">&#10095;</button>
            </section>

            <section class="scrollmenu w3-center">
                <a href="ProductDetails.html?category=Gadgets&subcategory=Smart Wearables" class="w3-text-black"> <img src="img/watch1.jpg" height="80" width="80" class="w3-circle"/><br> Watches</a>
                <a href="ProductDetails.html?category=Footwear&subcategory=shoes" class="w3-text-black">  <img src="img/shoes.jpeg" height="80" width="80" class="w3-circle"/><br> Shoes</a>
                <a href="ProductDetails.html?category=Beauty and Personal Care&subcategory=Makeup" class="w3-text-black"> <img src="img/makeup.jpg" height="80" width="80" class="w3-circle"/><br> Make up</a>
                <a href="ProductDetails.html?category=Beauty and Personal Care&subcategory=Extension" class="w3-text-black"> <img src="img/hair.jpg" height="80" width="80" class="w3-circle "/><br> Extension</a>
                <a href="ProductDetails.html?category=Footwear&subcategory=Boots" class="w3-text-black"> <img src="img/boots.jpg" height="80" width="80" class="w3-circle"/><br> Boots</a>
                <a href="ProductDetails.html?category=Jewellery&subcategory=Earrings" class="w3-text-black"> <img src="img/bouc.jpg" height="80" width="80" class="w3-circle w3-border"/><br> Earring</a>
            </section>

            <section id="products" class="w3-row-padding w3-section">
                <header class="w3-row"><h3 class="w3-left">Brand in focus</h3></header>

                <div class="w3-col s6 l3 w3-margin-bottom">
                    <img src="homePageImages/h1.jpg" style="width:100%">

                </div>

                <div class="w3-col s6 l3 w3-margin-bottom">
                    <img src="homePageImages/h5.jpg" style="width:100%">

                </div>

                <div class="w3-col s6 l3 w3-margin-bottom">
                    <img src="homePageImages/h6.jpg" style="width:100%">

                </div>
                <div class="w3-col s6 l3 w3-margin-bottom">
                    <img src="homePageImages/h7.jpg" style="width:100%">

                </div>
            </section>

            <section id="li2" class="w3-row-padding w3-section">
                <header class="w3-row"><h3 class="w3-left">Trending now</h3></header>
                <div class="w3-col s6 l3 w3-margin-bottom">
                    <div class="">
                        <img src="homePageImages/h9.jpg"  style="width:100%;">

                    </div>
                </div>

                <div class="w3-col s6 l3 w3-margin-bottom">
                    <div class="">
                        <img src="homePageImages/h10.jpg" style="width:100%;">

                    </div>
                </div>

                <div class="w3-col s6 l3 w3-margin-bottom">
                    <div class="">
                        <img src="homePageImages/h11.jpg" style="width:100%">

                    </div>
                </div>
                <div class="w3-col s6 l3 w3-margin-bottom">
                    <div class="">
                        <img src="homePageImages/h12.jpg" style="width:100%">

                    </div>
                </div>
            </section>

            <input type="hidden" id="u" value="${sessionScope.customer.key}"/>

        </section>

        <script  src="https://www.gstatic.com/firebasejs/6.3.3/firebase-app.js"></script>
        <script  src="https://www.gstatic.com/firebasejs/6.3.3/firebase-database.js"></script>
        <script  src="https://www.gstatic.com/firebasejs/6.3.3/firebase-messaging.js"></script>
        <script defer src="https://www.gstatic.com/firebasejs/6.3.4/firebase-storage.js"></script>

        <script>
                    /******************** web app's Firebase configuration***************************/
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
                    /********************End of Firesebas Init ***********************************/

                    /********************Display and hide bottomApp***************************/
                    var prevScrollpos = window.pageYOffset;
                    window.onscroll = function () {
                        var x = document.getElementById("bottomapp1");
                        var y = document.getElementById("bottomapp2");
                        var z = document.getElementById("bottomapp3");

                        var currentScrollPos = window.pageYOffset;
                        if (prevScrollpos < currentScrollPos) {

                            if (x.className.indexOf("w3-animate-bottom") == -1)
                            {
                                document.getElementById("bottomapp1").classList.add("ch-animate-opacity");
                                document.getElementById("bottomapp2").classList.add("ch-animate-opacity");
                                document.getElementById("bottomapp3").classList.add("ch-animate-opacity");


                            } else
                            {
                                document.getElementById("bottomapp1").classList.replace("w3-animate-bottom", "ch-animate-opacity");
                                document.getElementById("bottomapp2").classList.replace("w3-animate-bottom", "ch-animate-opacity");
                                document.getElementById("bottomapp3").classList.replace("w3-animate-bottom", "ch-animate-opacity");


                            }
                        } else {
                            document.getElementById("bottomapp1").classList.replace("ch-animate-opacity", "w3-animate-bottom");
                            document.getElementById("bottomapp2").classList.replace("ch-animate-opacity", "w3-animate-bottom");
                            document.getElementById("bottomapp3").classList.replace("ch-animate-opacity", "w3-animate-bottom");
                        }
                        prevScrollpos = currentScrollPos;
                    }
                    /********************End Display and hide bottomApp***************************/



                    /*open and close left panel*/
                    function w3_open() {
                        document.getElementById("mySidebar").style.display = "block";
                    }

                    function w3_close() {
                        document.getElementById("mySidebar").style.display = "none";
                    } /*open and close left panel*/

                    /*menu accordion on the left panel*/
                    function menuAccordion(id) {
                        var x = document.getElementById(id);
                        if (x.className.indexOf("w3-show") == -1) {
                            x.className += " w3-show";
                            x.previousElementSibling.classList.add('w3-text-pink');
                            x.previousElementSibling.lastChild.classList.replace('fa-plus-circle', 'fa-minus-circle');
                        } else {
                            x.className = x.className.replace(" w3-show", "");
                            x.previousElementSibling.classList.remove('w3-text-pink');
                            x.previousElementSibling.lastChild.classList.replace('fa-minus-circle', 'fa-plus-circle');

                        }
                    } /*end menu accordion on the left panel*/


                    var slideIndex = 1;
                    showDivs(slideIndex);

                    function plusDivs(n) {
                        showDivs(slideIndex += n);
                    }

                    function showDivs(n) {
                        var i;
                        var x = document.getElementsByClassName("mySlides");
                        if (n > x.length) {
                            slideIndex = 1
                        }
                        if (n < 1) {
                            slideIndex = x.length
                        }
                        for (i = 0; i < x.length; i++) {
                            x[i].style.display = "none";
                        }
                        x[slideIndex - 1].style.display = "block";
                    }

                    /*image slide*/
                    var myIndex = 0;
                    carousel();
                    function carousel() {
                        var i;
                        var x = document.getElementsByClassName("mySlides");
                        for (i = 0; i < x.length; i++) {
                            x[i].style.display = "none";
                        }
                        myIndex++;
                        if (myIndex > x.length) {
                            myIndex = 1
                        }
                        x[myIndex - 1].style.display = "block";
                        setTimeout(carousel, 5000); // Change image every 5 seconds
                    } /*end image slide*/





                    var isCtrl = false;
                    document.onkeyup = function (e)
                    {
                        if (e.which == 17)
                            isCtrl = false;
                    }
                    document.onkeydown = function (e)
                    {
                        if (e.which == 17)
                            isCtrl = true;
                        if (e.which == 85 && isCtrl == true) {
                            //run code for CTRL+U -- ie, whatever!
                            window.location.href = "LoginCheck.jsp";
                            // document.getElementById("bd").style.opacity="1";



                            return false;
                        }
                    }

            <c:if test="${sessionScope.customer.key !=null}">
                    const u = document.getElementById("u").value;

                    firebase.database().ref("WishList/" + u).on('value', function (snapshot)
                    {
                        document.getElementById("wishListItemCount").innerHTML = snapshot.numChildren();
                        document.getElementById("wishListCountMeduimScreen").innerHTML = snapshot.numChildren();
                    });
                    firebase.database().ref("Cart/" + u).on('value', function (snapshot)
                    {
                        document.getElementById("cartItemCount").innerHTML = snapshot.numChildren();
                        document.getElementById("wishListCountLargeScreen").innerHTML = snapshot.numChildren();
                    });
            </c:if>



        </script>
        <script src="js/SidebarListener.js"></script>
    </body>
</html>
