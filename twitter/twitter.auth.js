//need oauth module installed - npm install oauth
var OAuth = require('oauth').OAuth;
 
exports['patch headers'] = function(options) {
    var uri = options.uri,h = options.headers, params = options.params,
              statement = options.statement, consumerKey = '',
              consumerSecret = '', accessToken = '';

    //user supplied parameters 
    consumerKey = params.consumerkey;
    consumerSecret = params.consumersecret;
    accessToken = params.accesstoken;
    accessTokenSecret = params.accesstokensecret;
 
    var oa = new OAuth("https://api.twitter.com/oauth/request_token",
        "https://api.twitter.com/oauth/access_token",
        consumerKey,
        consumerSecret,
        "1.0",
        null,
        "HMAC-SHA1");
 
    var orderedParameters = oa._prepareParameters(accessToken,
        accessTokenSecret, "GET",
        "https://api.twitter.com/1/statuses/home_timeline.json");
 
    var authorization = oa._buildAuthorizationHeaders(orderedParameters);
 
    h["Authorization"] = authorization;
 
    return h;
};
