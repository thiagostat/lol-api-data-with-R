getMatch <- function(matchID, region, key){
  
  #Regions = "br", "eune", "euw", "jp", "kr", "lan", "las", "na", "oce", "ru", "tr"
  requestURL <- paste("https://"
                      , getLocation(region)
                      , ".api.riotgames.com/lol/match/v3/matches/"
                      , matchID
                      , "?api_key="
                      , key
                      , sep = "")
  
  result <- fromJSON2(requestURL)
  
  return(result)
  
}

getMatchTimeline <- function(matchID, region, key){
  
  #Regions = "br", "eune", "euw", "jp", "kr", "lan", "las", "na", "oce", "ru", "tr"
  requestURL <- paste("https://"
                      , getLocation(region)
                      , ".api.riotgames.com/lol/match/v3/timelines/by-match/"
                      , matchID
                      , "?api_key="
                      , key
                      , sep = "")
  
  result <- fromJSON2(requestURL)
  
  return(result)
  
}

getRecentMatchList <- function(accountID, region, key){
  
  #Regions = "br", "eune", "euw", "jp", "kr", "lan", "las", "na", "oce", "ru", "tr"
  requestURL <- paste("https://"
                      , getLocation(region)
                      , ".api.riotgames.com/lol/match/v3/matchlists/by-account/"
                      , accountID
                      , "/recent?api_key="
                      , key
                      , sep = "")
  
  result <- fromJSON2(requestURL)
  
  return(result)
  
}

getMatchList <- function(accountID, championID = "", rankedqueues = "", seasons = "", begintime = "", endtime = ""
                         , beginindex = "", endindex = "", region , key){
  
  #Regions = "br", "eune", "euw", "jp", "kr", "lan", "las", "na", "oce", "ru", "tr"
  #RankedQueues = TEAM_BUILDER_DRAFT_RANKED_5x5, TEAM_BUILDER_RANKED_SOLO, RANKED_FLEX_SR, RANKED_SOLO_5x5, RANKED_TEAM_3x3, RANKED_TEAM_5x5
  #Seasons = 0-PRESEASON3, 1-SEASON3, 2-PRESEASON2014, 3-SEASON2014, 4-PRESEASON2015, 5-SEASON2015, 6-PRESEASON2016, 7-SEASON2016, 8-PRESEASON2017/SEASON2017
  requestURL <- paste("https://"
                      , getLocation(region)
                      , ".api.riotgames.com/lol/match/v3/matchlists/by-account/"
                      , accountID
                      , "?"
                      , ifelse(begintime == "", "", paste("beginTime=", begintime, "&", sep = ""))
                      , ifelse(endindex == "", "", paste("endIndex=", endindex, "&", sep = "")) 
                      , ifelse(seasons == "", "", paste("season=", seasons, "&", sep = ""))
                      , ifelse(championID == "", "", paste("champion=", championID, "&", sep = ""))
                      , ifelse(beginindex == "", "", paste("beginIndex=", beginindex, "&", sep = ""))
                      , ifelse(rankedqueues == "", "", paste("queue=", rankedqueues, "&", sep = ""))
                      , ifelse(endtime == "", "", paste("endTime=", endtime, "&", sep = ""))
                      , "api_key="
                      , key
                      , sep = "")
  
  result <- fromJSON2(requestURL)
  
  return(result)
  
}
