<div class="w3-sidebar w3-bar-block w3-collapse w3-card w3-animate-left" style="z-index:999"  id="mySidebar">
    <article class="w3-theme-d3" style="padding: 8px 0">
        <img class="w3-circle" src="img/img_avatar.png" height="25" width="25" alt="avatar" />

        <c:if test="${sessionScope.customer.username !=null}">
            <a>Hello, ${sessionScope.customer.username}</a>
        </c:if>



        <sub class="w3-hide-large w3-right w3-large" onclick="w3_close()"> &times;</sub>

    </article>            
    <article class="w3-bar-block w3-border-bottom">
        <a href="#" class="w3-bar-item w3-button cd-hover-pink"><i title="Top deals"></i>Top deals</a>
        <a href="#" class="w3-bar-item w3-button cd-hover-pink"><i title="Upcoming deals"></i>Upcoming deals</a>

    </article>

    <dl id="menu">
        

    </dl>

</div>