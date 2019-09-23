/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 * sidibe aboubacar 
 */


// Give the service worker access to Firebase Messaging.
// Note that you can only use Firebase Messaging here, other Firebase libraries
// are not available in the service worker.
importScripts('https://www.gstatic.com/firebasejs/4.8.1/firebase-app.js');
importScripts('https://www.gstatic.com/firebasejs/4.8.1/firebase-messaging.js');

// Initialize the Firebase app in the service worker by passing in the
// messagingSenderId.
var firebaseConfig = {
    apiKey: "AIzaSyBaVHudheBwEnBN5L6Fyt9vzRb525uhD6w",
    authDomain: "chapdeal-1295d.firebaseapp.com",
    databaseURL: "https://chapdeal-1295d.firebaseio.com",
    projectId: "chapdeal-1295d",
    storageBucket: "",
    messagingSenderId: "849110353062",
    appId: "1:849110353062:web:88a3f28f878b67ab"
};
// Initialize Firebase
firebase.initializeApp(firebaseConfig);

const messaging = firebase.messaging();

//When you use data  and replace notification by data

messaging.setBackgroundMessageHandler(function (payload) {
    alert("backgound");
    console.log('Message received in background. ', payload);
    var title = payload.data.title;
    var options = {
        body: payload.data.body,
        icon: payload.data.icon

    };
    return self.registration.showNotification(title, options);
});

self.addEventListener('notificationclick', function (event) {
  event.notification.close();
  clients.openWindow("https://www.france24.com/fr/");
});

