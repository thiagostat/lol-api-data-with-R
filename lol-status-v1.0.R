#Functions to get information about status of lol website by region
getStatus <- function(){
  
  requestURL = paste("http://"
                     , region
                     , ".api.riotgames.com/lol/status/v1/shards?api_key="
                     , key
                     , sep = "")
  
  result <- fromJSON2(requestURL)
  
  return(result)
  
}

getStatusbyRegion <- function(region, key){
  
  #Regions = "br", "eune", "euw", "jp", "kr", "lan", "las", "na", "oce", "ru", "tr"
  requestURL = paste("http://"
                     , region
                     , ".api.riotgames.com/lol/status/v1/shard?api_key="
                     , key
                     , sep = "")
  
  result <- fromJSON2(requestURL)
  
  return(result)
  
}
