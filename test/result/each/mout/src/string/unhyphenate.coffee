define ["../lang/toString"], (toString) ->
  
  ###
  Replaces hyphens with spaces. (only hyphens between word chars)
  ###
  unhyphenate = (str) ->
    str = toString(str)
    str.replace /(\w)(-)(\w)/g, "$1 $3"
  unhyphenate
