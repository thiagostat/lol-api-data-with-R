getVersionData <- function(region, key){
  
  #Regions = "br", "eune", "euw", "jp", "kr", "lan", "las", "na", "oce", "ru", "tr"
  requestURL <- paste("https://global.api.riotgames.com/api/lol/static-data/"
                      , region
                      , "/v1.2/versions?api_key="
                      , key
                      , sep = "")
  
  result <- fromJSON2(requestURL)
  
  return(result)
  
}

getLanguageData <- function(region, key){
  
  #Regions = "br", "eune", "euw", "jp", "kr", "lan", "las", "na", "oce", "ru", "tr"
  requestURL <- paste("https://global.api.riotgames.com/api/lol/static-data/"
                      , region
                      , "/v1.2/languages?api_key="
                      , key
                      , sep = "")
  
  result <- fromJSON2(requestURL)
  
  return(result)
  
}

getRealmData <- function(region, key){
  
  #Regions = "br", "eune", "euw", "jp", "kr", "lan", "las", "na", "oce", "ru", "tr"
  requestURL <- paste("https://global.api.riotgames.com/api/lol/static-data/"
                      , region
                      , "/v1.2/realm?api_key="
                      , key
                      , sep = "")
  
  result <- fromJSON2(requestURL)
  
  return(result)
  
}

getStringData <- function(region, locale = "", version = "" , key){
  
  #Regions = "br", "eune", "euw", "jp", "kr", "lan", "las", "na", "oce", "ru", "tr"
  requestURL <- paste("https://global.api.riotgames.com/api/lol/static-data/"
                      , region
                      , "/v1.2/language-strings?"
                      , ifelse(locale == "", "", paste("locale=", locale, "&", sep = ""))
                      , ifelse(version == "", "", paste("version=", version, "&", sep = ""))
                      , "api_key="
                      , key
                      , sep = "")
  
  result <- fromJSON2(requestURL)
  
  return(result)
  
}

getMapData <- function(region, locale = "", version = "" , key){
  
  #Regions = "br", "eune", "euw", "jp", "kr", "lan", "las", "na", "oce", "ru", "tr"
  requestURL <- paste("https://global.api.riotgames.com/api/lol/static-data/"
                      , region
                      , "/v1.2/map?"
                      , ifelse(locale == "", "", paste("locale=", locale, "&", sep = ""))
                      , ifelse(version == "", "", paste("version=", version, "&", sep = ""))
                      , "api_key="
                      , key
                      , sep = "")
  
  result <- fromJSON2(requestURL)
  
  return(result)
  
}

getChampionData <- function(region, locale = "", version = "" , databyid = "", champdata = "", key){
  
  #Regions = "br", "eune", "euw", "jp", "kr", "lan", "las", "na", "oce", "ru", "tr"
  #ChampData = "all", "allytips", "altimages", "blurb", "enemytips", "image", "info", "lore", "partype", "passive", "recommended", "skins", "spells", "stats", "tags"
  requestURL <- paste("https://global.api.riotgames.com/api/lol/static-data/"
                      , region
                      , "/v1.2/champion?"
                      , ifelse(locale == "", "", paste("locale=", locale, "&", sep = ""))
                      , ifelse(version == "", "", paste("version=", version, "&", sep = ""))
                      , ifelse(databyid == "", "", paste("dataById=", databyid, "&", sep = ""))
                      , ifelse(champdata == "", "", paste("champData=", champdata, "&", sep = ""))
                      , "api_key="
                      , key
                      , sep = "")
  
  result <- fromJSON2(requestURL)
  
  return(result)
  
}

getChampionDatabyID <- function(championID, region, locale = "", version = "" , databyid = "", champdata = "", key){
  
  #Regions = "br", "eune", "euw", "jp", "kr", "lan", "las", "na", "oce", "ru", "tr"
  #ChampData = "all", "allytips", "altimages", "blurb", "enemytips", "image", "info", "lore", "partype", "passive", "recommended", "skins", "spells", "stats", "tags"
  requestURL <- paste("https://global.api.riotgames.com/api/lol/static-data/"
                      , region
                      , "/v1.2/champion/"
                      ,championID
                      ,"?"
                      , ifelse(locale == "", "", paste("locale=", locale, "&", sep = ""))
                      , ifelse(version == "", "", paste("version=", version, "&", sep = ""))
                      , ifelse(databyid == "", "", paste("dataById=", databyid, "&", sep = ""))
                      , ifelse(champdata == "", "", paste("champData=", champdata, "&", sep = ""))
                      , "api_key="
                      , key
                      , sep = "")
  
  result <- fromJSON2(requestURL)
  
  return(result)
  
}

getItemData <- function(region, locale = "", version = "" , itemlistdata = "", key){
  
  #Regions = "br", "eune", "euw", "jp", "kr", "lan", "las", "na", "oce", "ru", "tr"
  #ItemListData = "all", "colloq", "consumeOnFull", "consumed", "depth", "effect", "from", "gold", "hideFromAll", "image", "inStore"
  #, "into",  "maps", "requiredChampion", "sanitizedDescription", "specialRecipe", "stacks", "stats", "tags"
  requestURL <- paste("https://global.api.riotgames.com/api/lol/static-data/"
                      , region
                      , "/v1.2/item?"
                      , ifelse(locale == "", "", paste("locale=", locale, "&", sep = ""))
                      , ifelse(version == "", "", paste("version=", version, "&", sep = ""))
                      , ifelse(itemlistdata == "", "", paste("itemListData=", itemlistdata, "&", sep = ""))
                      , "api_key="
                      , key
                      , sep = "")
  
  result <- fromJSON2(requestURL)
  
  return(result)
  
}

getItemDatabyID <- function(itemID, region, locale = "", version = "" , itemdata = "", key){
  
  #Regions = "br", "eune", "euw", "jp", "kr", "lan", "las", "na", "oce", "ru", "tr"
  #itemData = "all", "colloq", "consumeOnFull", "consumed", "depth", "effect", "from", "gold", "hideFromAll", "image", "inStore"
  #, "into",  "maps", "requiredChampion", "sanitizedDescription", "specialRecipe", "stacks", "stats", "tags"
  requestURL <- paste("https://global.api.riotgames.com/api/lol/static-data/"
                      , region
                      , "/v1.2/item/"
                      ,itemID
                      ,"?"
                      , ifelse(locale == "", "", paste("locale=", locale, "&", sep = ""))
                      , ifelse(version == "", "", paste("version=", version, "&", sep = ""))
                      , ifelse(itemdata == "", "", paste("itemData=", itemdata, "&", sep = ""))
                      , "api_key="
                      , key
                      , sep = "")
  
  result <- fromJSON2(requestURL)
  
  return(result)
  
}

getMasteryData <- function(region, locale = "", version = "" , masterylistdata = "", key){
  
  #Regions = "br", "eune", "euw", "jp", "kr", "lan", "las", "na", "oce", "ru", "tr"
  #masteryListData = "all", "image", "materyTree", "prereq", "ranks", "sanitizedDescription", "tree"
  requestURL <- paste("https://global.api.riotgames.com/api/lol/static-data/"
                      , region
                      , "/v1.2/mastery?"
                      , ifelse(locale == "", "", paste("locale=", locale, "&", sep = ""))
                      , ifelse(version == "", "", paste("version=", version, "&", sep = ""))
                      , ifelse(masterylistdata == "", "", paste("masteryListData=", masterylistdata, "&", sep = ""))
                      , "api_key="
                      , key
                      , sep = "")
  
  result <- fromJSON2(requestURL)
  
  return(result)
  
}

getMasteryDatabyID <- function(masteryID, region, locale = "", version = "" , masterydata = "", key){
  
  #Regions = "br", "eune", "euw", "jp", "kr", "lan", "las", "na", "oce", "ru", "tr"
  #masteryListData = "all", "image", "materyTree", "prereq", "ranks", "sanitizedDescription", "tree"
  requestURL <- paste("https://global.api.riotgames.com/api/lol/static-data/"
                      , region
                      , "/v1.2/mastery/"
                      ,masteryID
                      ,"?"
                      , ifelse(locale == "", "", paste("locale=", locale, "&", sep = ""))
                      , ifelse(version == "", "", paste("version=", version, "&", sep = ""))
                      , ifelse(masterydata == "", "", paste("masteryData=", masterydata, "&", sep = ""))
                      , "api_key="
                      , key
                      , sep = "")
  
  result <- fromJSON2(requestURL)
  
  return(result)
  
}

getRuneData <- function(region, locale = "", version = "" , runelistdata = "", key){
  
  #Regions = "br", "eune", "euw", "jp", "kr", "lan", "las", "na", "oce", "ru", "tr"
  #runeListData = "all", "basic", "colloq", "consumeOnFull", "consumed", "depth", "from", "gold", "hideFromAll", "image", "inStore"
  #, "into", "maps", "requiredChampion", "sanitizedDescrption", "specialRecipe", "stacks", "stats", "tags"
  requestURL <- paste("https://global.api.riotgames.com/api/lol/static-data/"
                      , region
                      , "/v1.2/rune?"
                      , ifelse(locale == "", "", paste("locale=", locale, "&", sep = ""))
                      , ifelse(version == "", "", paste("version=", version, "&", sep = ""))
                      , ifelse(runelistdata == "", "", paste("runeListData=", runelistdata, "&", sep = ""))
                      , "api_key="
                      , key
                      , sep = "")
  
  result <- fromJSON2(requestURL)
  
  return(result)
  
}

getRuneDatabyID <- function(runeID, region, locale = "", version = "" , runedata = "", key){
  
  #Regions = "br", "eune", "euw", "jp", "kr", "lan", "las", "na", "oce", "ru", "tr"
  #runeListData = "all", "basic", "colloq", "consumeOnFull", "consumed", "depth", "from", "gold", "hideFromAll", "image", "inStore"
  #, "into", "maps", "requiredChampion", "sanitizedDescrption", "specialRecipe", "stacks", "stats", "tags"
  requestURL <- paste("https://global.api.riotgames.com/api/lol/static-data/"
                      , region
                      , "/v1.2/rune/"
                      , runeID
                      ,"?"
                      , ifelse(locale == "", "", paste("locale=", locale, "&", sep = ""))
                      , ifelse(version == "", "", paste("version=", version, "&", sep = ""))
                      , ifelse(runedata == "", "", paste("runeData=", runedata, "&", sep = ""))
                      , "api_key="
                      , key
                      , sep = "")
  
  result <- fromJSON2(requestURL)
  
  return(result)
  
}

getSummonerSpellData <- function(region, locale = "", version = "" , databyid = "", spelldata = "", key){
  
  #Regions = "br", "eune", "euw", "jp", "kr", "lan", "las", "na", "oce", "ru", "tr"
  #spellData = "all", "cooldown", "cooldownBurn", "cost", "costBurn", "costType", "effect", "effectBurn", "image", "key"
  #, "leveltip", "maxrank", "modes", "range", "rangeBurn", "sanitizedDescription", "sanitizedTooltip", "tooltip", "vars"
  requestURL <- paste("https://global.api.riotgames.com/api/lol/static-data/"
                      , region
                      , "/v1.2/summoner-spell?"
                      , ifelse(locale == "", "", paste("locale=", locale, "&", sep = ""))
                      , ifelse(version == "", "", paste("version=", version, "&", sep = ""))
                      , ifelse(databyid == "", "", paste("dataById=", databyid, "&", sep = ""))
                      , ifelse(spelldata == "", "", paste("spellData=", spelldata, "&", sep = ""))
                      , "api_key="
                      , key
                      , sep = "")
  
  result <- fromJSON2(requestURL)
  
  return(result)
  
}

getSummonerSpellDatabyID <- function(spellID, region, locale = "", version = "" , spelldata = "", key){
  
  #Regions = "br", "eune", "euw", "jp", "kr", "lan", "las", "na", "oce", "ru", "tr"
  #spellData = "all", "cooldown", "cooldownBurn", "cost", "costBurn", "costType", "effect", "effectBurn", "image", "key"
  #, "leveltip", "maxrank", "modes", "range", "rangeBurn", "sanitizedDescription", "sanitizedTooltip", "tooltip", "vars"
  requestURL <- paste("https://global.api.riotgames.com/api/lol/static-data/"
                      , region
                      , "/v1.2/summoner-spell/"
                      ,spellID
                      ,"?"
                      , ifelse(locale == "", "", paste("locale=", locale, "&", sep = ""))
                      , ifelse(version == "", "", paste("version=", version, "&", sep = ""))
                      , ifelse(spelldata == "", "", paste("spellData=", spelldata, "&", sep = ""))
                      , "api_key="
                      , key
                      , sep = "")
  
  result <- fromJSON2(requestURL)
  
  return(result)
  
}
