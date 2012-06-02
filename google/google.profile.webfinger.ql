--DESCRIPTION: Uses webfinger to collect public profile information & portable contacts link from a gmail address
--SAMPLE: select * from webfinger.google where email="nakedtechnologist@gmail.com";

create table google.profile.webfinger 
    on select get from "http://www.google.com/s2/webfinger/?q={email}";
