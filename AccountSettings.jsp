<%-- 
    Document   : AccountSettings
    Created on : Sep 21, 2019, 12:36:30 PM
    Author     : sidibe
--%>

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
                <span>Notifications</span>  
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
