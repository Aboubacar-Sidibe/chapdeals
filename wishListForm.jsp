<%-- 
    Document   : wishListForm
    Created on : Jun 24, 2019, 11:05:32 AM
    Author     : sidibe
--%>

<div id="wishList" class=' w3-modal w3-center w3-container w3-card-32  w3-animate-opacity w3-display-middle w3-border' style=" border:solid 5px black;display: none;z-index: 99;font-family:'Times New Roman' ">
    <p id="wishListfeedback"></p>
    <div class="w3-modal-content">
        <span id="closeWishList"
              class="w3-button w3-display-topright">&times;</span>
        <h2 class="w3-center w3-text-black">Tell us what you want, We will get it for you.</h2>

        <form class="w3-container"  >
            <p>
                <input autocomplete="off"  class="w3-text-black w3-border-bottom " id="nom" name="nom" type="text" placeholder="Your contact number" style="background: rgba(0,0,0,0.01);border:0;width:100%;"><i class="fa fa-child  w3-right" style="position: relative;top:-33px;color: rgb(163,0,43)"></i>
            </p><br>

            <p>     
                <input  class=" w3-text-black w3-border-bottom" name="wish" type="text"  id="item"  placeholder="Name of the item" style="background: rgba(0,0,0,0.01);border:0;width:100%"><i class="fa fa-unlock-alt  w3-right" style="position: relative;top:-25px;font-size:22px;color: rgb(163,0,43)"></i>
            </p>
            <p>     
                <input  class=" w3-text-black w3-border-bottom" name="wish" type="text"  id="description"  placeholder="Description of the item" style="background: rgba(0,0,0,0.01);border:0;width:100%"><i class="fa fa-unlock-alt  w3-right" style="position: relative;top:-25px;font-size:22px;color: rgb(163,0,43)"></i>
            </p>

            <p id="identifier" class="btn btn-3 btn-3e   w3-card-4 w3-margin-bottom w3-text-white" style="background: rgb(163,0,43)" name="action" onclick="sendWishListRequest()">Demander<i class="fa fa-sign-in" style="font-size:24px;position: relative;right:-90px"></i></p>
        </form>
    </div>
</div>