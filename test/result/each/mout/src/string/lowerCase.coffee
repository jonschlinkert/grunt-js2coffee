define ["../lang/toString"], (toString) ->
  
  ###
  "Safer" String.toLowerCase()
  ###
  lowerCase = (str) ->
    str = toString(str)
    str.toLowerCase()
  lowerCase
