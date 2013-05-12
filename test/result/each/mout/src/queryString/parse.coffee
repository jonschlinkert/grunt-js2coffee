define ["./decode", "./getQuery"], (decode, getQuery) ->
  
  ###
  Get query string, parses and decodes it.
  ###
  parse = (url, shouldTypecast) ->
    decode getQuery(url), shouldTypecast
  parse
