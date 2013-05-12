define ["./isKind"], (isKind) ->
  
  ###
  ###
  isDate = (val) ->
    isKind val, "Date"
  isDate
