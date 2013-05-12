define ["../lang/toString"], (toString) ->
  
  ###
  Checks if string starts with specified prefix.
  ###
  startsWith = (str, prefix) ->
    str = toString(str)
    prefix = toString(prefix)
    str.indexOf(prefix) is 0
  startsWith
