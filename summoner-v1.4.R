getSummonerbyName <- function(name, region, key){
  
  #Regions = "br", "eune", "euw", "jp", "kr", "lan", "las", "na", "oce", "ru", "tr"
  requestURL <- paste("https://"
                      , region
                      , ".api.riotgames.com/api/lol/"
                      , region
                      , "/v1.4/summoner/by-name/"
                      , name
                      , "?"
                      , "api_key="
                      , key
                      , sep = "")
  
  result <- fromJSON2(requestURL)
  
  return(result)
  
}

getSummoner <- function(summonerID, region, key){
  
  #Regions = "br", "eune", "euw", "jp", "kr", "lan", "las", "na", "oce", "ru", "tr"
  requestURL <- paste("https://"
                      , region
                      , ".api.riotgames.com/api/lol/"
                      , region
                      , "/v1.4/summoner/"
                      , summonerID
                      , "?"
                      , "api_key="
                      , key
                      , sep = "")
  
  result <- fromJSON2(requestURL)
  
  return(result)
  
}

getSummonerName <- function(summonerID, region, key){
  
  #Regions = "br", "eune", "euw", "jp", "kr", "lan", "las", "na", "oce", "ru", "tr"
  requestURL <- paste("https://"
                      , region
                      , ".api.riotgames.com/api/lol/"
                      , region
                      , "/v1.4/summoner/"
                      , summonerID
                      , "/name?"
                      , "api_key="
                      , key
                      , sep = "")
  
  result <- fromJSON2(requestURL)
  
  return(result)
  
}

getSummonerbyAccount <- function(accountID, region, key){
  
  #Regions = "br", "eune", "euw", "jp", "kr", "lan", "las", "na", "oce", "ru", "tr"
  requestURL <- paste("https://"
                      , region
                      , ".api.riotgames.com/api/lol/"
                      , region
                      , "/v1.4/summoner/by-account/"
                      , accountID
                      , "?api_key="
                      , key
                      , sep = "")
  
  result <- fromJSON2(requestURL)
  
  return(result)
  
}
