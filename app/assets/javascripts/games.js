$(document).ready(function(){
  $('.form').hide();
  var map;
  function initialize() {
    var myLatlng = new google.maps.LatLng(0,0);
    var mapOptions = {
      zoom: 2,
      center: myLatlng
    }
    map = new google.maps.Map(document.getElementById("map-canvas"), mapOptions);

    google.maps.event.addListener(map, 'click', function(event) {
      placeMarker(event.latLng);

    });

    google.maps.event.trigger(map, 'resize');
            map.setZoom( map.getZoom() );

            google.maps.event.addListener(map, "idle", function(){
                google.maps.event.trigger(map, 'resize');
            });

  }

  function placeMarker(location) {
    var marker = new google.maps.Marker({
        position: location,
        map: map
    });

    map.setCenter(location);
    $('#location-field').val(location);
    google.maps.event.clearListeners(map,'click')

  }



  google.maps.event.addDomListener(window, 'load', initialize);
 });
