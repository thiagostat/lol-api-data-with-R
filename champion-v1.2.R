getChampionList <- function(freeToPlay = "", region, key){
  
  #freeToPlay = "", "true" or "false"
  #Regions = "br", "eune", "euw", "jp", "kr", "lan", "las", "na", "oce", "ru", "tr"
  requestURL <- paste("https://"
                      , region
                      , ".api.riotgames.com/api/lol/"
                      , region
                      , "/v1.2/champion?"
                      , ifelse(freeToPlay == "", "", paste("freeToPlay=", freeToPlay, "&", sep = ""))
                      , "api_key="
                      , key
                      , sep = "")
  
  result <- fromJSON2(requestURL)
  
  return(result)
  
}

getChampion <- function(championID, region, key){
  
  #Regions = "br", "eune", "euw", "jp", "kr", "lan", "las", "na", "oce", "ru", "tr"
  requestURL <- paste("https://"
                      , region
                      , ".api.riotgames.com/api/lol/"
                      , region
                      , "/v1.2/champion/"
                      , championID
                      , "?api_key="
                      , key
                      , sep = "")
  
  result <- fromJSON2(requestURL)
  
  return(result)
  
}