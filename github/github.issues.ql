-- SAMPLE: select * from github.issues where user="jcleblanc" and repository="ql.io-tables"; --
-- SOURCE: http://develop.github.com/p/issues.html --
create table github.issues
   on select get from "https://github.com/api/v2/json/issues/list/{user}/{repository}/{state}/"
   using defaults state="open";
