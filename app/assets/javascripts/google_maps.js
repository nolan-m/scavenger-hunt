$(document).ready(function(){
  console.log('test');
  var map;
  function initialize() {
    var myLatlng = new google.maps.LatLng(-25.363882,131.044922);
    var mapOptions = {
      zoom: 4,
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
        map: map
    });

    map.setCenter(location);
    google.maps.event.clearListeners(map,'click')

  }



  google.maps.event.addDomListener(window, 'load', initialize);
 });
