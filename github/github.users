-- SAMPLE: select * from github.users where user="jcleblanc"
-- SOURCE: http://develop.github.com/p/users.html
create table github.users
   on select get from "http://github.com/api/v2/json/user/show/{user}";
