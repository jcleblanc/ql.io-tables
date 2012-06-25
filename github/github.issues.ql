-- SAMPLE: select * from github.issues where user="jcleblanc" and repository="ql.io-tables";
-- SOURCE: http://developer.github.com/v3/issues/
create table github.issues
   on select get from "https://api.github.com/repos/{user}/{repository}/issues?state={state}"
   using defaults state="open";
