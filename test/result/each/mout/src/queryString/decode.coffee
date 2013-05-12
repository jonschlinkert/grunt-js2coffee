define ["../string/typecast", "../lang/isString"], (typecast, isString) ->
  
  ###
  Decode query string into an object of keys => vals.
  ###
  decode = (queryStr, shouldTypecast) ->
    queryArr = (queryStr or "").replace("?", "").split("&")
    n = queryArr.length
    obj = {}
    item = undefined
    val = undefined
    while n--
      item = queryArr[n].split("=")
      val = (if shouldTypecast is false then item[1] else typecast(item[1]))
      obj[item[0]] = (if isString(val) then decodeURIComponent(val) else val)
    obj
  decode
