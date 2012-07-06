-- SAMPLE: select * from slideshare.slideshows where user="jcleblanc" --
create table slideshare.slideshows
   on select get from "http://www.slideshare.net/rss/user/{user}"
   resultset "rss.channel";
