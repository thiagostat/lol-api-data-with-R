getSummoner <- function(summonerID, region, key){
  
  #Regions = "br", "eune", "euw", "jp", "kr", "lan", "las", "na", "oce", "ru", "tr"
  requestURL <- paste("https://"
                      , getLocation(region)
                      , ".api.riotgames.com/lol/summoner/v3/summoners/"
                      , summonerID
                      , "?api_key="
                      , key
                      , sep = "")
  
  result <- fromJSON2(requestURL)
  
  return(result)
  
}

getSummonerbyName <- function(name, region, key){
  
  #Regions = "br", "eune", "euw", "jp", "kr", "lan", "las", "na", "oce", "ru", "tr"
  requestURL <- paste("https://"
                      , getLocation(region)
                      , ".api.riotgames.com/lol/summoner/v3/summoners/by-name/"
                      , name
                      , "?api_key="
                      , key
                      , sep = "")
  
  result <- fromJSON2(requestURL)
  
  return(result)
  
}


getSummonerbyAccount <- function(accountID, region, key){
  
  #Regions = "br", "eune", "euw", "jp", "kr", "lan", "las", "na", "oce", "ru", "tr"
  requestURL <- paste("https://"
                      , getLocation(region)
                      , ".api.riotgames.com/lol/summoner/v3/summoners/by-account/"
                      , accountID
                      , "?api_key="
                      , key
                      , sep = "")
  
  result <- fromJSON2(requestURL)
  
  return(result)
  
}