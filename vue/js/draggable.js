$( function() {
    $( "#draggable" ).draggable();
  } );


  $(function() {
    $("#draggable").draggable({ 
        revert:  function(dropped) {
             var $draggable = $(this),
                 hasBeenDroppedBefore = $draggable.data('hasBeenDropped'),
                 wasJustDropped = dropped && dropped[0].id == "droppable";
             if(wasJustDropped) {
                 // don't revert, it's in the droppable
                 return false;
             } else {
                 if (hasBeenDroppedBefore) {
                     // don't rely on the built in revert, do it yourself
                     $draggable.animate({ top: 0, left: 0 }, 'slow');
                     return false;
                 } else {
                     // just let the build in work, although really, you could animate to 0,0 here as well
                     return true;
                 }
             }
        }
    });

    $("#mapid").droppable({
        activeClass: 'ui-state-hover',
        hoverClass: 'ui-state-active',
        drop: function(event, ui) {
            // creerMarker();
        }
    });


 function creerMarker() {

    var myIcon = L.icon({
        iconUrl: 'my-icon.png',
        iconSize: [38, 95],
        iconAnchor: [22, 94],
        popupAnchor: [-3, -76],
        shadowUrl: 'my-icon-shadow.png',
        shadowSize: [68, 95],
        shadowAnchor: [22, 94]
    });


    // L.marker([50.505, 30.57], {icon: myIcon}).addTo(map);
    // marker.on('dragend', function (e) {
    // document.getElementById('latitude').value = marker.getLatLng().lat;
    // document.getElementById('longitude').value = marker.getLatLng().lng;
    
}

    // $("#mapid").click(function(){
    // var mousePosition = L.geoportalControl.MousePosition({
    //     position : 'bottomright',
    //     collapsed : true
    // });
    // Console.log(mousePosition.position);
    // });


    // function onClick($)


    
        

    //     // var marker = L.marker([mousePoistion., 5.470247],{
    //     // draggable: true
    //     // }).addTo(map);
        
});