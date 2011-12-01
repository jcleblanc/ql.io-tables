-- SAMPLE: select * from google.books.search where q="programming"
-- SOURCE: http://code.google.com/apis/books/docs/v1/using.html#PerformingSearch
create table google.books.search
   on select get from "https://www.googleapis.com/books/v1/volumes?q={q}&orderBy={order}&projection={projection}&printType={printType}&startIndex={index}&maxResults={maxResults}&filter={filter}"
   using headers 'content-type' = 'application/json'
   using defaults order = "relevance",
                  projection = "full",
                  printType = "all",
                  index = "0",
                  maxResults = "10",
                  filter = "partial";
