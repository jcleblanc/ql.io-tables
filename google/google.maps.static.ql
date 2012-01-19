--SAMPLE: select * from google.maps.static where center="Brooklyn+Bridge,New+York,NY";
--SOURCE: http://code.google.com/apis/maps/documentation/staticmaps/

create table google.maps.static
    on select get from "http://maps.googleapis.com/maps/api/staticmap?center={center}&zoom={zoom}&size={size}&maptype={maptype}&sensor={sensor}"
    using defaults zoom="14",
                   size="512x512",
                   maptype="roadmap",
                   sensor="false";
