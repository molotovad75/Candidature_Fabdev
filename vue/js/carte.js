var mymap = L.map('mapid').setView([48.8534, 2.3488], 12);



L.tileLayer('https://api.mapbox.com/styles/v1/{id}/tiles/{z}/{x}/{y}?access_token={accessToken}', {
    attribution: 'Map data &copy; <a href="https://www.openstreetmap.org/">OpenStreetMap</a> contributors, <a href="https://creativecommons.org/licenses/by-sa/2.0/">CC-BY-SA</a>, Imagery © <a href="https://www.mapbox.com/">Mapbox</a>',
    maxZoom: 18,
    id: 'mapbox/streets-v11',
    tileSize: 512,
    zoomOffset: -1,
    accessToken: 'pk.eyJ1Ijoic2FsdXRhbXlhbWlnbyIsImEiOiJjazZxa3hhMXcwYWFyM25xbGJvOXhtYnp3In0.3CfXpHCip_7Qj8BPrG5FVQ'
}).addTo(mymap);


L.marker([48.841788, 2.268595]).addTo(mymap)
    .bindPopup('IUT Paris Descartes')
    .openPopup();