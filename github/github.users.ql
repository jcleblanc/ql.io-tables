-- SAMPLE: select * from github.users where user="jcleblanc"
-- SOURCE: http://developer.github.com/v3/users/
create table github.users
   on select get from "https://api.github.com/users/{user}";
