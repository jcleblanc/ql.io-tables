-- SAMPLE: select * from twitter.home;
-- DOCUMENTATION: https://dev.twitter.com/docs/api/1/get/statuses/home_timeline
-- REQUIRES: twitter.auth.js (Header monkey patch for Twitter auth)

create table twitter.home on select get from 'https://api.twitter.com/1/statuses/home_timeline.{format}' using defaults format = 'json' using patch 'twitter.auth.js' select * from twitter.home;
