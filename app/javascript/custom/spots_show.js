function initMap() {
  console.log('initMap function is called'); // デバッグ用ログ

  var addressElement = document.getElementById('address');
  if (addressElement) {
    var geocoder = new google.maps.Geocoder();
    var address = addressElement.value;
    geocoder.geocode({ 'address': address }, function (results, status) {
      if (status === 'OK') {
        var map = new google.maps.Map(document.getElementById('map'), {
          zoom: 15,
          center: results[0].geometry.location
        });
        var marker = new google.maps.Marker({
          map: map,
          position: results[0].geometry.location
        });
        google.maps.event.trigger(map, 'resize');
        map.setCenter(results[0].geometry.location);
      } else {
        alert('Geocode was not successful for the following reason: ' + status);
      }
    });
  }
}

// グローバルに定義
window.initMap = initMap;

document.addEventListener('turbo:load', () => {
  if (typeof google !== 'undefined' && typeof google.maps !== 'undefined') {
    initMap();
  }
});
