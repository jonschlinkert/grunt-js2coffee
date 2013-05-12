define ["./isKind"], (isKind) ->
  
  ###
  ###
  isBoolean = (val) ->
    isKind val, "Boolean"
  isBoolean
