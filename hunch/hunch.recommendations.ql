--SAMPLE: select * from hunch.recommendations where user_id="tw_jcleblanc" and topics="list_twitter-user,list_tech-website"
--DOCUMENTATION: http://hunch.com/developers/v1/
--TOPICS: http://hunch.com/developers/v1/resources/topics/

create table hunch.recommendations 
    on select get from "http://api.hunch.com/api/v1/get-recommendations/?user_id={user_id}&topic_ids={topics}&limit={limit}"
    using defaults topics="list_magazine",
                   limit="3";
