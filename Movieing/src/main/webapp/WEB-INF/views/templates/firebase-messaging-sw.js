importScripts('https://www.gstatic.com/firebasejs/4.8.1/firebase-app.js');
importScripts('https://www.gstatic.com/firebasejs/4.8.1/firebase-messaging.js');
 
// Initialize Firebase
var config = {
	    apiKey: "AIzaSyC0JIk-8g838WnunroGSlhDW6Ho5GRlKGo",
	    authDomain: "movieingfcm.firebaseapp.com",
	    databaseURL: "https://movieingfcm.firebaseio.com",
	    projectId: "movieingfcm",
	    storageBucket: "movieingfcm.appspot.com",
	    messagingSenderId: "849177227695",
};
firebase.initializeApp(config);
 
const messaging = firebase.messaging();
messaging.setBackgroundMessageHandler(function(payload){
 
    const title = "Hello World";
    const options = {
            body: payload.data.status
    };
 
    return self.registration.showNotification(title,options);
});
