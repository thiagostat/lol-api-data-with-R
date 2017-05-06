#Functios to get featured games
getFeaturedGames <- function(region, key){
  
  #Regions = "br", "eune", "euw", "jp", "kr", "lan", "las", "na", "oce", "ru", "tr"
  requestURL <- paste("https://"
                      , getLocation(region)
                      , ".api.riotgames.com/lol/spectator/v3/featured-games?api_key="
                      , key
                      , sep = "")
  
  result <- fromJSON2(requestURL)
  
  return(result)
  
}

getCurrentGame <- function(summonerID, region, key){
  
  #Regions = "br", "eune", "euw", "jp", "kr", "lan", "las", "na", "oce", "ru", "tr"
  requestURL <- paste("https://"
                      , getLocation(region)
                      , ".api.riotgames.com/lol/spectator/v3/active-games/by-summoner/"
                      , summonerID
                      , "?api_key="
                      , key
                      , sep = "")
  
  result <- fromJSON2(requestURL)
  
  return(result)
  
}