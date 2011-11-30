-- SAMPLE: select * from github.activities where user="jcleblanc" --
create table slideshare
  on select get from "http://www.slideshare.net/rss/user/{user}";
