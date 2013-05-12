define ["./getQuery"], (getQuery) ->
  
  ###
  Checks if query string contains parameter.
  ###
  contains = (url, paramName) ->
    regex = new RegExp("(\\?|&)" + paramName + "=", "g") #matches `?param=` or `&param=`
    regex.test getQuery(url)
  contains
