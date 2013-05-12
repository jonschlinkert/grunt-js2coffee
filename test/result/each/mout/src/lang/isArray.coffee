define ["./isKind"], (isKind) ->
  
  ###
  ###
  isArray = Array.isArray or (val) ->
    isKind val, "Array"

  isArray
