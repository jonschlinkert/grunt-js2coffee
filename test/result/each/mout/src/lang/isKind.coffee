define ["./kindOf"], (kindOf) ->
  
  ###
  Check if value is from a specific "kind".
  ###
  isKind = (val, kind) ->
    kindOf(val) is kind
  isKind
