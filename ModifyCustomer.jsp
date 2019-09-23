<%-- 
    Document   : ModifyCustomer
    Created on : Jul 3, 2019, 6:46:08 PM
    Author     : sidibe
--%>


<div class="w3-container w3-modal " id="modifyCustomer" style="display: none;z-index: 5">
    <div class="w3-container w3-modal-content w3-animate-zoom ">
        <div class="w3-row">
            <header>
                <h1 class="w3-center"><img  src="img/2.png"  height="120" width="200"/></h1>
            </header>
        </div>
        <p>
            <input class="ch-text w3-border-bottom " type="text" value="${sessionScope.customer.username}" id="username" style="border:0;width:100%"><i class="fa fa-id-card-o   w3-right" style=";position: relative;top:-33px;color: rgb(163,0,43)"></i>
        </p>
        <p>
            <input class="ch-text w3-border-bottom " type="text" value="${sessionScope.customer.phone}" id="phone" style="border:0;width:100%"><i class="fa fa-phone-square  w3-right" style=";position: relative;top:-33px;color: rgb(163,0,43)"></i>
        </p>

        <p>
            <input class="ch-text w3-border-bottom " type="email" value="${sessionScope.customer.email}" id="email" style="border:0;width:100%"><i class="fa fa-at  w3-right" style="position: relative;top:-33px;color: rgb(163,0,43)"></i>
        </p>
        <p>
            <input class="ch-text w3-border-bottom " type="text" value="${sessionScope.customer.dob}" id="dob" style="border:0;width:100%"><i class="fa fa-calendar  w3-right" style="position: relative;top:-33px;color: rgb(163,0,43)"></i>
        </p>
        <p>
            <input class="ch-text w3-border-bottom " type="text" value="${sessionScope.customer.address}" id="address" style="border:0;width:100%"><i class="fa fa-street-view  w3-right" style="position: relative;top:-33px;color: rgb(163,0,43)"></i>
        </p>


        <p>     
            <input class="ch-text-nacarlat  w3-border-bottom" type="password"  id="passwordField" value="${sessionScope.customer.password}" name="motdepasse" autocomplete="off" placeholder="Mot de passe" style="border:0;width:100%"><i class="fa fa-unlock-alt  w3-right" style="position: relative;top:-25px;left: -5px;color: rgb(163,0,43)"></i>
        </p>
        <input class="ch-text w3-border-bottom " type="hidden" value="${sessionScope.customer.key}" id="key" style="border:0;width:100%">


        <h1 class="w3-center">
            <label class="switch w3-center">
                <input type="checkbox">
                <span class="slider round" id="togglePasswordField" title="Montrer le mot de passe"></span>
            </label>
        </h1>


        <p class="w3-center">
            <!-- button component -->
            <button id="js-ripple-btn" class="button styl-material ch-nacarlat" onclick="updateCustomerDetails()">
                Modifier
                <svg class="ripple-obj" id="js-ripple">
                <use height="100" width="100" xlink:href="#ripply-scott" class="js-ripple"></use>
                </svg>
            </button>
            <!-- /end button component -->

        </p>

    </div>
</div>