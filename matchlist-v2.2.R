getMatchList <- function(summonerID, championID = "", rankedqueues = "", seasons = "", begintime = "", endtime = ""
                         , beginindex = "", endindex = "", region , key){
  
  #Regions = "br", "eune", "euw", "jp", "kr", "lan", "las", "na", "oce", "ru", "tr"
  #RankedQueues = TEAM_BUILDER_DRAFT_RANKED_5x5, TEAM_BUILDER_RANKED_SOLO, RANKED_FLEX_SR, RANKED_SOLO_5x5, RANKED_TEAM_3x3, RANKED_TEAM_5x5
  #Seasons = PRESEASON3, SEASON3, PRESEASON2014, SEASON2014, PRESEASON2015, SEASON2015, PRESEASON2016, SEASON2016, PRESEASON2017, SEASON2017
  requestURL <- paste("https://"
                      , region
                      , ".api.riotgames.com/api/lol/"
                      , region
                      , "/v2.2/matchlist/by-summoner/"
                      , summonerID
                      , "?"
                      , ifelse(championID == "", "", paste("championIds=", championID, "&", sep = ""))
                      , ifelse(rankedqueues == "", "", paste("rankedQueues=", rankedqueues, "&", sep = ""))
                      , ifelse(seasons == "", "", paste("seasons=", seasons, "&", sep = ""))
                      , ifelse(begintime == "", "", paste("beginTime=", begintime, "&", sep = ""))
                      , ifelse(endtime == "", "", paste("endTime=", endtime, "&", sep = ""))
                      , ifelse(beginindex == "", "", paste("beginIndex=", beginindex, "&", sep = ""))
                      , ifelse(endindex == "", "", paste("endIndex=", endindex, "&", sep = ""))
                      , "api_key="
                      , key
                      , sep = "")
  
  result <- fromJSON2(requestURL)
  
  return(result)
  
}
