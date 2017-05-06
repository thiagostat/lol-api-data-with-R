getStatusbyRegion <- function(region, key){
  
  #Regions = "br", "eune", "euw", "jp", "kr", "lan", "las", "na", "oce", "ru", "tr", "pbe"
  requestURL <- paste("https://"
                      , getLocation(region)
                      , ".api.riotgames.com/lol/status/v3/shard-data?api_key="
                      , key
                      , sep = "")
  
  result <- fromJSON2(requestURL)
  
  return(result)
  
}