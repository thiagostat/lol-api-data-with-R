#Function to get information about league data
getLeagueMaster <- function(region, type, key){
  
  #Regions = "br", "eune", "euw", "jp", "kr", "lan", "las", "na", "oce", "ru", "tr"
  #League Type = "RANKED_FLEX_SR", "RANKED_FLEX_TT", "RANKED_SOLO_5x5", "RANKED_TEAM_3x3", "RANKED_TEAM_5x5" 
  requestURL <- paste("https://"
                      , region
                      , ".api.riotgames.com/api/lol/"
                      , region
                      , "/v2.5/league/master?type="
                      , type
                      , "&api_key="
                      , key
                      , sep = "")
  
  result <- fromJSON2(requestURL)
  
  return(result)
  
}

getLeagueChallenger <- function(region, type, key){
  
  #Regions = "br", "eune", "euw", "jp", "kr", "lan", "las", "na", "oce", "ru", "tr"
  #League Type = "RANKED_FLEX_SR", "RANKED_FLEX_TT", "RANKED_SOLO_5x5", "RANKED_TEAM_3x3", "RANKED_TEAM_5x5" 
  requestURL <- paste("https://"
                      , region
                      , ".api.riotgames.com/api/lol/"
                      , region
                      , "/v2.5/league/challenger?type="
                      , type
                      , "&api_key="
                      , key
                      , sep = "")
  
  result <- fromJSON2(requestURL)
  
  return(result)
  
}

getLeaguebySummoner <- function(summonerID, region, key){
  
  #Regions = "br", "eune", "euw", "jp", "kr", "lan", "las", "na", "oce", "ru", "tr"
  requestURL <- paste("https://"
                      , region
                      , ".api.riotgames.com/api/lol/"
                      , region
                      , "/v2.5/league/by-summoner/"
                      , summonerID
                      , "?api_key="
                      , key
                      , sep = "")
  
  result <- fromJSON2(requestURL)
  
  return(result)
  
}

getLeaguebySummonerEntry <- function(summonerID, region, key){
  
  #Regions = "br", "eune", "euw", "jp", "kr", "lan", "las", "na", "oce", "ru", "tr"
  requestURL <- paste("https://"
                      , region
                      , ".api.riotgames.com/api/lol/"
                      , region
                      , "/v2.5/league/by-summoner/"
                      , summonerID
                      , "/entry?api_key="
                      , key
                      , sep = "")
  
  result <- fromJSON2(requestURL)
  
  return(result)
  
}

