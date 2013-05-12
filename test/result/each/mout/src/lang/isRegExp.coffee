define ["./isKind"], (isKind) ->
  
  ###
  ###
  isRegExp = (val) ->
    isKind val, "RegExp"
  isRegExp
