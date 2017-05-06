getChampionMasteryScore <- function(summonerID, region, key){
  
  #Regions = "br", "eune", "euw", "jp", "kr", "lan", "las", "na", "oce", "ru", "tr"
  requestURL <- paste("https://"
                      , getLocation(region)
                      , ".api.riotgaes.com/championmastery/location/"
                      , getLocation(region)
                      , "/player/"
                      , summonerID
                      , "/score?api_key="
                      , key
                      , sep = "")
  
  result <- fromJSON2(requestURL)
  
  return(result)
  
}

getChampionMasteryTop <- function(summonerID, count, region, key){
  
  #Regions = "br", "eune", "euw", "jp", "kr", "lan", "las", "na", "oce", "ru", "tr"
  requestURL <- paste("https://"
                      , getLocation(region)
                      , ".api.riotgames.com/championmastery/location/"
                      , getLocation(region)
                      , "/player/"
                      , summonerID
                      , "/topchampions?count="
                      , count
                      , "&api_key="
                      , key
                      , sep = "")
  
  result <- fromJSON2(requestURL)
  
  return(result)
  
}

getChampionMasteryAll <- function(summonerID, region, key){
  
  #Regions = "br", "eune", "euw", "jp", "kr", "lan", "las", "na", "oce", "ru", "tr"
  requestURL <- paste("https://"
                      , getLocation(region)
                      , ".api.riotgames.com/championmastery/location/"
                      , getLocation(region)
                      , "/player/"
                      , summonerID
                      , "/champions?api_key="
                      , key
                      , sep = "")
  
  result <- fromJSON2(requestURL)
  
  return(result)
  
}

getChampionMastery <- function(summonerID, championID, region, key){
  
  #Regions = "br", "eune", "euw", "jp", "kr", "lan", "las", "na", "oce", "ru", "tr"
  requestURL <- paste("https://"
                      , getLocation(region)
                      , ".api.riotgames.com/championmastery/location/"
                      , getLocation(region)
                      , "/player/"
                      , summonerID
                      , "/champion/"
                      , championID
                      , "?api_key="
                      , key
                      , sep = "")
  
  result <- fromJSON2(requestURL)
  
  return(result)
  
}
