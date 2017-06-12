function initMap() {

	var latitude = parseFloat(document.getElementById("latitude").innerHTML);
	var longitude = parseFloat(document.getElementById("longitude").innerHTML);

	var uluru = {lat: latitude, lng: longitude};
	var map = new google.maps.Map(document.getElementById('map-location'), {
	  zoom: 15,
	  center: uluru
	});
	var marker = new google.maps.Marker({
	  position: uluru,
	  map: map
	});
};