getChampionMasteryAll <- function(summonerID, region, key){
  
  #Regions = "br", "eune", "euw", "jp", "kr", "lan", "las", "na", "oce", "ru", "tr"
  requestURL <- paste("https://"
                      , getLocation(region)
                      , ".api.riotgames.com/lol/champion-mastery/v3/champion-masteries/by-summoner/"
                      , summonerID
                      , "?api_key="
                      , key
                      , sep = "")
  
  result <- fromJSON2(requestURL)
  
  return(result)
  
}

getChampionMastery <- function(summonerID, championID, region, key){
  
  #Regions = "br", "eune", "euw", "jp", "kr", "lan", "las", "na", "oce", "ru", "tr"
  requestURL <- paste("https://"
                      , getLocation(region)
                      , ".api.riotgames.com/lol/champion-mastery/v3/champion-masteries/by-summoner/"
                      , summonerID
                      , "/by-champion/"
                      , championID
                      , "?api_key="
                      , key
                      , sep = "")
  
  result <- fromJSON2(requestURL)
  
  return(result)
  
}

getChampionMasteryScore <- function(summonerID, region, key){
  
  #Regions = "br", "eune", "euw", "jp", "kr", "lan", "las", "na", "oce", "ru", "tr"
  requestURL <- paste("https://"
                      , getLocation(region)
                      , ".api.riotgames.com/lol/champion-mastery/v3/scores/by-summoner/"
                      , summonerID
                      , "?api_key="
                      , key
                      , sep = "")
  
  result <- fromJSON2(requestURL)
  
  return(result)
  
}