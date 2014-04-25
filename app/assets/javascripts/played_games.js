var clicks = 0;
var createGuess = function(map){
  if (clicks > 3){
    google.maps.event.clearListeners(map, 'click')
    endGame();

       var marker = new google.maps.Marker({
        position: locationlatlng,
        map: map,


    });
       marker.setIcon('http://maps.google.com/mapfiles/ms/icons/green-dot.png')

  } else {
    $('form').submit()
    clicks ++;

  }
};




$(document).ready(function(){
  $('.form').hide();
  $('.clue').hide();
  var map;
  function initialize() {
    var myLatlng = new google.maps.LatLng(0,0);
    var mapOptions = {
      zoom: 1,
      center: myLatlng
    }
    map = new google.maps.Map(document.getElementById("map-canvas"), mapOptions);

    google.maps.event.addListener(map, 'click', function(event) {
      placeMarker(event.latLng);

    });
  }

  function placeMarker(location) {

    var marker = new google.maps.Marker({
        position: location,
        map: map,
        draggable: true
    });

    map.setCenter(location);
    $('#location-field').val(location);
    createGuess(map);

  }



  google.maps.event.addDomListener(window, 'load', initialize);
 });
