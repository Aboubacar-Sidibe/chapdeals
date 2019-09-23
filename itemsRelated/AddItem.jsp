<%-- 
    Document   : promiseAll
    Created on : Aug 17, 2019, 10:57:44 AM
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

        </style>
    </head>
    <body>
        <section id="addProduct" class=" w3-animate-bottom w3-margin-top sectionToHide" style="overflow:scroll; -webkit-overflow-scrolling:touch;">

            <div id="info" class="w3-modal">
                <div class="w3-modal-content">
                    <div class="w3-container">
                        <div class="w3-panel w3-pale-blue w3-border">
                            <h3>Info!⚠️</h3>
                            <p>Item in process of creation.Please wait...Do not press enregistrer again</p>
                        </div>
                    </div>
                </div>
            </div>
            <div id="succesItem" class="w3-modal">
                <div class="w3-modal-content">
                    <div class="w3-container">
                        <div class="w3-panel w3-pale-green w3-border">
                            <h3>Success!😍</h3>
                            <p>Item created successfully.</p>
                        </div>
                    </div>
                </div>
            </div>

            <section id="mandatoryfields" class="w3-container w3-margin-bottom  w3-theme-dark">
                <header>
                    <div class="w3-container w3-theme-dark">
                        <h2 class="w3-center">Add new item</h2>
                        <p class="w3-text-green w3-center" id="sauvegarde"></p>
                        <p class="w3-text-red w3-center" id="sauvegardeError"></p>

                    </div>
                </header>

                <fieldset class="w3-margin-bottom">

                    <fieldset class="w3-row-padding w3-border-0">
                        <p class="w3-half">
                            <label class="w3-text-teal">Name</label>
                            <input  class="w3-input w3-theme-d1" name="name"
                                    type="text" placeholder="Iphone XR" id="name"  required="" >
                        </p>


                        <p class="w3-half">
                            <label class="w3-text-teal">Small description </label>
                            <input  class="w3-input w3-theme-d1" name="smalldescription"
                                    type="text" placeholder="Women Black Printed Waterfall Longline Shrug" id="smalldescription" required="" maxlength="23">
                        </p>                      
                    </fieldset>

                    <fieldset class="w3-row-padding w3-border-0">

                        <p class="w3-third">
                            <label class="w3-text-teal">MRP </label>
                            <input  class="w3-input w3-theme-d1" name="mrp"
                                    type="number" placeholder="5000" id="mrp" required="" onkeyup="computePrice()">
                        </p>

                        <p class="w3-third">
                            <label class="w3-text-teal">Discount</label>
                            <input class="w3-input w3-theme-d1" name="discount"
                                   type="number" placeholder="0 (if not specified default will be taken as 0)" id="discount"  value="0" onkeyup="computePrice()">
                        </p>

                        <p class="w3-third">
                            <label class="w3-text-teal">Price </label>
                            <input  class="w3-input w3-theme-d1" name="price"
                                    type="number"  id="price" readonly="" required="">
                        </p>
                    </fieldset>

                    <fieldset class="w3-row-padding w3-border-0">

                        <p class="w3-half">
                            <label class="w3-text-teal">Quantity </label>
                            <input  class="w3-input w3-theme-d1" name="quantity"
                                    type="number" placeholder="30" id="quantity">
                        </p>

                        <p class="w3-half">
                            <label class="w3-text-teal">Brand</label>
                            <input class="w3-input w3-theme-d1" name="brand"
                                   type="text" placeholder="For example Adidas" id="brand" >
                        </p>


                    </fieldset>



                    <fieldset class="w3-row-padding w3-border-0">
                        <p>
                            <label class="w3-text-teal">Description(<span class="w3-text-red">separated by semi-colon</span>)</label>
                            <input class="w3-input w3-theme-d1" name="description"
                                   type="text" placeholder="Apple A12 Bionic;64GB;3GB" id="description"  required="">
                        </p>


                    </fieldset>

                    <fieldset class="w3-row-padding w3-border-0">
                        <p>
                            <label class="w3-text-teal">Keywords for search engine(<span class="w3-text-red">separated by semi-colon</span>)</label>
                            <input class="w3-input w3-theme-d1" name="keywords"
                                   type="text" placeholder="Mid Rise;occasional;casual;night dress" id="keywords" >
                        </p>


                    </fieldset>




                    <fieldset class="w3-card" style="border:1px solid teal">
                        <legend class="w3-text-teal">Image (<span class="w3-text-red">de preference png ou un background blanc</span>)</legend>

                        <div class="w3-row w3-left">

                            <input class="inputfile" type="file" id="fileButton" multiple name="files[]"  />
                            <label class="w3-btn w3-teal" for="fileButton"><i class="fa fa-upload"></i> <span> Selectionnez image du produit</span></label>

                        </div>
                        <div class="w3-row-padding">
                            <output id="list"></output>
                        </div>

                        <p id="ss"></p>  <progress value="0" max="100" id="uploader">0%</progress>
                        <p id="bytetransferred"></p>
                        <p id="success" class="w3-text-green"></p>
                        <p id="error" class="w3-text-red"></p>
                    </fieldset>

                    <fieldset class="w3-row-padding w3-border-0 w3-margin-bottom w3-margin-bottom w3-margin-top">


                        <div class="custom-select ">

                            <label class="w3-text-teal">Choose a  category</label>

                            <select id="category" name="category" onchange="fil(this.value)">
                                <option selected="" value="category">Loading...</option>


                            </select>


                            <select  name="subcategory"  id="subcategory">
                                <option selected="" value="subcategory">waiting for you to choose a category...</option>

                            </select>
                            <select name="subcategoryhelper" id="subcategoryhelper" style="visibility: hidden">

                            </select>






                        </div>




                        <div class="custom-select w3-half w3-animate-bottom" id="sub" style="display: none"></div>




                    </fieldset>





                </fieldset>

            </section>











            <section id="unitoptions" class="w3-container w3-theme-dark w3-margin-top w3-animate-bottom" >
                <header>
                    <div class="w3-container w3-theme-dark">
                        <h4 class="w3-center" style="font-family:'Times new roman' ">Size configuration <i class="fa fa-warning w3-text-orange"></i> <sup class="w3-text-red">(Ignore if not applicable)</sup></h4>


                    </div>
                </header>

                <fieldset class="w3-margin"> 
                    <legend class="w3-text-teal"> <p class="w3-text-teal w3-large">Suitable for dressing  <i class="fa fa-warning w3-text-orange"></i> <sup class="w3-text-red">(Ignore if not applicable)</sup></p></legend>

                    <artile class="w3-row-padding">
                        <header class="w3-row-padding">
                        </header>

                        <div class="pretty p-switch">
                            <input type="checkbox" value="XS" class="size"/>
                            <div class="state p-success">
                                <label>XS</label>
                            </div>
                        </div>


                        <div class="pretty p-switch">
                            <input type="checkbox" value="S" class="size"/>
                            <div class="state p-success">
                                <label>S</label>
                            </div>
                        </div>

                        <div class="pretty p-switch">
                            <input type="checkbox" value="M" class="size"/>
                            <div class="state p-success">
                                <label>M</label>
                            </div>
                        </div>
                        <div class="pretty p-switch">
                            <input type="checkbox" value="L" class="size"/>
                            <div class="state p-success">
                                <label>L</label>
                            </div>
                        </div>
                        <div class="pretty p-switch">
                            <input type="checkbox" value="XL" class="size"/>
                            <div class="state p-success">
                                <label>XL</label>
                            </div>
                        </div>
                        <div class="pretty p-switch">
                            <input type="checkbox" value="XXL" class="size"/>
                            <div class="state p-success">
                                <label>XXL</label>
                            </div>
                        </div>
                    </artile>
                </fieldset>

                <fieldset class="w3-margin w3-margin-bottom"> 
                    <legend><p class="w3-text-teal w3-large">Suitable for pants and shoes <i class="fa fa-warning w3-text-orange"></i> <sup class="w3-text-red">(Ignore if not applicable)</sup></p> </legend>

                    <artile  class="w3-row-padding">
                        <div class="pretty p-switch">
                            <input type="checkbox" value="24" class="size"/>
                            <div class="state p-success">
                                <label>24</label>
                            </div>
                        </div>
                        <div class="pretty p-switch">
                            <input type="checkbox" value="26" class="size"/>
                            <div class="state p-success">
                                <label>26</label>
                            </div>
                        </div>
                        <div class="pretty p-switch">
                            <input type="checkbox" value="28" class="size"/>
                            <div class="state p-success">
                                <label>28</label>
                            </div>
                        </div>
                        <div class="pretty p-switch">
                            <input type="checkbox" value="30" class="size"/>
                            <div class="state p-success">
                                <label>30</label>
                            </div>
                        </div>
                        <div class="pretty p-switch">
                            <input type="checkbox" value="32" class="size"/>
                            <div class="state p-success">
                                <label>32</label>
                            </div>
                        </div>
                        <div class="pretty p-switch">
                            <input type="checkbox" value="34" class="size"/>
                            <div class="state p-success">
                                <label>34</label>
                            </div>
                        </div>
                        <div class="pretty p-switch">
                            <input type="checkbox" value="36" class="size"/>
                            <div class="state p-success">
                                <label>36</label>
                            </div>
                        </div>
                        <div class="pretty p-switch">
                            <input type="checkbox" value="38" class="size"/>
                            <div class="state p-success">
                                <label>38</label>
                            </div>
                        </div>
                        <div class="pretty p-switch">
                            <input type="checkbox" value="40" class="size"/>
                            <div class="state p-success">
                                <label>40</label>
                            </div>
                        </div>
                        <div class="pretty p-switch">
                            <input type="checkbox" value="42" class="size"/>
                            <div class="state p-success">
                                <label>42</label>
                            </div>
                        </div>
                        <div class="pretty p-switch">
                            <input type="checkbox" value="44" class="size"/>
                            <div class="state p-success">
                                <label>44</label>
                            </div>
                        </div>
                        <div class="pretty p-switch">
                            <input type="checkbox" value="46" class="size"/>
                            <div class="state p-success">
                                <label>46</label>
                            </div>
                        </div>
                        <div class="pretty p-switch">
                            <input type="checkbox" value="48" class="size"/>
                            <div class="state p-success">
                                <label>48</label>
                            </div>
                        </div>
                        <div class="pretty p-switch">
                            <input type="checkbox" value="50" class="size"/>
                            <div class="state p-success">
                                <label>50</label>
                            </div>
                        </div>
                    </artile>
                </fieldset>

                <fieldset> 
                    <legend><p class="w3-text-teal w3-large">Suitable for Liquids   <i class="fa fa-warning w3-text-orange"></i> <sup class="w3-text-red">(Ignore if not applicable)</sup></p> </legend>

                    <artile class="w3-row-padding w3-margin">
                        <header></header>
                        <input id="volume" class="w3-theme-d1" value="0"  type="number"><label> ML</label>
                    </artile>
                </fieldset>


            </section>

            <section class="w3-container w3-theme-dark w3-margin-top w3-animate-bottom">
                <fieldset>
                    <legend class="w3-text-white w3-center">
                        Color choice
                    </legend>

                    <article class="w3-container w3-margin-bottom" id="colorsection">

                    </article>
                    <button class="w3-btn w3-blue w3-round-xlarge" onclick="addMoreColor()">add more color</button>
                    <button class="w3-btn w3-red w3-round-xlarge" onclick="removeRecentAddedColor()">remoce recent  color</button>

                </fieldset>


            </section>

            <section class="w3-margin-top" style="border: 1px solid  teal">
                <legend class="w3-text-white w3-center">
                    Cliquez sur enregistrer
                </legend>
                <div class="w3-center">
                    <button class="w3-btn w3-blue" id="enregistrer">Enregistrer</button>
                </div>


            </section>

        </section>





        <script  src="https://www.gstatic.com/firebasejs/6.3.3/firebase-app.js"></script>
        <script  src="https://www.gstatic.com/firebasejs/6.3.3/firebase-database.js"></script>
        <script  src="https://www.gstatic.com/firebasejs/6.3.3/firebase-messaging.js"></script>
        <script  src="https://www.gstatic.com/firebasejs/6.3.4/firebase-storage.js"></script>
        <script>
                        var files;
                        var downloadLinks = [];
                        var imagesNamesArray = [];
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

                        function fil(id)
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

                        var uploader = document.getElementById("uploader");

                        enregistrer.addEventListener('click', function (e) {
                            // var files = e.target.files; // FileList object
                            //var file = e.target.files[0];
                            document.getElementById("info").style.display = "block";
                            setTimeout(function () {
                                document.getElementById("info").style.display = "none";
                            }, 2000);

                            var category = document.getElementById("category").value;
                            var subcategory = document.getElementById("subcategory").value;
                            var itemReferenceKey = firebase.database().ref("Items/" + category + "/" + subcategory).push().key;
                            var path = "Items/" + category + "/" + subcategory + "/" + itemReferenceKey + "/";


                            var myArray = [];


                            for (var i = 0; i < files.length; i++)
                            {
                                myArray.push(files[i]);

                            }





                            Promise.all(
                                    // Array of "Promises"
                                    myArray.map(item => putStorageItem(item, path))
                                    )
                                    .then((url) => {
                                        //console.log(`All success the images array contains:` + downloadLinks);
                                        sendItemToDatabase(itemReferenceKey, path);
                                    })
                                    .catch((error) => {
                                        console.log(`Some failed: `, error.message);
                                    });



                        });


                        //firebase.storage().ref('photos/' + file.name);


                        function putStorageItem(item, path) {
                            // the return value will be a Promise
                            imagesNamesArray.push(item.name);
                            var uploadTask = firebase.storage().ref(path + item.name).put(item);
                            return uploadTask
                                    .then((snapshot) => {
                                        console.log('One success:', item);
                                        console.log('One success snap:', snapshot);

                                        uploadTask.on('state_changed', function progress(snapshot) {
                                            //var percentage = (snapshot.bytesTransferred / snapshot.totalBytes) * 100;
                                            //uploader.value = percentage;


                                        }, function error() {

                                        }, function complete() {
                                            uploadTask.snapshot.ref.getDownloadURL().then(function (downloadURL) {
                                                //downloadLinks.push(downloadURL);
                                                //return downloadURL;

                                            });

                                        });

                                    }).catch((error) => {
                                console.log('One failed:', item, error.message);
                            });
                        }


                        function sendItemToDatabase(itemReferenceKey, path)
                        {
                            const name = document.getElementById("name").value.trim();
                            const smalldescription = document.getElementById("smalldescription").value.trim();
                            const mrp = document.getElementById("mrp").value.trim();
                            const discount = document.getElementById("discount").value.trim();
                            const price = document.getElementById("price").value.trim();
                            const quantity = document.getElementById("quantity").value.trim();
                            const brand = document.getElementById("brand").value.trim();
                            const fulldescription = document.getElementById("description").value.trim();
                            const keywords = document.getElementById("keywords").value.trim();
                            var category = document.getElementById("category").value.trim();
                            var subcategory = document.getElementById("subcategory").value.trim();

                            var sizes = document.getElementsByClassName("size");
                            var sizesArray = [];
                            for (var i = 0; i < sizes.length; i++)
                                if (sizes[i].checked)
                                {
                                    sizesArray.push(sizes[i].value);

                                }

                            var volume = document.getElementById("volume").value;


                            var colors = document.getElementsByClassName("color");
                            var colorsArray = [];
                            for (var i = 0; i < colors.length; i++)
                                colorsArray.push(colors[i].value);

                            //var arr = ["https://firebasestorage.googleapis.com/v0/b/chapdeal-1295d.appspot.com/o/Woman%2Fshirt%2Fboarding1.jpg?alt=media&token=15305a25-5234-454a-8436-288af4f202a5", "https://firebasestorage.googleapis.com/v0/b/chapdeal-1295d.appspot.com/o/Woman%2Fshirt%2Fboarding2.jpg?alt=media&token=ed36f051-d3ec-405a-be7e-01d0f9023033"];
                            //var arr = pathArray;*/



                            itemsRef = firebase.database().ref("Items/" + category + "/" + subcategory + "/" + itemReferenceKey);
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
                                category: category,
                                subcategory: subcategory,
                                volume: volume,
                                sizes: sizesArray,
                                colors: colorsArray,
                                namesarray: imagesNamesArray



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
                                    }, 2000);
                                    //alert("items saved successfully ");
                                    getImagesLinks(path);


                                }

                            });





                        }


                        function addMoreColor()
                        {
                            var colorsection = document.getElementById('colorsection');
                            colorsection.insertAdjacentHTML("beforeend", ' <input  type="color"  class="color">');
                        }

                        function removeRecentAddedColor()
                        {
                            var colorsection = document.getElementById('colorsection');
                            colorsection.removeChild(colorsection.lastChild);
                        }

                        function computePrice()
                        {
                            const mrp = document.getElementById("mrp").value;
                            const discount = document.getElementById("discount").value;
                            price = mrp - ((mrp * discount) / 100);
                            document.getElementById("price").value = price;
                        }


                        //Show image preview
                        function handleFileSelect(e)
                        {

                            files = e.target.files; // FileList object
                            //const filesLengnt = files.length;

                            // Loop through the FileList and render image files as thumbnails.
                            for (i = 0; i < files.length; i++)
                            {
                                var f = files[i];
                                // Only process image files.
                                // if (!f.type.match('image.*')) {
                                //    continue;
                                //}

                                var reader = new FileReader();

                                // Closure to capture the file information.
                                reader.onload = (function (theFile)
                                {
                                    return function (e) {
                                        // Render thumbnail.
                                        var span = document.createElement('span');
                                        span.innerHTML = ['<img class="thumb" src="', e.target.result,
                                            '" title="', escape(theFile.name), '"/>'].join('');
                                        document.getElementById('list').insertBefore(span, null);
                                    };
                                })(f);

                                // Read in the image file as a data URL.
                                reader.readAsDataURL(f);

                            }


                        }

                        fileButton.addEventListener('change', handleFileSelect, false);

                        function getImagesLinks(path)
                        {

                            // Since you mentioned your images are in a folder,
                            // we'll create a Reference to that folder:
                            var storageRef = firebase.storage().ref(path);
                            //alert(storageRef);

                            // Now we get the references of these images
                            storageRef.listAll().then(function (result) {
                                result.items.forEach(function (imageRef) {
                                    // And finally display them
                                    // alert(imageRef);
                                    displayImage(imageRef);

                                });
                            }).catch(function (error) {
                                // Handle any errors
                            });

                            function displayImage(imageRef) {
                                imageRef.getDownloadURL().then(function (url) {
                                    //downloadLinks.push(url);
                                    firebase.database().ref(path + "images/").push().update({
                                        url
                                    });
                                }).catch(function (error) {
                                    console.log(error.message);
                                });
                            }
                        }




        </script>
    </body>
</html>
