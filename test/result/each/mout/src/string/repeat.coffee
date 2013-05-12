define ["../lang/toString"], (toString) ->
  
  ###
  Repeat string n times
  ###
  repeat = (str, n) ->
    str = toString(str)
    (new Array(n + 1)).join str
  repeat
