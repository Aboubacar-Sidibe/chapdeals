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
            a
            {
                text-decoration: none;
            }
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

            #bottomapp a
            {
                text-decoration: none;  
                text-align: center;
                margin-bottom: 0;
                padding-bottom: 0;
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

        <div class="w3-sidebar w3-bar-block w3-collapse w3-card w3-animate-left" style="z-index:999"  id="mySidebar">
            <article class="w3-theme-d3" style="padding: 8px 0">
                <img class="w3-circle" src="img/img_avatar.png" height="25" width="25" alt="avatar" /> <a>Hello, Sidibe</a>
                <sub class="w3-hide-large w3-right w3-large" onclick="w3_close()"> &times;</sub>

            </article>            
            <article class="w3-bar-block w3-border-bottom">
                <a href="#" class="w3-bar-item w3-button cd-hover-pink"><i title="Top deals"></i>Top deals</a>
                <a href="#" class="w3-bar-item w3-button cd-hover-pink"><i title="Upcoming deals"></i>Upcoming deals</a>

            </article>

            <dl>
                <dt onclick="menuAccordion('newarrivals')">New arrivals<i class="fa fa-plus-circle w3-right w3-text-pink w3-margin-right"></i></dt>
                <article id="newarrivals" class="w3-hide w3-animate-opacity">
                    <a href="#" class="w3-bar-item w3-button cd-hover-pink">- new dresses</a>
                    <a href="#" class="w3-bar-item w3-button cd-hover-pink">- new matching sets</a>
                    <a href="#" class="w3-bar-item w3-button cd-hover-pink">- new rompers & jump suits</a>
                    <a href="#" class="w3-bar-item w3-button cd-hover-pink">- new tops</a>
                </article>

                <dt  onclick="menuAccordion('jeans')">Jeans<i class="fa fa-plus-circle w3-right w3-text-pink w3-margin-right"></i></dt>
                <article id="jeans" class="w3-hide w3-animate-opacity">
                    <a href="#" class="w3-bar-item w3-button cd-hover-pink">- denim shorts</a>
                    <a href="#" class="w3-bar-item w3-button cd-hover-pink">- black jeans</a>
                    <a href="#" class="w3-bar-item w3-button cd-hover-pink">- color jeans</a>

                </article>


                <dt onclick="menuAccordion('tops')">Tops<i class="fa fa-plus-circle w3-right w3-text-pink w3-margin-right"></i></dt>
                <article id="tops" class="w3-hide w3-animate-opacity">
                    <a href="#" class="w3-bar-item w3-button cd-hover-pink">- body suits</a>
                    <a href="#" class="w3-bar-item w3-button cd-hover-pink">- fashion tops</a>
                    <a href="#" class="w3-bar-item w3-button cd-hover-pink">- $5 tops</a>

                </article>

            </dl>

        </div>
        <%--
        <section class="w3-hide-medium w3-hide-large  grid-container-small w3-border  w3-text-gray" id="accountSmall" style="visibility: hidden">

            <a class="item1 w3-border-bottom w3-theme">Account management  <span class="w3-hide-large w3-right w3-large" onclick="document.getElementById('accountSmall').style.visibility = 'hidden'"> &times;</span></a>
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

        <section class="w3-bar-block w3-hide-large w3-hide-medium w3-bottom w3-animate-bottom w3-card-32" id="accountSmall">

            <header class="w3-row w3-theme w3-center">            
                Account settings  <span class="w3-btn w3-card w3-hide-large w3-right w3-large" onclick="document.getElementById('accountSmall').style.display = 'none'"> &times;</span>
            </header>




            <article class="w3-row  w3-bar-item">
                <a href="#">
                    <div class="w3-col s2  w3-left">
                        <span  ><i class="fa fa-gift w3-text-theme"><sup class="w3-text-black">3</sup></i></span>
                    </div>
                    <div class="w3-col s10  w3-center">
                        <span >Your orders</span>  
                    </div>
                </a>
            </article>

            <article class="w3-row w3-bar-item">
                <a href="#">
                    <div class="w3-col s2  w3-left">
                        <span  ><i class="fa fa-envelope w3-text-theme"></i></span>
                    </div>


                    <div class="w3-col s10  w3-center">
                        <span >Contact us</span>  
                    </div>
                </a>
            </article>

            <article class="w3-row w3-bar-item">
                <a href="#">
                    <div class="w3-col s2  w3-left">
                        <span  ><i class="fa fa-edit w3-text-theme"></i></span>
                    </div>
                    <div class="w3-col s10  w3-center">
                        <span >Your details</span>  
                    </div>
                </a>
            </article>


            <hr>
            <article class="w3-row w3-bar-item">
                <a href="#">
                    <div class="w3-col s2  w3-left">
                        <span  ><i class="fa fa-bell w3-text-theme"><sup class="w3-text-black">6</sup></i></span>
                    </div>
                    <div class="w3-col s10  w3-center">
                        <span  >Notifications</span>  
                    </div>
                </a>
            </article>

            <article class="w3-row w3-bar-item">
                <a href="#">
                    <div class="w3-col s2  w3-left">
                        <span  ><i class="fa fa-tag w3-text-theme"></i></span>
                    </div>
                    <div class="w3-col s10  w3-center">
                        <span  >Coupons</span>  
                    </div>
                </a>
            </article>

            <article class="w3-row w3-bar-item ">
                <a href="#">
                    <div class="w3-col s2  w3-left">
                        <span ><i class="fa fa-money w3-text-theme"></i></span>
                    </div>
                    <div class="w3-col s10  w3-center">
                        <span >Credits</span>  
                    </div></a>
            </article>



            <footer class="w3-row w3-theme w3-bar-item">
                <a href="#">
                    <div class="w3-col s2  w3-left">
                        <span  ><i class="fa fa-sign-in w3-text-white"></i></span>
                    </div>
                    <div class="w3-col s10  w3-center">
                        <span>Sign In</span>  
                    </div> 
                </a>
            </footer>



        </section>


        <section class="w3-main"  id="main"  style="margin-left:200px">


            <section id="actionMedium" class="w3-hide-small w3-hide-large w3-bar  w3-theme-d3">
                <button class="w3-bar-item w3-button  w3-hide-large w3-text-white" onclick="w3_open()">&#9776;</button>
                <a href="#" class="w3-bar-item w3-button cd-hover-pink w3-right"><i title="download apps" class="fa fa-mobile "> Download apps</i> </a>
                <a href="#" class="w3-bar-item w3-button cd-hover-pink w3-right"><i title="Sell on chapdeals" class="fa fa-money  "> Sell on chapdeals</i></a>
                <a href="#" class="w3-bar-item w3-button cd-hover-pink w3-right"><i title="Help center" class="fa fa-question-circle  "> Help center</i></a>
                <a href="#" class="w3-bar-item w3-button cd-hover-pink w3-right"><i title="Gift cards" class="fa fa-gift"> Gift cards</i></a>
            </section>

            <section id="actionLarge" class="w3-hide-small w3-hide-medium w3-bar  w3-theme-d3">
                <a href="#" class="w3-bar-item w3-button cd-hover-pink"><i title="Ivorian best deals" class="fa fa-handshake-o"> Ivorian Best deals</i></a>            
                <a href="#" class="w3-bar-item w3-button cd-hover-pink w3-right"><i title="download apps" class="fa fa-mobile "> Download apps</i> </a>
                <a href="#" class="w3-bar-item w3-button cd-hover-pink w3-right"><i title="Sell on chapdeals" class="fa fa-money  "> Sell on chapdeals</i></a>
                <a href="#" class="w3-bar-item w3-button cd-hover-pink w3-right"><i title="Help center" class="fa fa-question-circle  "> Help center</i></a>
                <a href="#" class="w3-bar-item w3-button cd-hover-pink w3-right"><i title="Gift cards" class="fa fa-gift"> Gift cards</i></a>
            </section>


            <div id="bottomapp" class="w3-hide-large w3-hide-medium  w3-theme-d3 w3-bottom" >
                <a href="#" class="w3-left w3-text-white w3-margin" onclick="w3_open()"><i class="fa fa-bars w3-xlarge"></i></a>
                <a href="#" class="w3-right w3-text-white w3-margin"><i class="fa fa-heart w3-large"></i></a>
                <a href="#" class="w3-right w3-text-white w3-margin" onclick="document.getElementById('accountSmall').style.display = 'block'"><i class="fa fa-user-circle-o w3-large"></i></a>
                <a href="#" class="w3-right w3-text-white w3-margin"><i class="fa fa-gift w3-large"></i></a>
                <div class="fab w3-theme-l2"><i class="fa fa-shopping-cart w3-large w3-text-white"></i></div>
            </div>


            <section id="menuBarSmall" class="w3-bar w3-border-bottom w3-hide-small w3-hide-medium w3-hide-large w3-theme" style="position: relative">
                <a href="#" class="w3-bar-item w3-button w3-hover-white w3-left"><img src="img/2.png" height="50" width="80" alt="Chapdeals"></a> 

                <input id="search" class="w3-margin-top w3-animate-input w3-display-topmiddle w3-center w3-round-xlarge" type="text" placeholder="<fmt:message key='Search'/>" style="width:30%">
                <a href="#" class="w3-bar-item w3-button cd-hover-pink w3-right w3-small"><i class="fa fa-heart"></i> </a>
                <a href="#" class="w3-bar-item w3-button cd-hover-pink w3-right w3-small"><i title="Sell on chapdeals" class="fa fa-shopping-cart"></i></a>
                <a href="#" class="w3-bar-item w3-button cd-hover-pink w3-right w3-small"><i class="fa fa-user-circle-o"></i></a>
            </section>

            <section id="menuBarLarge" class="w3-bar w3-border-bottom w3-hide-small w3-theme"  style="position: relative">
                <a href="#" class="w3-bar-item w3-button w3-hover-white w3-left"><img src="img/2.png" height="50" width="150" alt="Chapdeals"></a> 

                <input id="search" class="w3-margin-top w3-animate-input w3-display-topmiddle w3-center w3-round-xlarge" type="text" placeholder="<fmt:message key='Search'/>" style="width:30%">
                <a href="#" class="w3-bar-item w3-button cd-hover-pink w3-right "><i class="fa fa-heart"> wishlist</i> </a>
                <a href="#" class="w3-bar-item w3-button cd-hover-pink w3-right"><i title="Sell on chapdeals" class="fa fa-shopping-cart"> cart</i></a>
                <a href="#" class="w3-bar-item w3-button cd-hover-pink w3-right" onclick="document.getElementById('accountMediumLarge').style.visibility = 'visible'"><i class="fa fa-user-circle-o"> profile</i> </a>

            </section>



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
            </section>



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
                <a href="#" class="w3-text-black"> <img src="img/watch1.jpg" height="80" width="80" class="w3-circle"/><br> Watches</a>
                <a href="#" class="w3-text-black">  <img src="img/shoes.jpeg" height="80" width="80" class="w3-circle"/><br> Shoes</a>
                <a href="#" class="w3-text-black"> <img src="img/makeup.jpg" height="80" width="80" class="w3-circle"/><br> Make up</a>
                <a href="#" class="w3-text-black"> <img src="img/hair.jpg" height="80" width="80" class="w3-circle "/><br> Extension</a>
                <a href="#" class="w3-text-black"> <img src="img/boots.jpg" height="80" width="80" class="w3-circle"/><br> Boots</a>
                <a href="#" class="w3-text-black"> <img src="img/bouc.jpg" height="80" width="80" class="w3-circle w3-border"/><br> Earring</a>
            </section>

            <section id="products" class="w3-row-padding w3-section">

                <div class="w3-col s6 l3 w3-margin-bottom">
                    <img src="product/s1.jpg" style="width:100%">
                    <div class="w3-container">
                        <p>
                            <span class="w3-border cd-padding w3-text-grey">(62% off)</span><br>
                            <span><strong>Marks & Spencer</strong></span><br>
                            <span>Wowan regular fits Peg trousers</span><br>
                            <span class="w3-theme cd-padding"><span class="cd-strike-through">(4000 f)</span> <strong>2500 f</strong></span>

                        </p>
                    </div>
                </div>

                <div class="w3-col s6 l3 w3-margin-bottom">
                    <img src="product/s2.jpg" style="width:100%">
                    <div class="w3-container">
                        <p>
                            <span class="w3-border cd-padding w3-text-grey">(50% off)</span><br>
                            <span><strong>Marks & Spencer</strong></span><br>
                            <span>Wowan regular fits Peg trousers</span><br>
                            <span class="w3-theme cd-padding"><span class="cd-strike-through">(5000 f)</span> <strong>2500 f</strong></span>

                        </p>                
                    </div>
                </div>

                <div class="w3-col s6 l3 w3-margin-bottom">
                    <img src="product/s3.jpg" style="width:100%">
                    <div class="w3-container">
                        <p>
                            <span class="w3-border cd-padding w3-text-grey">(43% off)</span><br>
                            <span><strong>Marks & Spencer</strong></span><br>
                            <span>Wowan regular fits Peg trousers</span><br>
                            <span class="w3-theme cd-padding"><span class="cd-strike-through">(7000 f)</span> <strong>3000 f</strong></span>

                        </p>                   
                    </div>
                </div>
                <div class="w3-col s6 l3 w3-margin-bottom">
                    <img src="product/s4.jpg" style="width:100%">
                    <div class="w3-container">
                        <p>
                            <span class="w3-border cd-padding w3-text-grey">(66% off)</span><br>
                            <span><strong>Marks & Spencer</strong></span><br>
                            <span>Wowan regular fits Peg trousers</span><br>
                            <span class="w3-theme cd-padding"><span class="cd-strike-through">(6000 f)</span> <strong>4000 f</strong></span>

                        </p>                 
                    </div>
                </div>
            </section>

            <section id="li2" class="w3-row-padding w3-section">
                <div class="w3-col s6 l3 w3-margin-bottom">
                    <div class="">
                        <img src="product/s5.jpg"  style="width:100%;">
                        <div class="w3-container">
                            <p>
                                <span class="w3-border cd-padding w3-text-grey">(43% off)</span><br>
                                <span><strong>Marks & Spencer</strong></span><br>
                                <span>Wowan regular fits Peg trousers</span><br>
                                <span class="w3-theme cd-padding"><span class="cd-strike-through">(7000 f)</span> <strong>3000 f</strong></span>

                            </p>      
                        </div>
                    </div>
                </div>

                <div class="w3-col s6 l3 w3-margin-bottom">
                    <div class="">
                        <img src="product/s6.jpg" style="width:100%;">
                        <div class="w3-container">
                            <p>
                                <span class="w3-border cd-padding w3-text-grey">(37% off)</span><br>
                                <span><strong>Marks & Spencer</strong></span><br>
                                <span>Wowan regular fits Peg trousers</span><br>
                                <span class="w3-theme cd-padding"><span class="cd-strike-through">(4000 f)</span> <strong>1500 f</strong></span>

                            </p>        
                        </div>
                    </div>
                </div>

                <div class="w3-col s6 l3 w3-margin-bottom">
                    <div class="">
                        <img src="product/s7.jpg" style="width:100%">
                        <div class="w3-container">
                            <p>
                                <span class="w3-border cd-padding w3-text-grey">(66% off)</span><br>
                                <span><strong>Fashion nova</strong></span><br>
                                <span>Cut in one shoulder</span><br>
                                <span class="w3-theme cd-padding"><span class="cd-strike-through">(9000 f)</span> <strong>6000 f</strong></span>

                            </p>      
                        </div>
                    </div>
                </div>
                <div class="w3-col s6 l3 w3-margin-bottom">
                    <div class="">
                        <img src="product/s8.jpg" style="width:100%">
                        <div class="w3-container">
                            <p>
                                <span class="w3-border cd-padding w3-text-grey">(54% off)</span><br>
                                <span><strong>Fashion nova</strong></span><br>
                                <span>Mini dress</span><br>
                                <span class="w3-theme cd-padding"><span class="cd-strike-through">(7000 f)</span> <strong> 3800 f</strong></span>

                            </p>     
                        </div>
                    </div>
                </div>
            </section>


        </section>

        <script>

            var prevScrollpos = window.pageYOffset;
            window.onscroll = function () {
                var x = document.getElementById("bottomapp");
                var currentScrollPos = window.pageYOffset;
                if (prevScrollpos < currentScrollPos) {

                    if (x.className.indexOf("w3-animate-bottom") == -1)
                    {
                        document.getElementById("bottomapp").classList.add("ch-animate-opacity");

                    } else
                    {
                        document.getElementById("bottomapp").classList.replace("w3-animate-bottom", "ch-animate-opacity");

                    }
                } else {
                    document.getElementById("bottomapp").classList.replace("ch-animate-opacity", "w3-animate-bottom");
                }
                prevScrollpos = currentScrollPos;
            }

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



            




        </script>
    </body>
</html>
