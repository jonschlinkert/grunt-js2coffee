define ["./isKind"], (isKind) ->
  
  ###
  ###
  isObject = (val) ->
    isKind val, "Object"
  isObject
