define ["./isKind"], (isKind) ->
  
  ###
  ###
  isNumber = (val) ->
    isKind val, "Number"
  isNumber
