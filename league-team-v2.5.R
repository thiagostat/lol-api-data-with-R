getLeaguebyTeam <- function(teamID, region, key){
  
  #Regions = "br", "eune", "euw", "jp", "kr", "lan", "las", "na", "oce", "ru", "tr"
  requestURL <- paste("https://"
                      , region
                      , ".api.pvp.net/api/lol/"
                      , region
                      , "/v2.5/league/by-team/"
                      , teamID
                      , "?api_key="
                      , key
                      , sep = "")
  
  result <- fromJSON2(requestURL)
  
  return(result)
  
}

getLeaguebyTeamEntry <- function(teamID, region, key){
  
  #Regions = "br", "eune", "euw", "jp", "kr", "lan", "las", "na", "oce", "ru", "tr"
  requestURL <- paste("https://"
                      , region
                      , ".api.pvp.net/api/lol/"
                      , region
                      , "/v2.5/league/by-team/"
                      , teamID
                      , "/entry?api_key="
                      , key
                      , sep = "")
  
  result <- fromJSON2(requestURL)
  
  return(result)
  
}
