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


  function fixInfoWindow() {
      //Here we redefine set() method.
      //If it is called for map option, we hide InfoWindow, if "noSupress" option isnt true.
      //As Google doesn't know about this option, its InfoWindows will not be opened.
      var set = google.maps.InfoWindow.prototype.set;
      google.maps.InfoWindow.prototype.set = function (key, val) {
          if (key === 'map') {
              if (!this.get('noSupress')) {
                  console.log('This InfoWindow is supressed. To enable it, set "noSupress" option to true');
                  return;
              }
          }
          set.apply(this, arguments);
      }
  }


  var map;
  function initialize() {
    var myLatlng = new google.maps.LatLng(0,0);
    var mapOptions = {
      zoom: 1,
      center: myLatlng
    }
    map = new google.maps.Map(document.getElementById("map-canvas"), mapOptions);

    var popup = new google.maps.InfoWindow({
        content: 'Okay...',
        noSupress: true //<-- here we tell InfoWindow to bypass our blocker
    });

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

  fixInfoWindow();

  google.maps.event.addDomListener(window, 'load', initialize);
 });
