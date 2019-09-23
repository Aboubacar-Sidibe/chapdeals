<%-- 
    Document   : MenuMLScreen
    Created on : Sep 21, 2019, 12:17:58 PM
    Author     : sidibe
--%>

<section id="menuBarLarge" class="w3-bar w3-border-bottom w3-hide-small w3-theme"  style="position: relative">
    <a href="#" class="w3-bar-item w3-button w3-hover-white w3-left"><img src="img/2.png" height="50" width="150" alt="Chapdeals"></a> 
    <input id="search" class="w3-margin-top w3-animate-input w3-display-topmiddle w3-center w3-round-xlarge" type="text" placeholder="<fmt:message key='Search'/>" style="width:30%">
    <c:choose>
        <c:when test="${sessionScope.customer.key!=null}">
            <a href="WishList.jsp" class="w3-bar-item w3-button cd-hover-pink w3-right "><i class="fa fa-heart"><sup id="wishListCountMeduimScreen" class="w3-medium"></sup> wishlist</i> </a>
            <a href="Cart.jsp" class="w3-bar-item w3-button cd-hover-pink w3-right"><i title="Sell on chapdeals" class="fa fa-shopping-cart"><sup id="wishListCountLargeScreen" class="w3-medium"></sup> cart</i></a>

        </c:when>
        <c:otherwise>
            <a href="CustomerLogin.jsp" class="w3-bar-item w3-button cd-hover-pink w3-right "><i class="fa fa-heart"> wishlist</i> </a>
            <a href="Cart.jsp" class="w3-bar-item w3-button cd-hover-pink w3-right"><i title="Sell on chapdeals" class="fa fa-shopping-cart"> cart</i></a>

        </c:otherwise>
    </c:choose>




    <a href="#" class="w3-bar-item w3-button cd-hover-pink w3-right " onclick="document.getElementById('accountMediumLarge').style.display = 'block'"><i class="fa fa-user-circle-o"></i> Profile</a>
</section>