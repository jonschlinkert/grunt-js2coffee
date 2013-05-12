define ["../string/typecast", "./getQuery"], (typecast, getQuery) ->
  
  ###
  Get query parameter value.
  ###
  getParam = (url, param, shouldTypecast) ->
    regexp = new RegExp("(\\?|&)" + param + "=([^&]*)") #matches `?param=value` or `&param=value`, value = $2
    result = regexp.exec(getQuery(url))
    val = (if (result and result[2]) then result[2] else null)
    (if shouldTypecast is false then val else typecast(val))
  getParam
