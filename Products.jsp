<%-- 
    Document   : products
    Created on : Aug 31, 2019, 6:34:10 PM
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
        <!-- w3 !-->
        <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
        <link rel="stylesheet" href="css/w3.css">

        <link rel="stylesheet"  href="css/main_theme.css"/>
        <script  src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>

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
            @media only screen and (max-width: 600px) 
            {
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
                .responsiveImg img 
                {
                    height: 248px;
                    width: 100%;
                }
            } 
            /* Small devices (portrait tablets and large phones, 600px and up) */
            @media only screen and (min-width: 600px) 
            {
                #banner  img
                {
                    width: 100%;
                    height: 400px;
                }

                .responsiveImg img
                {
                    height: 282px;
                    width: 100%;
                }
            }

            /* Medium devices (landscape tablets, 768px and up) */
            @media only screen and (min-width: 768px) 
            {
                #banner  img
                {
                    width: 100%;
                    height: 400px;
                }
                .responsiveImg img
                {
                    height: 282px;
                    width: 100%;
                }
            }

            /* Large devices (laptops/desktops, 992px and up) */
            @media only screen and (min-width: 992px) {
                .responsiveImg img
                {
                    height: 282px;
                    width: 100%;
                }
            }

            /* Extra large devices (large laptops and desktops, 1200px and up) */
            @media only screen and (min-width: 1200px) { /*1265 a 983 , 601 a 993=m*/
                .responsiveImg img
                {
                    height: 282px;
                    width: 100%;
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
                padding: 0;
            }
            .item3,.item5,.item7,.item9,.item11,.item13
            {
                grid-column-start: 2;
                grid-column-end: 4;
            }

            .w3-col.s1{width:8.33333%}.w3-col.s2{width:16.66666%}.w3-col.s3{width:24.99999%}.w3-col.s4{width:33.33333%}
            .w3-col.s5{width:41.66666%}.w3-col.s6{width:49.99999%}.w3-col.s7{width:58.33333%}.w3-col.s8{width:66.66666%}
            .w3-col.s9{width:74.99999%}.w3-col.s10{width:83.33333%}.w3-col.s11{width:91.66666%}.w3-col.s12{width:99.99999%}

            @media (min-width:601px){
                .w3-col.m1{width:8.33333%}.w3-col.m2{width:16.66666%}.w3-col.m3,.w3-quarter{width:24.99999%}.w3-col.m4,.w3-third{width:33.33333%}
                .w3-col.m5{width:41.66666%}.w3-col.m6,.w3-half{width:49.99999%}.w3-col.m7{width:58.33333%}.w3-col.m8,.w3-twothird{width:66.66666%}
                .w3-col.m9,.w3-threequarter{width:74.99999%}.w3-col.m10{width:83.33333%}.w3-col.m11{width:91.66666%}.w3-col.m12{width:99.99999%}
            }

            @media (min-width:993px)
            {
                .w3-col.chl1{width:20%}
                .w3-col.chl2{width:40%}
                .w3-col.chl3{width:60%}
                .w3-col.chl4{width:80%}
                .w3-col.chl5{width:100%}
            }


            .animate-heart
            {
                -webkit-animation-name: example; /* Safari 4.0 - 8.0 */
                -webkit-animation-duration: 1s; /* Safari 4.0 - 8.0 */
                animation-name: example;
                animation-duration: .3s;
            }
            /* Safari 4.0 - 8.0 */
            @-webkit-keyframes example {
                from {transform: scale(0,0)}
                to {transform: scale(2,2)}
            }

            /* Standard syntax */
            @keyframes example {
                from {transform: scale(0.7,0.7)}
                to {transform: scale(1.1,1.1)}
            }








        </style>
        <title>Chapdeals achat en ligne</title>
    </head>

    <body  onresize="myFunction()">

        <%@include file="SideBar.jsp"%>
        <%@include file="AccountModal.jsp"%>


        <section class="w3-main"  id="main"  style="margin-left:200px">


            <%@include file="ActionBarMediumScreen.jsp"%>
            <%@include file="ActionBarLargeScreen.jsp"%>
            <%@include file="MenuSmallScreen.jsp"%>
            <%@include file="MenuMLScreen.jsp"%>
            <%@include  file="AccountSettings.jsp"%>

          



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
                <p id="demo">size</p>

                <a href="ProductDetails.html?category=Gadgets&subcategory=Smart Wearables" class="w3-text-black"> <img src="img/watch1.jpg" height="80" width="80" class="w3-circle"/><br> Watches</a>
                <a href="ProductDetails.html?category=Footwear&subcategory=shoes" class="w3-text-black">  <img src="img/shoes.jpeg" height="80" width="80" class="w3-circle"/><br> Shoes</a>
                <a href="ProductDetails.html?category=Beauty and Personal Care&subcategory=Makeup" class="w3-text-black"> <img src="img/makeup.jpg" height="80" width="80" class="w3-circle"/><br> Make up</a>
                <a href="ProductDetails.html?category=Beauty and Personal Care&subcategory=Extension" class="w3-text-black"> <img src="img/hair.jpg" height="80" width="80" class="w3-circle "/><br> Extension</a>
                <a href="ProductDetails.html?category=Footwear&subcategory=Boots" class="w3-text-black"> <img src="img/boots.jpg" height="80" width="80" class="w3-circle"/><br> Boots</a>
                <a href="ProductDetails.html?category=Jewellery&subcategory=Earrings" class="w3-text-black"> <img src="img/bouc.jpg" height="80" width="80" class="w3-circle w3-border"/><br> Earring</a>
            </section>


            <section id="products" class="w3-row-padding w3-section">


            </section>


            <input type="hidden" id="u" value="${sessionScope.customer.key}"/>
        </section>

        <script  src="https://www.gstatic.com/firebasejs/6.3.3/firebase-app.js"></script>
        <script  src="https://www.gstatic.com/firebasejs/6.3.3/firebase-database.js"></script>
        <script async="" src="https://www.gstatic.com/firebasejs/6.3.3/firebase-messaging.js"></script>
        <script async="" src="https://www.gstatic.com/firebasejs/6.3.4/firebase-storage.js"></script>

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

                    var menu = document.getElementById("menu");

                    var menuRef = firebase.database().ref('Menu/');


                    menuRef.on('value', function (snapshot) {
                        menu.innerHTML = "";
                        snapshot.forEach(function (childSnapshot) {
                            var childKey = childSnapshot.key;
                            var childData = childSnapshot.val();

                            var dt = document.createElement("dt");
                            dt.setAttribute("onclick", "menuAccordion('" + childKey + "')");
                            dt.setAttribute("class", "w3-margin-bottom w3-theme-l5");
                            var categoryText = document.createTextNode(childKey);
                            dt.appendChild(categoryText);
                            var i = document.createElement("i");
                            i.setAttribute("class", "fa fa-plus-circle w3-right w3-text-pink w3-margin-right");
                            dt.appendChild(i);
                            menu.appendChild(dt);

                            var article = document.createElement("ARTICLE");
                            article.setAttribute("id", childKey);
                            article.setAttribute("class", "w3-hide w3-animate-opacity w3-margin-bottom");
                            for (var key in childData) {
                                if (key != "createdAt")
                                {
                                    var a = document.createElement("a");
                                    a.setAttribute("class", "w3-bar-item w3-button cd-hover-pink");
                                    a.setAttribute("id", childKey + "/" + childData[key]);
                                    if (childKey.indexOf("&") !== -1)
                                        childKey = childKey.replace(/&/g, "and");

                                    a.href = "Products?category=" + childKey + "&subcategory=" + childData[key];
                                    a.innerText = "-" + childData[key];
                                    article.appendChild(a);
                                }

                            }
                            menu.appendChild(article);

                        });
                    });


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


                    $(document).ready(function () {

                        var category = "${category}";
                        var subcategory = "${subcategory}";

                        var swap = category;

                        //alert("category is : " + category);
                        //alert("swap is : " + swap);
                        //alert("subcategory is: " + subcategory);

                        onItem = firebase.database().ref("Items/" + category + "/" + subcategory);
                        onItem.on('value', function (snapshot)
                        {

                            document.getElementById("products").innerHTML = "";
                            //alert(snapshot.key);

                            snapshot.forEach(function (childSnapshot) {
                                var childKey = childSnapshot.key;
                                var childData = childSnapshot.val();
                                var fullKey = swap + "/" + subcategory + "/" + childKey;
                                var imagesDownloadLinksArray = [];
                                //alert("childKey:" + childKey);
                                //alert("childData:" + childData);

                                var imagesRef = firebase.database().ref("Items/" + fullKey + "/images");
                                imagesRef.once("value", function (imagesnapshot) {

                                    imagesnapshot.forEach(function (imagechildSnapshot) {
                                        var imagechildData = imagechildSnapshot.val();
                                        imagesDownloadLinksArray.push(imagechildData['url']);

                                    });

                                    var itemsContainer = document.getElementById("products");

                                    var div = document.createElement("div");
                                    div.setAttribute("id", fullKey);
                                    div.setAttribute("class", "w3-col s6 m4 chl1 w3-margin-bottom responsiveImg");
                                    div.setAttribute("title", childData["smalldescription"]);

                                    var img = document.createElement("img");
                                    img.setAttribute("src", imagesDownloadLinksArray[0]);
                                    div.appendChild(img);

                                    var container = document.createElement("div");
                                    container.setAttribute("class", "w3-row");

                                    var p = document.createElement("p");
                                    //p.setAttribute("class","w3-border");
                                    p.setAttribute("style", "height:125px;width:100%");


                                    var span1 = document.createElement("span");
                                    var br = document.createElement("BR");
                                    span1.setAttribute("class", "w3-border cd-padding w3-text-grey");
                                    span1.innerHTML = "(" + childData["discount"] + "% off)";
                                    p.appendChild(span1);

                                    let heart = document.createElement("i");
                                    heart.setAttribute("class", "fa fa-heart-o w3-right w3-text-grey w3-large w3-hover-text-theme");
                                    heart.setAttribute("title", "add to whish list");
                                    heart.setAttribute("onclick", "addToWishList(this,this.parentNode.parentNode.parentNode.id)");

                                    let cart = document.createElement("i");
                                    cart.setAttribute("class", "fa fa-shopping-bag w3-right w3-text-grey w3-margin-right w3-large w3-hover-text-theme");
                                    cart.setAttribute("title", "add to cart");
                                    cart.setAttribute("onclick", "addToCart(this,this.parentNode.parentNode.parentNode.id)");
                                    p.appendChild(heart);
                                    p.appendChild(cart);

                                    p.appendChild(br);


                                    var span2 = document.createElement("span");
                                    var br = document.createElement("BR");
                                    span2.innerHTML = "<strong>" + childData["brand"] + "</strong>";
                                    p.appendChild(span2);
                                    p.appendChild(br);

                                    var span3 = document.createElement("span");
                                    var br = document.createElement("BR");
                                    span3.innerHTML = childData["smalldescription"];
                                    span3.setAttribute("style", "width:100%");
                                    p.appendChild(span3);

                                    p.appendChild(br);

                                    var span4 = document.createElement("span");
                                    span4.setAttribute("class", "w3-theme cd-padding");
                                    var span5 = document.createElement("span");
                                    span5.setAttribute("class", "cd-strike-through");
                                    span5.innerHTML = "(" + childData["mrp"] + " f)";
                                    span4.appendChild(span5);
                                    var strong = document.createElement("strong");
                                    strong.innerHTML = " " + childData["price"] + " f";
                                    span4.appendChild(strong);
                                    p.appendChild(span4);


                                    container.appendChild(p);

                                    div.appendChild(container);


                                    itemsContainer.appendChild(div);


                                });

                            });

                        });
                    });

                    function myFunction() {
                        var w = window.outerWidth;
                        var h = window.outerHeight;
                        var txt = "Window size: width=" + w + ", height=" + h;
                        document.getElementById("demo").innerHTML = txt;
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

                    //add to wishlist
                    let addToWishList = (id, productFullPath) => {



            <c:choose>
                <c:when test="${sessionScope.customer.key !=null}">
                        id.classList.replace("w3-text-grey", "w3-text-theme");
                        id.classList.replace('fa-heart-o', 'fa-heart');
                        id.classList.add("animate-heart");
                        let itemKey = productFullPath.split("/")[2];
                        let userId = '${sessionScope.customer.key}';


                        itemsRef = firebase.database().ref("WishList/" + userId + "/" + itemKey);
                        itemsRef.update({
                            createdAt: firebase.database.ServerValue.TIMESTAMP,
                            pathToItem: productFullPath

                        }, function (error) {
                            if (error)
                            {
                                console.log(error);
                            } else
                            {
                                /*
                                 firebase.database().ref("WishList/" + userId).once("value")
                                 .then(function (snapshot) {
                                 
                                 document.getElementById("wishListItemCount").innerHTML = snapshot.numChildren();
                                 
                                 });*/

                            }

                        });
                </c:when>
                <c:otherwise>
                        window.location.href = "./CustomerLogin.jsp";

                </c:otherwise>
            </c:choose>


                    }


                    //add to cart
                    let addToCart = (id, productFullPath) => {



            <c:choose>
                <c:when test="${sessionScope.customer.key !=null}">
                        id.classList.replace("w3-text-grey", "w3-text-theme");
                        id.classList.add("animate-heart");
                        let itemKey = productFullPath.split("/")[2];
                        let userId = '${sessionScope.customer.key}';


                        itemsRef = firebase.database().ref("Cart/" + userId + "/" + itemKey);
                        itemsRef.update({
                            createdAt: firebase.database.ServerValue.TIMESTAMP,
                            pathToItem: productFullPath

                        }, function (error) {
                            if (error)
                            {
                                console.log(error);
                            } else
                            {

                            }

                        });
                </c:when>
                <c:otherwise>
                        window.location.href = "./CustomerLogin.jsp";

                </c:otherwise>
            </c:choose>


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
    </body>
</html>
