define ["../lang/toString", "./lowerCase", "./upperCase"], (toString, lowerCase, upperCase) ->
  
  ###
  UPPERCASE first char of each word.
  ###
  properCase = (str) ->
    str = toString(str)
    lowerCase(str).replace /^\w|\s\w/g, upperCase
  properCase
