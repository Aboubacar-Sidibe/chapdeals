<%-- 
    Document   : saveForLaterCopy
    Created on : Aug 30, 2019, 9:48:14 AM
    Author     : sidibe
--%>

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


            <div class="w3-hide-medium w3-hide-large">

                <svg id="appbar" width="0" height="0" viewBox="0 0 72 36" xmlns="http://www.w3.org/2000/svg">
                <clipPath id="appbar__cutout">
                    <path d="M36 36C55.8823 36 72 19.8823 72 0V112H0V0C0 19.8823 16.1177 36 36 36Z" />
                </clipPath>
                </svg>
                <div class=" container__example--center-fab-cutout" >

                    <div class="appbar appbar__bottom appbar__bottom--center-cut">
                        <a href="javacript:void(0)" class="appbar__bottom--fab appbar__bottom--fab-primary" title="add" aria-label="Add">
                            <svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" version="1.1" id="Capa_1" x="0px" y="0px" viewBox="0 0 19.25 19.25" style="enable-background:new 0 0 19.25 19.25;" xml:space="preserve" width="16px" height="16px"><g><g>
                            <g id="Layer_1_107_">
                            <g>
                            <path d="M19.006,2.97c-0.191-0.219-0.466-0.345-0.756-0.345H4.431L4.236,1.461     C4.156,0.979,3.739,0.625,3.25,0.625H1c-0.553,0-1,0.447-1,1s0.447,1,1,1h1.403l1.86,11.164c0.008,0.045,0.031,0.082,0.045,0.124     c0.016,0.053,0.029,0.103,0.054,0.151c0.032,0.066,0.075,0.122,0.12,0.179c0.031,0.039,0.059,0.078,0.095,0.112     c0.058,0.054,0.125,0.092,0.193,0.13c0.038,0.021,0.071,0.049,0.112,0.065c0.116,0.047,0.238,0.075,0.367,0.075     c0.001,0,11.001,0,11.001,0c0.553,0,1-0.447,1-1s-0.447-1-1-1H6.097l-0.166-1H17.25c0.498,0,0.92-0.366,0.99-0.858l1-7     C19.281,3.479,19.195,3.188,19.006,2.97z M17.097,4.625l-0.285,2H13.25v-2H17.097z M12.25,4.625v2h-3v-2H12.25z M12.25,7.625v2     h-3v-2H12.25z M8.25,4.625v2h-3c-0.053,0-0.101,0.015-0.148,0.03l-0.338-2.03H8.25z M5.264,7.625H8.25v2H5.597L5.264,7.625z      M13.25,9.625v-2h3.418l-0.285,2H13.25z" data-original="#030104" class="active-path" data-old_color="#030104" fill="#FFFFFF"/>
                            <circle cx="6.75" cy="17.125" r="1.5" data-original="#030104" class="active-path" data-old_color="#030104" fill="#FFFFFF"/>
                            <circle cx="15.75" cy="17.125" r="1.5" data-original="#030104" class="active-path" data-old_color="#030104" fill="#FFFFFF"/>
                            </g>
                            </g>
                            </g></g>
                            </svg>
                        </a>

                        <div class="appbar__bottom--normal" id="bottomapp1" onclick="w3_open()"s>
                            <a href="javascript:void(0)">
                                <svg fill="currentColor" viewBox="0 0 24 24" width="24" height="24"><path d="M3,6H21V8H3V6M3,11H21V13H3V11M3,16H21V18H3V16Z"/></svg>
                            </a>
                        </div>

                        <div class="appbar__bottom--cutout" id="bottomapp2"></div>

                        <div class="appbar__bottom--normal flex--right" id="bottomapp3">

                            <a href="javascript:void(0)" >

                                <svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" version="1.1" id="Capa_1" x="0px" y="0px" viewBox="0 0 51.997 51.997" style="enable-background:new 0 0 51.997 51.997;" xml:space="preserve" width="16px" height="16px"><g><path d="M51.911,16.242C51.152,7.888,45.239,1.827,37.839,1.827c-4.93,0-9.444,2.653-11.984,6.905  c-2.517-4.307-6.846-6.906-11.697-6.906c-7.399,0-13.313,6.061-14.071,14.415c-0.06,0.369-0.306,2.311,0.442,5.478  c1.078,4.568,3.568,8.723,7.199,12.013l18.115,16.439l18.426-16.438c3.631-3.291,6.121-7.445,7.199-12.014  C52.216,18.553,51.97,16.611,51.911,16.242z" data-original="#000000" class="active-path" data-old_color="#000000" fill="#FFFAFA"/></g> </svg>
                            </a>

                            <a href="javascript:void(0)" onclick="document.getElementById('accountSmall').style.display = 'block'">
                                <svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" version="1.1" id="Capa_1" x="0px" y="0px" viewBox="0 0 350 350" style="enable-background:new 0 0 350 350;" xml:space="preserve" width="16px" height="16px"><g><g>
                                <path d="M175,171.173c38.914,0,70.463-38.318,70.463-85.586C245.463,38.318,235.105,0,175,0s-70.465,38.318-70.465,85.587   C104.535,132.855,136.084,171.173,175,171.173z" data-original="#000000" class="active-path" data-old_color="#000000" fill="#FFFFFF"/>
                                <path d="M41.909,301.853C41.897,298.971,41.885,301.041,41.909,301.853L41.909,301.853z" data-original="#000000" class="active-path" data-old_color="#000000" fill="#FFFFFF"/>
                                <path d="M308.085,304.104C308.123,303.315,308.098,298.63,308.085,304.104L308.085,304.104z" data-original="#000000" class="active-path" data-old_color="#000000" fill="#FFFFFF"/>
                                <path d="M307.935,298.397c-1.305-82.342-12.059-105.805-94.352-120.657c0,0-11.584,14.761-38.584,14.761   s-38.586-14.761-38.586-14.761c-81.395,14.69-92.803,37.805-94.303,117.982c-0.123,6.547-0.18,6.891-0.202,6.131   c0.005,1.424,0.011,4.058,0.011,8.651c0,0,19.592,39.496,133.08,39.496c113.486,0,133.08-39.496,133.08-39.496   c0-2.951,0.002-5.003,0.005-6.399C308.062,304.575,308.018,303.664,307.935,298.397z" data-original="#000000" class="active-path" data-old_color="#000000" fill="#FFFFFF"/>
                                </g></g> 
                                </svg>

                            </a>



                            <a href="javascript:void(0)">
                                <svg fill="currentColor" viewBox="0 0 24 24" width="16" height="16"><path d="M12,16A2,2 0 0,1 14,18A2,2 0 0,1 12,20A2,2 0 0,1 10,18A2,2 0 0,1 12,16M12,10A2,2 0 0,1 14,12A2,2 0 0,1 12,14A2,2 0 0,1 10,12A2,2 0 0,1 12,10M12,4A2,2 0 0,1 14,6A2,2 0 0,1 12,8A2,2 0 0,1 10,6A2,2 0 0,1 12,4Z"/></svg>
                            </a>

                        </div>


                    </div>
                </div>
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
                <a href="#" class="w3-bar-item w3-button cd-hover-pink w3-right " onclick="document.getElementById('accountMediumLarge').style.display = 'block'"><i class="fa fa-user-circle-o"></i> Profile</a>
            </section>

            <section class="w3-bar-block w3-hide-small w3-col l3 w3-right w3-animate-bottom w3-card-32" id="accountMediumLarge" style="display: none">

                <header class="w3-row w3-theme w3-center">     
                    <c:if test="${sessionScope.customer.username !=null}">
                        Welcome ${sessionScope.customer.username},
                    </c:if>
                    Account settings  <span class="w3-btn w3-card w3-hide-small w3-right w3-large" onclick="document.getElementById('accountMediumLarge').style.display = 'none'"> &times;</span>
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
                    <a href="messaging/ClientChatting.jsp">
                        <div class="w3-col s2  w3-left">
                            <span  ><i class="fa fa-envelope w3-text-theme"></i></span>
                        </div>


                        <div class="w3-col s10  w3-center">
                            <span >Contact us</span>  
                        </div>
                    </a>
                </article>

                <c:if test="${sessionScope.customer.phone != null}">
                    <article class="w3-row w3-bar-item">

                        <a href="CustomerDetails.jsp">
                            <div class="w3-col s2  w3-left">
                                <span  ><i class="fa fa-edit w3-text-theme"></i></span>
                            </div>
                            <div class="w3-col s10  w3-center">
                                <span>Your details</span>  
                            </div>
                        </a>


                    </article>
                </c:if>

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


                    <c:choose>
                        <c:when test="${sessionScope.customer.username !=null}">
                            <a href="./CustomerLogout">

                                <div class="w3-col s2  w3-left">
                                    <span  ><i class="fa fa-sign-out w3-text-white"></i></span>
                                </div>
                                <div class="w3-col s10  w3-center">
                                    <span>Sign Out</span>  
                                </div> 
                            </a>  
                        </c:when>
                        <c:otherwise>

                            <a href="CustomerLogin.jsp">

                                <div class="w3-col s2  w3-left">
                                    <span  ><i class="fa fa-sign-in w3-text-white"></i></span>
                                </div>
                                <div class="w3-col s10  w3-center">
                                    <span>Sign In</span>  
                                </div> 
                            </a>          
                        </c:otherwise>
                    </c:choose>


                </footer>



            </section>

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

        <script  src="https://www.gstatic.com/firebasejs/6.3.3/firebase-app.js"></script>
        <script  src="https://www.gstatic.com/firebasejs/6.3.3/firebase-database.js"></script>
        <script  src="https://www.gstatic.com/firebasejs/6.3.3/firebase-messaging.js"></script>
        <script src="https://www.gstatic.com/firebasejs/6.3.4/firebase-storage.js"></script>

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

        </script>
        <script src="js/SidebarListener.js"></script>
    </body>
</html>
