create table slideshare
  on select get from "http://www.slideshare.net/rss/user/{user}";
