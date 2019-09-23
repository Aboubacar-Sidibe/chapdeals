<%-- 
    Document   : Result
    Created on : Jun 25, 2019, 10:04:13 AM
    Author     : sidibe
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
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
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <c:choose>
            <c:when test="${code != null}">
                <input type="text" value="${code}" id="code"/>
            </c:when>
            <c:otherwise>
                <input type="text" value="invalid" id="code"/>
            </c:otherwise>
        </c:choose>

        <!-- The core Firebase JS SDK is always required and must be listed first -->
        <script src="https://www.gstatic.com/firebasejs/6.2.4/firebase.js"></script>

        <!-- TODO: Add SDKs for Firebase products that you want to use
             https://firebase.google.com/docs/web/setup#config-web-app -->
        <script>
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
            firebase.initializeApp(firebaseConfig);
            var database = firebase.database();
            var key = document.getElementById("code").value;

            if (key!="invalid")
            {
                database.ref("Users/" + key).update
                        (
                                {
                                    mailchecked: true
                                }
                        , function (error) {
                            if (error)
                            {
                                alert("could not");
                            } else
                            {
                                window.location.href = "chapdeal/CustomerRegistration.jsp";
                            }

                        });
            } else
            {
                alert("invalid");
            }



        </script>
    </body>
</html>
