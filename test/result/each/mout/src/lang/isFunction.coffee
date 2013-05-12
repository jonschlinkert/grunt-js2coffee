define ["./isKind"], (isKind) ->
  
  ###
  ###
  isFunction = (val) ->
    isKind val, "Function"
  isFunction
