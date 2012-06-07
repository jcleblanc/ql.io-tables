-- SAMPLE: select * from craigslist.search where location="sfbay" and query="bike";
-- DOCUMENTATION: http://www.craigslist.org/

create table craigslist.search 
    on select get from "http://{location}.craigslist.org/search/{type}?query={query}&format=rss" 
    using defaults type="sss", 
                   location="sfbay";
