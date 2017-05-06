getVersionData <- function(region, key){
  
  #Regions = "br", "eune", "euw", "jp", "kr", "lan", "las", "na", "oce", "ru", "tr"
  requestURL <- paste("https://"
                      , getLocation(region)
                      , ".api.riotgames.com/lol/static-data/v3/versions?api_key="
                      , key
                      , sep = "")
  
  result <- fromJSON2(requestURL)
  
  return(result)
  
}

getLanguageData <- function(region, key){
  
  #Regions = "br", "eune", "euw", "jp", "kr", "lan", "las", "na", "oce", "ru", "tr"
  requestURL <- paste("https://"
                      , getLocation(region)
                      , ".api.riotgames.com/lol/static-data/v3/languages?api_key="
                      , key
                      , sep = "")
  
  result <- fromJSON2(requestURL)
  
  return(result)
  
}

getRealmData <- function(region, key){
  
  #Regions = "br", "eune", "euw", "jp", "kr", "lan", "las", "na", "oce", "ru", "tr"
  requestURL <- paste("https://"
                      , getLocation(region)
                      , ".api.riotgames.com/lol/static-data/v3/realms?api_key="
                      , key
                      , sep = "")
  
  result <- fromJSON2(requestURL)
  
  return(result)
  
}

getStringData <- function(region, locale = "", version = "" , key){
  
  #Regions = "br", "eune", "euw", "jp", "kr", "lan", "las", "na", "oce", "ru", "tr"
  requestURL <- paste("https://"
                      , getLocation(region)
                      , ".api.riotgames.com/lol/static-data/v3/language-strings?"
                      , ifelse(version == "", "", paste("version=", version, "&", sep = ""))
                      , ifelse(locale == "", "", paste("locale=", locale, "&", sep = ""))
                      , "api_key="
                      , key
                      , sep = "")
  
  result <- fromJSON2(requestURL)
  
  return(result)
  
}

getMapData <- function(region, locale = "", version = "" , key){
  
  #Regions = "br", "eune", "euw", "jp", "kr", "lan", "las", "na", "oce", "ru", "tr"
  requestURL <- paste("https://"
                      , getLocation(region)
                      , ".api.riotgames.com/lol/static-data/v3/maps?"
                      , ifelse(version == "", "", paste("version=", version, "&", sep = ""))
                      , ifelse(locale == "", "", paste("locale=", locale, "&", sep = ""))
                      , "api_key="
                      , key
                      , sep = "")
  
  
  result <- fromJSON2(requestURL)
  
  return(result)
  
}

getChampionData <- function(region, locale = "", version = "" , databyid = "", champdata = "", key){
  
  #Regions = "br", "eune", "euw", "jp", "kr", "lan", "las", "na", "oce", "ru", "tr"
  #ChampData = "all", "allytips", "altimages", "blurb", "enemytips", "image", "info", "lore", "partype", "passive", "recommended", "skins", "spells", "stats", "tags"
  requestURL <- paste("https://"
                      , getLocation(region)
                      , ".api.riotgames.com/lol/static-data/v3/champions?"
                      , ifelse(version == "", "", paste("version=", version, "&", sep = ""))
                      , ifelse(champdata == "", "", paste("champListData=", champdata, "&", sep = ""))
                      , ifelse(databyid == "", "", paste("dataById=", databyid, "&", sep = ""))
                      , ifelse(locale == "", "", paste("locale=", locale, "&", sep = ""))
                      , "api_key="
                      , key
                      , sep = "")
  
  result <- fromJSON2(requestURL)
  
  return(result)
  
}

getChampionDatabyID <- function(championID, region, locale = "", version = "" , databyid = "", champdata = "", key){
  
  #Regions = "br", "eune", "euw", "jp", "kr", "lan", "las", "na", "oce", "ru", "tr"
  #ChampData = "all", "allytips", "altimages", "blurb", "enemytips", "image", "info", "lore", "partype", "passive", "recommended", "skins", "spells", "stats", "tags"
  requestURL <- paste("https://"
                      , getLocation(region)
                      , ".api.riotgames.com/lol/static-data/v3/champions/"
                      , championID
                      , "?"
                      , ifelse(version == "", "", paste("version=", version, "&", sep = ""))
                      , ifelse(champdata == "", "", paste("champData=", champdata, "&", sep = ""))
                      , ifelse(locale == "", "", paste("locale=", locale, "&", sep = ""))
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
  requestURL <- paste("https://"
                      , getLocation(region)
                      , ".api.riotgames.com/lol/static-data/v3/items?"
                      , ifelse(version == "", "", paste("version=", version, "&", sep = ""))
                      , ifelse(itemlistdata == "", "", paste("itemListData=", itemlistdata, "&", sep = ""))
                      , ifelse(locale == "", "", paste("locale=", locale, "&", sep = ""))
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
  requestURL <- paste("https://"
                      , getLocation(region)
                      , ".api.riotgames.com/lol/static-data/v3/items/"
                      , itemID
                      , "?"
                      , ifelse(version == "", "", paste("version=", version, "&", sep = ""))
                      , ifelse(itemdata == "", "", paste("itemData=", itemlistdata, "&", sep = ""))
                      , ifelse(locale == "", "", paste("locale=", locale, "&", sep = ""))
                      , "api_key="
                      , key
                      , sep = "")
  
  result <- fromJSON2(requestURL)
  
  return(result)
  
}

getMasteryData <- function(region, locale = "", version = "" , masterylistdata = "", key){
  
  #Regions = "br", "eune", "euw", "jp", "kr", "lan", "las", "na", "oce", "ru", "tr"
  #masteryListData = "all", "image", "materyTree", "prereq", "ranks", "sanitizedDescription", "tree"
  requestURL <- paste("https://"
                      , getLocation(region)
                      , ".api.riotgames.com/lol/static-data/v3/masteries?"
                      , ifelse(version == "", "", paste("version=", version, "&", sep = ""))
                      , ifelse(masterylistdata == "", "", paste("masteryListData=", masterylistdata, "&", sep = ""))
                      , ifelse(locale == "", "", paste("locale=", locale, "&", sep = ""))
                      , "api_key="
                      , key
                      , sep = "")
  
  result <- fromJSON2(requestURL)
  
  return(result)
  
}

getMasteryDatabyID <- function(masteryID, region, locale = "", version = "" , masterydata = "", key){
  
  #Regions = "br", "eune", "euw", "jp", "kr", "lan", "las", "na", "oce", "ru", "tr"
  #masteryListData = "all", "image", "materyTree", "prereq", "ranks", "sanitizedDescription", "tree"
  requestURL <- paste("https://"
                      , getLocation(region)
                      , ".api.riotgames.com/lol/static-data/v3/masteries/"
                      , masteryID
                      , "?"
                      , ifelse(masterydata == "", "", paste("masteryData=", masterylistdata, "&", sep = ""))
                      , ifelse(version == "", "", paste("version=", version, "&", sep = ""))
                      , ifelse(locale == "", "", paste("locale=", locale, "&", sep = ""))
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
  requestURL <- paste("https://"
                      , getLocation(region)
                      , ".api.riotgames.com/lol/static-data/v3/runes?"
                      , ifelse(version == "", "", paste("version=", version, "&", sep = ""))
                      , ifelse(runelistdata == "", "", paste("runeListData=", runelistdata, "&", sep = ""))
                      , ifelse(locale == "", "", paste("locale=", locale, "&", sep = ""))
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
  requestURL <- paste("https://"
                      , getLocation(region)
                      , ".api.riotgames.com/lol/static-data/v3/runes/"
                      , runeID
                      , "?"
                      , ifelse(version == "", "", paste("version=", version, "&", sep = ""))
                      , ifelse(runedata == "", "", paste("runeData=", runelistdata, "&", sep = ""))
                      , ifelse(locale == "", "", paste("locale=", locale, "&", sep = ""))
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
  requestURL <- paste("https://"
                      , getLocation(region)
                      , ".api.riotgames.com/lol/static-data/v3/summoner-spells?"
                      , ifelse(version == "", "", paste("version=", version, "&", sep = ""))
                      , ifelse(spelldata == "", "", paste("spellListData=", spelldata, "&", sep = ""))
                      , ifelse(databyid == "", "", paste("dataById=", databyid, "&", sep = ""))
                      , ifelse(locale == "", "", paste("locale=", locale, "&", sep = ""))
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
  requestURL <- paste("https://"
                      , getLocation(region)
                      , ".api.riotgames.com/lol/static-data/v3/summoner-spells/"
                      , spellID
                      , "?"
                      , ifelse(version == "", "", paste("version=", version, "&", sep = ""))
                      , ifelse(spelldata == "", "", paste("spellData=", spelldata, "&", sep = ""))
                      , ifelse(locale == "", "", paste("locale=", locale, "&", sep = ""))
                      , "api_key="
                      , key
                      , sep = "")
  
  result <- fromJSON2(requestURL)
  
  return(result)
  
}

getProfileIcon <- function(locale = "", version = ""){
  
  #Regions = "br", "eune", "euw", "jp", "kr", "lan", "las", "na", "oce", "ru", "tr"
  #spellData = "all", "cooldown", "cooldownBurn", "cost", "costBurn", "costType", "effect", "effectBurn", "image", "key"
  #, "leveltip", "maxrank", "modes", "range", "rangeBurn", "sanitizedDescription", "sanitizedTooltip", "tooltip", "vars"
  requestURL <- paste("https://"
                      , getLocation(region)
                      , ".api.riotgames.com/lol/static-data/v3/profile-icons?"
                      , ifelse(version == "", "", paste("version=", version, "&", sep = ""))
                      , ifelse(locale == "", "", paste("locale=", locale, "&", sep = ""))
                      , "api_key="
                      , key
                      , sep = "")
  
  result <- fromJSON2(requestURL)
  
  return(result)
  
}