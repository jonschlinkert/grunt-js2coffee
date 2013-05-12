define ["./isKind"], (isKind) ->
  
  ###
  ###
  isString = (val) ->
    isKind val, "String"
  isString
