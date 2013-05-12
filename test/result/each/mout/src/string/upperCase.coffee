define ["../lang/toString"], (toString) ->
  
  ###
  "Safer" String.toUpperCase()
  ###
  upperCase = (str) ->
    str = toString(str)
    str.toUpperCase()
  upperCase
