<%-- 
    Document   : longPress
    Created on : Sep 19, 2019, 10:15:50 PM
    Author     : sidibe
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!doctype html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>taphold demo</title>
        <link rel="stylesheet" href="//code.jquery.com/mobile/1.5.0-alpha.1/jquery.mobile-1.5.0-alpha.1.min.css">
        <script src="//code.jquery.com/jquery-3.2.1.min.js"></script>
        <script src="//code.jquery.com/mobile/1.5.0-alpha.1/jquery.mobile-1.5.0-alpha.1.min.js"></script>
        <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">

        <style>
            html, body { padding: 0; margin: 0; }
            html, .ui-mobile, .ui-mobile body {
                height: 85px;
            }
            .ui-mobile, .ui-mobile .ui-page {
                min-height: 85px;
            }
            #nav {
                font-size: 200%;
                width:17.1875em;
                margin:17px auto 0 auto;
            }
            #nav a {
                color: #777;
                border: 2px solid #777;
                background-color: #ccc;
                padding: 0.2em 0.6em;
                text-decoration: none;
                float: left;
                margin-right: 0.3em;
            }
            #nav a:hover {
                color: #999;
                border-color: #999;
                background: #eee;
            }
            #nav a.selected,
            #nav a.selected:hover {
                color: #0a0;
                border-color: #0a0;
                background: #afa;
            }
            div.box {
                width: 3em;
                height: 3em;
                background-color: #108040;
            }
            div.box.taphold {
                background-color: #7ACEF4;
            }
        </style>
    </head>
    <body>

        <h3>Long press the square for 750 milliseconds to see the above code applied:</h3>
        <div class="b w3-row-padding"><img src="../images/1.jpg" height="250" width="250"></div>

        <div id="t" class="w3-row-padding w3-margin-top" style="display: none">
            <div class="w3-third">
                <div class="w3-card">
                    <img src="../img/2.jpg" height="250" width="250">
                    <div class="w3-container">
                        <h5>5 Terre</h5>
                    </div>
                </div>
            </div>

            <div class="w3-third">
                <div class="w3-card">
                    <img src="../img/2.jpg" height="250" width="250">
                    <div class="w3-container">
                        <h5>Monterosso</h5>
                    </div>
                </div>
            </div>

            <div class="w3-third">
                <div class="w3-card">
                    <img src="../img/2.jpg" height="250" width="250">
                    <div class="w3-container">
                        <h5>Vernazza</h5>
                    </div>
                </div>
            </div>
        </div>

        

        <script>
            $(function () {
                $("div.b").bind("taphold", tapholdHandler);

                function tapholdHandler(event) {
                   document.getElementById("t").style.display="block";
                }
            });
        </script>

    </body>
</html