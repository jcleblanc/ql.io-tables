--CURL SAMPLE: curl -d "user=jcleblanc&query=ql.io" http://localhost:3000/github_profile_twitter_search
--DESCRIPTION: Assumes matching github + Twitter ids. For each Twitter search result from a given user, supply Github profile info with the tweet text 

profile = select * from github.users where user="{user}";
twitter = select * from twitter.search where q="{query}";

return select p.name, p.location, p.login, t.text from profile as p, twitter as t where p.login = t.from_user via route '/github_profile_twitter_search' using method post;
