-- SAMPLE: select * from flickr.photos where tags="cool"; --
create table flickr.photos
   on select get from "http://api.flickr.com/services/rest/?method=flickr.photos.search&api_key={api_key}&user_id={user_id}&tags={tags}&tag_mode={tag_mode}&text={text}&min_upload_date={min_upload_date}&max_upload_date={max_upload_date}&min_taken_date={min_taken_date}&max_taken_date={max_taken_date}&license={license}&sort={sort}&privacy_filter={privacy_filter}&bbox={bbox}&accuracy={accuracy}&safe_search={safe_search}&content_type={content_type}&machine_tags={machine_tags}&machine_tag_mode={machine_tag_mode}&group_id={group_id}&contacts={contacts}&woe_id={woe_id}&place_id={place_id}&media={media}&has_geo={has_geo}&geo_context={geo_context}&lat={lat}&lon={lon}&radius={radius}&radius_units={radius_units}&is_commons={is_commons}&in_gallery={in_gallery}&is_getty={is_getty}&extras={extras}&per_page={per_page}&page={page}&format=json&nojsoncallback=1"
   using defaults api_key="09d25147ea6353a71871676e81ba7fae"
   resultset "photos.photo";

