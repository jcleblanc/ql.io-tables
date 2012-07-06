-- SAMPLE: select * from slideshare.slideshow where key="12345" and time="1341588036" and hash="0da717d2f1ed24c40c08ffd17afdd9685" and url="http://www.slideshare.net/jcleblanc/2012-qlio-and-nodejs";
-- DOCUMENTATION: http://www.slideshare.net/developers/documentation#get_slideshow

create table slideshare.slideshow 
    on select get from "http://www.slideshare.net/api/2/get_slideshow?api_key={key}&ts={time}&hash={hash}&slideshow_url={url}&detailed={detailed}" 
    using defaults "detailed"=1
