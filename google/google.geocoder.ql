-- SAMPLE: select * from google.geocoder where address="22215+N+First+Ave,+San+Jose,+CA"
-- SOURCE: http://code.google.com/apis/maps/documentation/geocoding/

create table google.geocoder
  on select get from "http://maps.googleapis.com/maps/api/geocode/json?address={address}&sensor={sensor}"
  using defaults sensor = "false";
