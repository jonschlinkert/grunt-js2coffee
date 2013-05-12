define ["../lang/toString", "./camelCase", "./upperCase"], (toString, camelCase, upperCase) ->
  
  ###
  camelCase + UPPERCASE first char
  ###
  pascalCase = (str) ->
    str = toString(str)
    camelCase(str).replace /^[a-z]/, upperCase
  pascalCase
