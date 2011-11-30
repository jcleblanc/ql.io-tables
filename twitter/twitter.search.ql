-- SAMPLE: select * from twitter.search where q="node.js"; --
create table twitter.search
   on select get from "http://search.twitter.com/search.json?q={q}&rpp={rpp}&include_entities={entities}&result_type={result_type}"
   using defaults rpp="10",
                  entities="true",
                  result_type="mixed";
