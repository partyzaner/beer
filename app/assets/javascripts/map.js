function render() {
    handler = Gmaps.build('Google');
    handler.buildMap({ provider: {}, internal: {id: 'map'}}, function () {
        markers = handler.addMarkers(
            $('#map').data('markers')
        );
        handler.bounds.extendWith(markers);
        handler.fitMapToBounds();
    });
}

$(document).ready(function(){render()})