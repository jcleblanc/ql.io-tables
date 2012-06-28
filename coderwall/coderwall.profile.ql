-- SAMPLE: select * from coderwall.profile where username="jcleblanc";
-- DOCUMENTATION: http://coderwall.com/api
create table coderwall.profile on select get from "http://coderwall.com/{username}.json";
