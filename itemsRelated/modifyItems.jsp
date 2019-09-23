<%-- 
    Document   : modifyItems
    Created on : Aug 25, 2019, 11:19:40 AM
    Author     : sidibe
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
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
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta name="description" content="Achat en ligne, Online shopping"/>
        <meta name="keywords" content="Achat, shopping, electronic"/>
        <meta name="author" content="Sidibe"/>
        <link rel="shortcut icon" href="img/HGC.jpeg">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/pretty-checkbox@3.0/dist/pretty-checkbox.min.css"/>
        <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
        <link rel="stylesheet" href="../css/w3.css"/>
        <link rel="stylesheet" href="../css/admin.css"/>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css"/>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>

        <title>CHAPDEAL</title>
        <style>
            #fileButton {
                opacity: 0;
                position: absolute;
                z-index: -1;
            }

            select {
                -webkit-appearance: none;
                -moz-appearance: none;
                appearance: none; /* remove default arrow */
                background: teal;
                padding: 5px;
                color: white;
                width: 100%;
                margin: auto;
                width: 40%;
                border-radius: 15px;
                box-shadow: 0 4px 10px 0 rgba(0, 0, 0, 0.2), 0 4px 20px 0 rgba(0, 0, 0, 0.19);

            }

            select::-ms-expand {
                display: none; /* hide the default arrow in ie10 and ie11 */
            }

            /* CAUTION: IE hackery ahead */
            select::-ms-expand {
                display: none; /* remove default arrow on ie10 and ie11 */
            }

            /* target Internet Explorer 9 to undo the custom arrow */
            @media screen and (min-width: 0\0
            ) {
                select {
                    background: none \9;
                    padding: 5px \9;
                }
            }

            .inputfile:focus + label {
                outline: 1px dotted #000;
                outline: -webkit-focus-ring-color auto 5px;
            }

            /* Responsive navigation menu (for mobile devices) */
            @media screen and (max-width: 600px) {
                #notifBar {
                    margin-left: 0;

                }
                #notifications
                {
                    margin-left: -250px;

                    width:80%;
                }





            }

            .col-container {
                display: table;
                width: 100%;
            }
            .col {
                display: table-cell;
                padding: 1px
            }

            #volume 
            {
                border: none;
                border-bottom: 1px solid black;
            }
            #volume:focus
            {
                outline: none;
            }

            .thumb {
                height: 75px;
                border: 1px solid #000;
                margin: 10px 5px 0 0;
            }

            .ch-blue-gr{
                background: #11998e;  /* fallback for old browsers */
                background: -webkit-linear-gradient(to bottom, #38ef7d, #11998e);  /* Chrome 10-25, Safari 5.1-6 */
                background: linear-gradient(to bottom, #38ef7d, #11998e); /* W3C, IE 10+/ Edge, Firefox 16+, Chrome 26+, Opera 12+, Safari 7+ */

            }

            .ch-blue-g
            {
                border: 1px solid #c31432;
            }
            .ch-delete
            {
                background: #c31432;  /* fallback for old browsers */
                background: -webkit-linear-gradient(to top, #240b36, #c31432);  /* Chrome 10-25, Safari 5.1-6 */
                background: linear-gradient(to top, #240b36, #c31432); /* W3C, IE 10+/ Edge, Firefox 16+, Chrome 26+, Opera 12+, Safari 7+ */

            }



        </style>
    </head>
    <body>
        <section id="modifyProduct" class=" w3-animate-bottom w3-margin-top sectionToHide" style="overflow:scroll; -webkit-overflow-scrolling:touch;">
            <div id="succesItem" class="w3-modal">
                <div class="w3-modal-content">
                    <div class="w3-container">
                        <div class="w3-panel w3-pale-green w3-border">
                            <h3>Success!😍</h3>
                            <p>Item modified successfully.</p>
                        </div>
                    </div>
                </div>
            </div>
            <div id="succesItemDelete" class="w3-modal">
                <div class="w3-modal-content">
                    <div class="w3-container">
                        <div class="w3-panel w3-pale-green w3-border">
                            <h3>Success!😍</h3>
                            <p>Item deleted successfully.</p>
                        </div>
                    </div>
                </div>
            </div>
            <section id="mandatoryfields" class="w3-container w3-margin  w3-white w3-card-4 ">
                <header>
                    <div class="w3-container ">
                        <h2 class="w3-center">Modify new item</h2>
                        <h5 class="w3-center w3-text-blue">Choose item location</h5>

                    </div>
                </header>

                <fieldset class="w3-margin-bottom w3-border-pink w3-gray">



                    <fieldset class="w3-row-padding w3-border-0 w3-margin-bottom w3-margin-bottom w3-margin-top w3-border-theme">



                        <div class="custom-select ">

                            <label class="w3-text-teal">Choose a  category</label>

                            <select id="category" class="w3-light-grey w3-border-pink" name="category" onchange="fil(this.value)">
                                <option selected="" value="category">Loading...</option>


                            </select>


                            <select  name="subcategory" class="w3-light-grey w3-border-pink" id="subcategory">
                                <option selected="" value="subcategory">waiting for you to choose a category...</option>

                            </select>
                            <select name="subcategoryhelper" id="subcategoryhelper" style="visibility: hidden">

                            </select>
                            <p class="w3-center">
                                <button class="w3-pink  w3-btn w3-card-4" onclick="getItemsByCategoryAndSubCategory()">Show items</button>
                            </p>







                        </div>



                        <div class="custom-select w3-half w3-animate-bottom" id="sub" style="display: none"></div>




                    </fieldset>





                </fieldset>

            </section>
        </section>




        <section class="w3-row-padding w3-margin-top " id="items">







        </section>
















        <script  src="https://www.gstatic.com/firebasejs/6.3.3/firebase-app.js"></script>
        <script  src="https://www.gstatic.com/firebasejs/6.3.3/firebase-database.js"></script>
        <script  src="https://www.gstatic.com/firebasejs/6.3.3/firebase-messaging.js"></script>
        <script src="https://www.gstatic.com/firebasejs/6.3.4/firebase-storage.js"></script>
        <script>
                                    // Your web app's Firebase configuration
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

                                    Menu = firebase.database().ref("Menu");
                                    Menu.on('value', function (snapshot)
                                    {
                                        document.getElementById("category").innerHTML = "";
                                        snapshot.forEach(function (childSnapshot) {

                                            var childKey = childSnapshot.key;
                                            var childData = childSnapshot.val();


                                            var category = document.getElementById("category");
                                            var option = document.createElement("option");
                                            option.setAttribute("value", childKey);
                                            option.innerHTML = childKey;
                                            category.appendChild(option);

                                            var subcategoryhelper = document.getElementById("subcategoryhelper");
                                            for (var key in childData)
                                            {
                                                if (key != "createdAt")
                                                {
                                                    var option = document.createElement("option");
                                                    option.setAttribute("value", childData[key]);
                                                    option.innerHTML = childData[key];
                                                    option.setAttribute("parent", childKey);
                                                    subcategoryhelper.appendChild(option);
                                                }


                                            }


                                        });
                                    });

                                    function whatToShow(id)
                                    {
                                        var x = document.getElementById("subcategoryhelper");
                                        var sub = [];
                                        for (var i = 0; i < x.length; i++)
                                        {
                                            var att = x[i].getAttribute("parent");
                                            if (att == id)
                                                sub.push(x[i].value);
                                        }
                                        //console.log(sub.toString());
                                        return sub;
                                    }

                                    function fil(id, idOfSubCategorySelectBox)
                                    {
                                        var sub = whatToShow(id);
                                        var x = document.getElementById("subcategory");
                                        x.innerHTML = "";
                                        for (var i = 0; i < sub.length; i++)
                                        {
                                            var option = document.createElement("option");
                                            option.text = sub[i];
                                            option.value = sub[i];
                                            x.add(option);
                                        }

                                    }

                                    function  getItemsByCategoryAndSubCategory()
                                    {
                                        var category = document.getElementById("category").value;
                                        var swap = category;
                                        var subcategory = document.getElementById("subcategory").value;


                                        onItem = firebase.database().ref("Items/" + category + "/" + subcategory);

                                        onItem.once('value', function (snapshot)
                                        {
                                            //alert();
                                            // document.getElementById("category").innerHTML = "";
                                            document.getElementById("items").innerHTML = "";
                                            snapshot.forEach(function (childSnapshot) {

                                                var childKey = childSnapshot.key;
                                                var childData = childSnapshot.val();
                                                var fullKey = swap + "/" + subcategory + "/" + childKey;
                                                var images = childData["images"];
                                                var imagesDownloadLinksArray = [];
                                                //alert(images);

                                                var imagesRef = firebase.database().ref("Items/" + fullKey + "/images");
                                                imagesRef.once("value", function (imagesnapshot) {

                                                    imagesnapshot.forEach(function (imagechildSnapshot) {
                                                        console.log("images key: " + imagechildSnapshot.key);
                                                        var imagechildData = imagechildSnapshot.val();
                                                        imagesDownloadLinksArray.push(imagechildData['url']);
                                                        console.log("download links are: " + imagesDownloadLinksArray);

                                                    });
                                                    console.log("start building article");
                                                    var itemsContainer = document.getElementById("items");

                                                    var article = document.createElement("ARTICLE");
                                                    article.setAttribute("class", "w3-half ");
                                                    article.setAttribute("id", fullKey);

                                                    var imagePreview = document.createElement("div");
                                                    imagePreview.setAttribute("class", "w3-margin w3-center");


                                                    var img = document.createElement("img");
                                                    img.setAttribute("src", imagesDownloadLinksArray[0]);
                                                    img.setAttribute("class", "w3-border w3-center");
                                                    img.setAttribute("height", "150");
                                                    img.setAttribute("width", "150");
                                                    img.setAttribute("title", childData["name"]);
                                                    imagePreview.appendChild(img);
                                                    /*****/

                                                    var mainDivContainer = document.createElement("DIV");
                                                    mainDivContainer.setAttribute("class", "w3-card  w3-theme-dark");
                                                    mainDivContainer.appendChild(imagePreview);
                                                    /*****/



                                                    /*****/
                                                    var fieldSetsContainer = document.createElement("fieldset");
                                                    fieldSetsContainer.setAttribute("class", "w3-margin-bottom");


                                                    /****fieldset 1****/
                                                    var fieldset1 = document.createElement("fieldset");
                                                    fieldset1.setAttribute("class", "w3-row-padding w3-border-0");


                                                    var p1 = document.createElement("P");
                                                    p1.setAttribute("class", "w3-half");

                                                    var label1 = document.createElement("LABEL");
                                                    label1.setAttribute("class", "w3-text-teal");
                                                    label1.innerHTML = "Name";
                                                    p1.appendChild(label1);

                                                    var input1 = document.createElement("INPUT");
                                                    input1.setAttribute("class", "w3-input w3-theme-d1");
                                                    input1.type = "text";
                                                    input1.value = childData["name"];
                                                    input1.setAttribute("id", childKey + "name");
                                                    p1.appendChild(input1);
                                                    fieldset1.appendChild(p1);




                                                    var p2 = document.createElement("P");
                                                    p2.setAttribute("class", "w3-half");

                                                    var label2 = document.createElement("LABEL");
                                                    label2.setAttribute("class", "w3-text-teal");
                                                    label2.innerHTML = "Small description";
                                                    p2.appendChild(label2);

                                                    var input2 = document.createElement("INPUT");
                                                    input2.setAttribute("class", "w3-input w3-theme-d1");
                                                    input2.type = "text";
                                                    input2.value = childData["smalldescription"];
                                                    input2.setAttribute("maxlength","23");
                                                    input2.setAttribute("id", childKey + "smalldescription");
                                                    

                                                    p2.appendChild(input2);
                                                    fieldset1.appendChild(p2);

                                                    fieldSetsContainer.appendChild(fieldset1);
                                                    /****end of fieldset 1****/

                                                    /****fieldset 2****/
                                                    var fieldset2 = document.createElement("fieldset");
                                                    fieldset2.setAttribute("class", "w3-row-padding w3-border-0");

                                                    var p1 = document.createElement("P");
                                                    p1.setAttribute("class", "w3-third");

                                                    var label1 = document.createElement("LABEL");
                                                    label1.setAttribute("class", "w3-text-teal");
                                                    label1.innerHTML = "MRP";
                                                    p1.appendChild(label1);

                                                    var input1 = document.createElement("INPUT");
                                                    input1.setAttribute("id", childKey + "mrp");
                                                    input1.setAttribute("class", "w3-input w3-theme-d1");
                                                    input1.type = "number";
                                                    input1.value = childData["mrp"];
                                                    input1.setAttribute("onkeyup", "computePrice(this.id)");
                                                    p1.appendChild(input1);
                                                    fieldset2.appendChild(p1);
                                                    /**/

                                                    var p2 = document.createElement("P");
                                                    p2.setAttribute("class", "w3-third");

                                                    var label2 = document.createElement("LABEL");
                                                    label2.setAttribute("class", "w3-text-teal");
                                                    label2.innerHTML = "Discount";
                                                    p2.appendChild(label2);

                                                    var input2 = document.createElement("INPUT");
                                                    input2.setAttribute("id", childKey + "discount");
                                                    input2.setAttribute("class", "w3-input w3-theme-d1");
                                                    input2.type = "number";
                                                    input2.value = childData["discount"];
                                                    input2.setAttribute("onkeyup", "computePrice(this.id)");
                                                    p2.appendChild(input2);
                                                    fieldset2.appendChild(p2);
                                                    /**/
                                                    var p3 = document.createElement("P");
                                                    p3.setAttribute("class", "w3-third");

                                                    var label3 = document.createElement("LABEL");
                                                    label3.setAttribute("class", "w3-text-teal");
                                                    label3.innerHTML = "Price";
                                                    p3.appendChild(label3);

                                                    var input3 = document.createElement("INPUT");
                                                    input3.setAttribute("class", "w3-input w3-theme-d1");
                                                    input3.type = "number";
                                                    input3.value = childData["price"];
                                                    input3.setAttribute("id", childKey + "price");
                                                    input3.setAttribute("readonly", "true");
                                                    p3.appendChild(input3);
                                                    fieldset2.appendChild(p3);

                                                    fieldSetsContainer.appendChild(fieldset2);
                                                    /****fieldset 2****/


                                                    /****fieldset 3 quantity and brand****/
                                                    var fieldset3 = document.createElement("fieldset");
                                                    fieldset3.setAttribute("class", "w3-row-padding w3-border-0");

                                                    var p1 = document.createElement("P");
                                                    p1.setAttribute("class", "w3-half");

                                                    var label1 = document.createElement("LABEL");
                                                    label1.setAttribute("class", "w3-text-teal");
                                                    label1.innerHTML = "Quantity";
                                                    p1.appendChild(label1);

                                                    var input1 = document.createElement("INPUT");
                                                    input1.setAttribute("class", "w3-input w3-theme-d1");
                                                    input1.type = "number";
                                                    input1.value = childData["quantity"];
                                                    input1.setAttribute("id", childKey + "quantity");
                                                    p1.appendChild(input1);
                                                    fieldset3.appendChild(p1);

                                                    var p2 = document.createElement("P");
                                                    p2.setAttribute("class", "w3-half");

                                                    var label2 = document.createElement("LABEL");
                                                    label2.setAttribute("class", "w3-text-teal");
                                                    label2.innerHTML = "Brand";
                                                    p2.appendChild(label2);

                                                    var input2 = document.createElement("INPUT");
                                                    input2.setAttribute("class", "w3-input w3-theme-d1");
                                                    input2.type = "text";
                                                    input2.value = childData["brand"];
                                                    input2.setAttribute("id", childKey + "brand");
                                                    p2.appendChild(input2);

                                                    fieldset3.appendChild(p2);
                                                    fieldSetsContainer.appendChild(fieldset3);
                                                    /****End of fieldset 3 quantity and brand****/

                                                    /****fieldset 4 Description****/
                                                    var fieldset4 = document.createElement("fieldset");
                                                    fieldset4.setAttribute("class", "w3-row-padding w3-border-0");

                                                    var p1 = document.createElement("P");
                                                    var label1 = document.createElement("LABEL");
                                                    label1.setAttribute("class", "w3-text-teal");
                                                    label1.innerHTML = 'Description(<span class="w3-text-red">separated by semi-colon</span>)</label>';
                                                    p1.appendChild(label1);

                                                    var input1 = document.createElement("INPUT");
                                                    input1.setAttribute("class", "w3-input w3-theme-d1");
                                                    input1.type = "text";
                                                    input1.value = childData["fulldescription"];
                                                    input1.setAttribute("id", childKey + "fulldescription");
                                                    p1.appendChild(input1);

                                                    fieldset4.appendChild(p1);
                                                    fieldSetsContainer.appendChild(fieldset4);
                                                    /****End fieldset 4 Description****/

                                                    /****fieldset 5 Keywords****/
                                                    var fieldset5 = document.createElement("fieldset");
                                                    fieldset5.setAttribute("class", "w3-row-padding w3-border-0");

                                                    var p1 = document.createElement("P");
                                                    var label1 = document.createElement("LABEL");
                                                    label1.setAttribute("class", "w3-text-teal");
                                                    label1.innerHTML = 'Keywords for search engine(<span class="w3-text-red">separated by semi-colon</span>)</label>';
                                                    p1.appendChild(label1);

                                                    var input1 = document.createElement("INPUT");
                                                    input1.setAttribute("class", "w3-input w3-theme-d1");
                                                    input1.type = "text";
                                                    input1.value = childData["keywords"];
                                                    input1.setAttribute("id", childKey + "keywords");
                                                    p1.appendChild(input1);

                                                    fieldset5.appendChild(p1);

                                                    var p2 = document.createElement("P");
                                                    var labelMl = document.createElement("LABEL");
                                                    labelMl.setAttribute("class", "w3-text-teal");
                                                    labelMl.innerHTML = 'Volume in ML <br>';
                                                    p2.appendChild(labelMl);
                                                    var inputVolume = document.createElement("input");
                                                    inputVolume.setAttribute("class", "w3-theme-d1 w3-input w3-half");
                                                    inputVolume.setAttribute("type", "number");
                                                    inputVolume.setAttribute("id", childKey + "volume");
                                                    inputVolume.setAttribute("value", childData["volume"]);


                                                    p2.appendChild(inputVolume);
                                                    fieldset5.appendChild(p2);
                                                    fieldSetsContainer.appendChild(fieldset5);
                                                    /****End fieldset 5 Keywords****/

                                                    /****fieldset 6 Images****/
                                                    var fieldset6 = document.createElement("fieldset");
                                                    fieldset6.setAttribute("class", "w3-card");
                                                    fieldset6.style.border = "1px solid teal";

                                                    var legend = document.createElement("legend");
                                                    legend.setAttribute("class", "w3-text-teal");
                                                    legend.innerHTML = 'Images';

                                                    var div = document.createElement("div");
                                                    div.setAttribute("class", "w3-row w3-left");
                                                    /*
                                                     var input = document.createElement("input");
                                                     input.setAttribute("class", "inputfile");
                                                     input.type = "file";
                                                     input.setAttribute("id", "fileButton");
                                                     input.setAttribute("multiple", "true");
                                                     
                                                     var label = document.createElement("label");
                                                     label.setAttribute("class", "w3-btn w3-teal");
                                                     label.setAttribute("for", "fileButton");
                                                     label.innerHTML = '<i class="fa fa-upload"></i> <span> Selectionnez image du produit</span>';*/

                                                    //div.appendChild(input);
                                                    // div.appendChild(label);

                                                    var outputDiv = document.createElement("div");
                                                    outputDiv.setAttribute("class", "w3-row-padding");

                                                    var output = document.createElement("output");
                                                    output.setAttribute("id", "list");

                                                    outputDiv.appendChild(output);

                                                    for (var i = 0; i < imagesDownloadLinksArray.length; i++)
                                                    {
                                                        var imgThumb = document.createElement("img");
                                                        imgThumb.setAttribute("src", imagesDownloadLinksArray[i]);
                                                        imgThumb.setAttribute("class", "w3-border w3-center");
                                                        imgThumb.setAttribute("height", "150");
                                                        imgThumb.setAttribute("width", "150");

                                                        output.appendChild(imgThumb);
                                                    }



                                                    fieldset6.appendChild(legend);
                                                    fieldset6.appendChild(div);
                                                    fieldset6.appendChild(outputDiv);




                                                    fieldSetsContainer.appendChild(fieldset6);

                                                    /*Create an input to display category and subcatecory*/

                                                    var fieldset7 = document.createElement("fieldset");
                                                    fieldset7.setAttribute("class", "w3-row w3-border-0");

                                                    var inputCategory = document.createElement("INPUT");
                                                    var inputSubCategory = document.createElement("INPUT");
                                                    inputCategory.setAttribute("value", "Category: " + swap);
                                                    inputCategory.setAttribute("class", "w3-input w3-theme-d1 w3-half w3-border-right");
                                                    inputCategory.setAttribute("readonly", true);
                                                    inputSubCategory.setAttribute("value", "Subcategory: " + subcategory);
                                                    inputSubCategory.setAttribute("class", "w3-input w3-theme-d1 w3-half");
                                                    inputSubCategory.setAttribute("readonly", true);

                                                    fieldset7.appendChild(inputCategory);
                                                    fieldset7.appendChild(inputSubCategory);
                                                    fieldSetsContainer.appendChild(fieldset7);


                                                    /*Action*/
                                                    var fieldset8 = document.createElement("fieldset");
                                                    fieldset8.setAttribute("class", "w3-row ch-blue-g w3-center");
                                                    fieldset8.setAttribute("id", fullKey);

                                                    var legend = document.createElement("legend");
                                                    legend.setAttribute("class", "w3-text-teal");
                                                    legend.innerHTML = 'Actions';

                                                    var modifyBtn = document.createElement("Button");
                                                    modifyBtn.innerHTML = "Save changes <i class='fa fa-download w3-text-white '></i>";
                                                    modifyBtn.setAttribute("class", "w3-btn w3-green w3-margin w3-card ch-blue-gr w3-round-xxlarge");
                                                    modifyBtn.setAttribute("onclick", "modifyItem(this.parentNode.parentNode.parentNode.parentNode.id)");

                                                    var deleteBtn = document.createElement("Button");
                                                    deleteBtn.innerHTML = "Delete this item <i class='fa fa-trash w3-text-white '></i>";
                                                    deleteBtn.setAttribute("class", "w3-btn w3-red w3-margin w3-card ch-delete w3-round-xxlarge");
                                                    deleteBtn.setAttribute("onclick", "deleteItem(this.parentNode.parentNode.parentNode.parentNode.id)");

                                                    fieldset8.appendChild(legend);
                                                    fieldset8.appendChild(modifyBtn);
                                                    fieldset8.appendChild(deleteBtn);

                                                    fieldSetsContainer.appendChild(fieldset8);



                                                    /*Important DO NOT DELETE*/

                                                    /*copy category*/
                                                    /*
                                                     var category= document.getElementById("category");
                                                     var categoryClone = category.cloneNode(true);
                                                     categoryClone.setAttribute("id","category"+childKey);
                                                     categoryClone.value=childData["category"];
                                                     fieldSetsContainer.appendChild(categoryClone);*/

                                                    /*copy subcategory*/

                                                    /*
                                                     var subcategory= document.getElementById("subcategory");
                                                     var subcategoryClone = subcategory.cloneNode(true);
                                                     subcategoryClone.setAttribute("id","subcatecory"+childKey);
                                                     subcategoryClone.value=childData["subcategory"];
                                                     fieldSetsContainer.appendChild(subcategoryClone);*/




                                                    mainDivContainer.appendChild(fieldSetsContainer);
                                                    article.appendChild(mainDivContainer);
                                                    itemsContainer.appendChild(article);
                                                    console.log("finish building article");


                                                });

                                                /*images.forEach(function (imagesKeySnapshot) {
                                                 var childDataImage = imagesKeySnapshot.val();
                                                 imagesDownloadLinkArray.push(childDataImage['url']);
                                                 });*/


                                                //var option = document.createElement("option");
                                                //option.setAttribute("value", childKey);
                                                //option.innerHTML = childKey;
                                                //category.appendChild(option);




                                            });

                                        });
                                    }

                                    function computePrice(itemkey)
                                    {
                                        // alert(itemKey);
                                        var newKey;
                                        if ((itemkey.indexOf("mrp") !== -1))
                                        {
                                            newKey = itemkey.replace("mrp", "");

                                        } else
                                        {
                                            newKey = itemkey.replace("discount", "");
                                        }

                                        var mrp = document.getElementById(newKey + "mrp").value;
                                        var discount = document.getElementById(newKey + "discount").value;
                                        var price = mrp - ((mrp * discount) / 100);
                                        document.getElementById(newKey + "price").value = price;


                                    }






                                    function modifyItem(fullPathToItem)
                                    {
                                        var itemKey = fullPathToItem.split("/")[2];
                                        const name = document.getElementById(itemKey + "name").value;
                                        const smalldescription = document.getElementById(itemKey + "smalldescription").value;
                                        const mrp = document.getElementById(itemKey + "mrp").value;
                                        const discount = document.getElementById(itemKey + "discount").value;
                                        const price = document.getElementById(itemKey + "price").value;
                                        const quantity = document.getElementById(itemKey + "quantity").value;
                                        const brand = document.getElementById(itemKey + "brand").value;
                                        const fulldescription = document.getElementById(itemKey + "fulldescription").value;
                                        const keywords = document.getElementById(itemKey + "keywords").value;
                                        const volume = document.getElementById(itemKey + "volume").value;




                                        itemsRef = firebase.database().ref("Items/" + fullPathToItem);
                                        itemsRef.update({

                                            name: name,
                                            smalldescription: smalldescription,
                                            mrp: mrp,
                                            discount: discount,
                                            price: price,
                                            quantity: quantity,
                                            brand: brand,
                                            fulldescription: fulldescription,
                                            keywords: keywords,
                                            volume: volume

                                        }, function (error) {
                                            if (error)
                                            {
                                                console.log(error);
                                                alert("error");
                                            } else
                                            {
                                                document.getElementById("succesItem").style.display = "block";
                                                setTimeout(function () {
                                                    document.getElementById("succesItem").style.display = "none";
                                                }, 3000);
                                            }

                                        });


                                    }

                                    function deleteItem(fullPathToItem)
                                    {
                                        //alert("fullpath :" + fullPathToItem);
                                        var childData;
                                        var myarr = [];


                                        var itemRef = firebase.database().ref("Items/" + fullPathToItem);
                                        itemRef.once('value', function (snapshot) {

                                            childData = snapshot.val();
                                            // alert(childData["namesarray"]);

                                            Promise.all(
                                                    // Array of "Promises"
                                                    childData["namesarray"].map(item => deleteItemImages(item, fullPathToItem))
                                                    )
                                                    .then((url) => {
                                                        document.getElementById("succesItemDelete").style.display = "block";
                                                        setTimeout(function () {
                                                            document.getElementById("succesItemDelete").style.display = "none";
                                                        }, 2000);
                                                        //console.log(downloadLinks);
                                                        deleteItemFromDb(fullPathToItem);
                                                    })
                                                    .catch((error) => {
                                                        console.log(`Some failed: `, error.message);
                                                    });


                                        });




                                        /*
                                         itemsRef = firebase.database().ref("Items/" + fullPathToItem).remove().then(function () {
                                         
                                         firebase.storage().ref("Items/" + fullPathToItem + "/").delete().then(function () {
                                         alert("File deleted successfully");
                                         }).catch(function (error) {
                                         console.log("Error while deleting files:" + error.message);
                                         
                                         });
                                         
                                         }).catch(function (error) {
                                         console.log("Error message" + error.message);
                                         });*/


                                    }


                                    function deleteItemImages(item, path) {
                                        // the return value will be a Promise
                                       // alert("item is: " + item);
                                        firebase.storage().ref("Items/" + path + "/" + item).delete().then(function () {
                                           // alert("One File deleted successfully");
                                            //deleteItemFromDb(path);

                                        }).catch(function (error) {
                                            console.log("Error while deleting files:" + error.message);
                                        });

                                        /*
                                         return uploadTask
                                         .then((snapshot) => {
                                         console.log('One success:', item);
                                         console.log('One success snap:', snapshot);
                                         
                                         uploadTask.on('state_changed', function progress(snapshot) {
                                         var percentage = (snapshot.bytesTransferred / snapshot.totalBytes) * 100;
                                         uploader.value = percentage;
                                         
                                         
                                         }, function error() {
                                         
                                         }, function complete() {
                                         uploadTask.snapshot.ref.getDownloadURL().then(function (downloadURL) {
                                         downloadLinks.push(downloadURL);
                                         
                                         });
                                         
                                         });
                                         
                                         }).catch((error) => {
                                         console.log('One failed:', item, error.message);
                                         });*/
                                    }

                                    function deleteItemFromDb(fullPathToItem)
                                    {
                                        firebase.database().ref("Items/" + fullPathToItem).remove().then(function () {

                                           // alert("item has been deleted");
                                            var element = document.getElementById(fullPathToItem);
                                            element.parentNode.removeChild(element);


                                        }).catch(function (error) {
                                            console.log("Error while deleting files:" + error.message);

                                        });
                                    }









        </script>
    </body>
</html>
