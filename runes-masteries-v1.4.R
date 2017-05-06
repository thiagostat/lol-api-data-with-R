getSummonerMasteries <- function(summonerID, region, key){
  
  #Regions = "br", "eune", "euw", "jp", "kr", "lan", "las", "na", "oce", "ru", "tr"
  requestURL <- paste("https://"
                      , region
                      , ".api.riotgames.com/api/lol/"
                      , region
                      , "/v1.4/summoner/"
                      , summonerID
                      , "/masteries?"
                      , "api_key="
                      , key
                      , sep = "")
  
  result <- fromJSON2(requestURL)
  
  return(result)
  
}

getSummonerRunes <- function(summonerID, region, key){
  
  #Regions = "br", "eune", "euw", "jp", "kr", "lan", "las", "na", "oce", "ru", "tr"
  requestURL <- paste("https://"
                      , region
                      , ".api.riotgames.com/api/lol/"
                      , region
                      , "/v1.4/summoner/"
                      , summonerID
                      , "/runes?"
                      , "api_key="
                      , key
                      , sep = "")
  
  result <- fromJSON2(requestURL)
  
  return(result)
  
}