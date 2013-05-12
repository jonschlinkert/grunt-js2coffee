define ["../lang/toString", "./truncate"], (toString, truncate) ->
  
  ###
  Truncate string at full words.
  ###
  crop = (str, maxChars, append) ->
    str = toString(str)
    truncate str, maxChars, append, true
  crop
