--SAMPLE: select * from lanyrd.calls where topic="javascript";
--SOURCE: http://lanyrd.com/calls/

create table lanyrd.calls 
    on select get from "http://lanyrd.com/topics/{topic}/calls/feed/" 
    using defaults topic="javascript";
