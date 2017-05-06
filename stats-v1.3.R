getSummonerSummary <- function(summonerID, season, region, key){
  
  #Seasons = "SEASON3", "SEASON2014", "SEASON2015", "SEASON2016", "SEASON2017"
  #Regions = "br", "eune", "euw", "jp", "kr", "lan", "las", "na", "oce", "ru", "tr"
  requestURL <- paste("https://"
                      , region
                      , ".api.pvp.net/api/lol/"
                      , region
                      , "/v1.3/stats/by-summoner/"
                      , summonerID
                      , "/summary?season="
                      , season
                      , "&api_key="
                      , key
                      , sep = "")
  
  result <- fromJSON2(requestURL)
  
  return(result)
  
}

getSummonerRankedStats <- function(summonerID, season, region, key){
  
  #Seasons = "SEASON3", "SEASON2014", "SEASON2015", "SEASON2016", "SEASON2017"
  #Regions = "br", "eune", "euw", "jp", "kr", "lan", "las", "na", "oce", "ru", "tr"
  requestURL <- paste("https://"
                      , region
                      , ".api.pvp.net/api/lol/"
                      , region
                      , "/v1.3/stats/by-summoner/"
                      , summonerID
                      , "/ranked?season="
                      , season
                      , "&api_key="
                      , key
                      , sep = "")
  
  result <- fromJSON2(requestURL)
  
  return(result)
  
}