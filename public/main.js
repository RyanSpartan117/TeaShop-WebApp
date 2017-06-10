function initMap() {
  var uluru = {lat: 51, lng: 0};
  var map = new google.maps.Map(document.getElementById('map-location'), {
    zoom: 13,
    center: uluru
  });
  var marker = new google.maps.Marker({
    position: uluru,
    map: map
  });
}