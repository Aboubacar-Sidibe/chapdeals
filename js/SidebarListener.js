/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 * Author : sidibe aboubacar thomas
 */

var menu = document.getElementById("menu");

var menuRef = firebase.database().ref('Menu/');


menuRef.on('value', function (snapshot) {
    menu.innerHTML = "";
    snapshot.forEach(function (childSnapshot) {
        var childKey = childSnapshot.key;
        var childData = childSnapshot.val();

        var dt = document.createElement("dt");
        dt.setAttribute("onclick", "menuAccordion('" + childKey + "')");
        dt.setAttribute("class", "w3-margin-bottom w3-theme-l5");
        var categoryText = document.createTextNode(childKey);
        dt.appendChild(categoryText);
        var i = document.createElement("i");
        i.setAttribute("class", "fa fa-plus-circle w3-right w3-text-pink w3-margin-right");
        dt.appendChild(i);
        menu.appendChild(dt);

        var article = document.createElement("ARTICLE");
        article.setAttribute("id", childKey);
        article.setAttribute("class", "w3-hide w3-animate-opacity w3-margin-bottom");
        for (var key in childData) {
            if (key != "createdAt")
            {
                var a = document.createElement("a");
                a.setAttribute("class", "w3-bar-item w3-button cd-hover-pink");
                a.setAttribute("id", childKey + "/" + childData[key]);
                if (childKey.indexOf("&") !== -1)
                    childKey = childKey.replace(/&/g, "and");

                a.href = "Products?category=" + childKey + "&subcategory=" + childData[key];
                a.innerText = "-" + childData[key];
                article.appendChild(a);
            }

        }
        menu.appendChild(article);

    });
});

/*
 menuRef.orderByChild("createdAt").limitToLast(1).on('child_added', function (childSnapshot)
 {
 var childKey = childSnapshot.key;
 var childData = childSnapshot.val();
 var dt = document.createElement("dt");
 dt.setAttribute("onclick", "menuAccordion('" + childKey + "')");
 var categoryText = document.createTextNode(childKey);
 dt.appendChild(categoryText);
 var i = document.createElement("i");
 i.setAttribute("class", "fa fa-plus-circle w3-right w3-text-pink w3-margin-right");
 dt.appendChild(i);
 menu.appendChild(dt);
 
 var article = document.createElement("ARTICLE");
 article.setAttribute("id", childKey);
 article.setAttribute("class", "w3-hide w3-animate-opacity");
 for (var key in childData) {
 
 if (key != "createdAt")
 {
 var a = document.createElement("a");
 a.setAttribute("class", "w3-bar-item w3-button cd-hover-pink");
 a.setAttribute("id", childKey + "/" + childData[key]);
 a.href = childKey + "/" + childData[key];
 a.innerText = "-" + childData[key];
 article.appendChild(a);
 }
 }
 menu.appendChild(article);
 
 });*/

/*
 menuRef.on('child_removed', function (category)
 {
 var nodeToRemove = document.getElementById(category.key);
 var previousSibling = document.getElementById(category.key).previousSibling;
 menu.removeChild(nodeToRemove);
 menu.removeChild(previousSibling);
 
 
 });*/

