/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */


/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
function initMap() {

    //var geocoder = new google.maps.Geocoder;

    document.getElementById('locate').addEventListener('click', function () {
        getLocation();
        //geocodeLatLng(geocoder);
    });
}

function getLocation() {
    if (navigator.geolocation) {
        navigator.geolocation.getCurrentPosition(showPosition,showError);
    } else {
       alert("Geolocation is not supported by this browser.");
    }

}

function showPosition(position) {
    var geocoder = new google.maps.Geocoder;
    document.getElementById('latlng').value = position.coords.latitude + "," + position.coords.longitude;
    geocodeLatLng(geocoder);
}

function geocodeLatLng(geocoder) {


    var input = document.getElementById('latlng').value;
    var latlngStr =  input.split(',', 2);
    var city;
    var state;

    var latlng = {lat: parseFloat(latlngStr[0]), lng: parseFloat(latlngStr[1])};
    geocoder.geocode({'location': latlng}, function (results, status) {

        if (status === 'OK') {
            if (results[1]) {
                //map.setZoom(11);
                //var marker = new google.maps.Marker({
                //position: latlng,
                //map: map
                //});
                //infowindow.setContent(results[1].formatted_address);
                //infowindow.open(map, marker);

                document.getElementById("address").value = results[1].formatted_address;
                //For later use when the assocations will be joined.
               /// city = results[1].address_components[3].short_name;
                //var firstC = city.split(' ');
                //document.getElementById("city").value = firstC[0];
                //document.getElementById("state").value = results[1].address_components[4].short_name;



            } else {
                window.alert('No results found');
            }
        } else {
            window.alert('Geocoder failed due to: ' + status);
        }

    });
}

function showError(error) {
  switch(error.code) {
    case error.PERMISSION_DENIED:
     alert("User denied the request for Geolocation.")
      break;
    case error.POSITION_UNAVAILABLE:
      alert("Location information is unavailable please enter address manually.")
      break;
    case error.TIMEOUT:
     alert( "The request to get user location timed out.")
      break;
    case error.UNKNOWN_ERROR:
    alert(  "An unknown error occurred.")
      break;
  }
}

