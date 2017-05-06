getMatch <- function(matchID, includetimeline = "false", region, key){
  
  #Regions = "br", "eune", "euw", "jp", "kr", "lan", "las", "na", "oce", "ru", "tr"
  requestURL <- paste("https://"
                      , region
                      , ".api.riotgames.com/api/lol/"
                      , region
                      , "/v2.2/match/"
                      , matchID
                      , "?"
                      , ifelse(includetimeline == "", "", paste("includeTimeline=", includetimeline, "&", sep = ""))
                      , "api_key="
                      , key
                      , sep = "")
  
  result <- fromJSON2(requestURL)
  
  return(result)
  
}
