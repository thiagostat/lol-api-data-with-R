getTeam <- function(teamID, region, key){
  
  #Regions = "br", "eune", "euw", "jp", "kr", "lan", "las", "na", "oce", "ru", "tr"
  requestURL <- paste("https://"
                      , region
                      , ".api.pvp.net/api/lol/"
                      , region
                      , "/v2.4/team/"
                      , teamID
                      , "?"
                      , "api_key="
                      , key
                      , sep = "")
  
  result <- fromJSON2(requestURL)
  
  return(result)
  
}

getTeambySummoner <- function(summonerID, region, key){
  
  #Regions = "br", "eune", "euw", "jp", "kr", "lan", "las", "na", "oce", "ru", "tr"
  requestURL <- paste("https://"
                      , region
                      , ".api.pvp.net/api/lol/"
                      , region
                      , "/v2.4/team/by-summoner/"
                      , summonerID
                      , "?"
                      , "api_key="
                      , key
                      , sep = "")
  
  result <- fromJSON2(requestURL)
  
  return(result)
  
}
