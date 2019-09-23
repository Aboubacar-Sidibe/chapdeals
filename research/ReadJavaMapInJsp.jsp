<%-- 
    Document   : ReadJavaMapInJsp
    Created on : Aug 14, 2019, 6:35:55 PM
    Author     : sidibe
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <fieldset class="w3-row-padding w3-border-0 w3-margin-bottom w3-margin-bottom w3-margin-top">


            <div class="custom-select w3-half">

                <label class="w3-text-teal">Choose a  category</label>
                <select id="ddlViewBy" name="category" onchange="chooseSousCat()">
                    <option selected="" value="category">Choose a category</option>
                    <c:forEach  var="map" items="${map}">
                        <option value="${map.key}">${map.key}</option>
                    </c:forEach>

                </select>

                <c:forEach  var="map" items="${map}">

                    <select  name="subcategory" class="subcategories" id="${map.key}" style="display: none">
                        <c:forEach var="mapvalue" items="${map.value}">
                            <option value="${mapvalue}">${mapvalue}</option>

                        </c:forEach>

                    </select>

                </c:forEach>



            </div>


            <div class="custom-select w3-half w3-animate-bottom" id="sub" style="display: none"></div>




        </fieldset>

    </body>
</html>
