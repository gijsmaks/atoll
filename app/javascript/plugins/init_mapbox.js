// import mapboxgl from 'mapbox-gl';

// // Fit map to markers
// const fitMapToMarkers = (map, markers) => {
//   const bounds = new mapboxgl.LngLatBounds();
//   markers.forEach(marker => bounds.extend([ marker.lng, marker.lat ]));
//   map.fitBounds(bounds, { padding: 70, maxZoom: 15, duration: 0 });
// };

// const initMapbox = () => {
//   const mapElement = document.getElementById('map');

//   if (mapElement) { // only build a map if there's a div#map to inject into
//     mapboxgl.accessToken = mapElement.dataset.mapboxApiKey;
//     const map = new mapboxgl.Map({
//       container: 'map',
//       style: 'mapbox://styles/gijsmaks/ck3sqhqvj0nqh1cp7rkj0aofr'
//     });

//     const markers = JSON.parse(mapElement.dataset.markers);
//     markers.forEach((marker) => {
//       new mapboxgl.Marker()
//       .setLngLat([ marker.lng, marker.lat ])
//       .addTo(map);
//     });
//     fitMapToMarkers(map, markers);
//   }
// };

// export { initMapbox };

import mapboxgl from 'mapbox-gl'; // same as require in ruby
import MapboxGeocoder from '@mapbox/mapbox-gl-geocoder'; // importing the package code of search

// definition of the function fitMapToMarkers
const fitMapToMarkers = (map, markers) => {
  const bounds = new mapboxgl.LngLatBounds(); // set the bounds/frames
  markers.forEach(marker => bounds.extend([ marker.lng, marker.lat ]));
  map.fitBounds(bounds, { padding: 70, maxZoom: 15, duration: 0 });
};

// creating the map, injecting the markers, setting the popup for each marker.
const initMapbox = () => {
  const mapElement = document.getElementById('map');

  if (mapElement) { // only build a map if there's a div#map to inject into
    // first part injecting the basic map
    mapboxgl.accessToken = mapElement.dataset.mapboxApiKey;

    const map = new mapboxgl.Map({
      container: 'map',
      style: 'mapbox://styles/ellyn/ck3r3ea8w044y1cldhmpeqtcq' // choose your style in MapStudio
    });

    //Adding markers
    const markers = JSON.parse(mapElement.dataset.markers); // transforming the json markers from index.html into array object of markers.
    markers.forEach((marker) => {
    // for every marker I need to set up a little popup containing the nameof the flat and the name of the address
    const popup = new mapboxgl.Popup().setHTML(marker.infoWindow); // I grab the info of my partial thanks to infoWindow key from my controller. This key returns me a string containing the info the flat name and the flat address.

    // Create a HTML element for your custom marker and setting the style
    const element = document.createElement('div');
    element.className = 'marker';
    element.style.backgroundImage = `url('${marker.image_url}')`;
    element.style.backgroundSize = 'contain';
    element.style.width = '25px';
    element.style.height = '25px';

    // creating object popup and injecting the value the key infoWindow. The value of the key infoWindow is dynamic and inside of my partial _info_window.html.erb
    // Pass the element as an argument to the new marker
    new mapboxgl.Marker(element) // creating a marker object
      .setLngLat([ marker.lng, marker.lat ]) // built in function from mapboxgl
      .setPopup(popup) //built-in function from mapboxgl and passing the popup created above as an argument
      .addTo(map); // built-in method add the marker to the map
    });
    fitMapToMarkers(map, markers)  // invoke the function fitMaptoMarkers defined above
    map.addControl(new MapboxGeocoder({ accessToken: mapboxgl.accessToken,
                                      mapboxgl: mapboxgl })); //search bar with autocomplete inside of my map
  }
};

export { initMapbox };
