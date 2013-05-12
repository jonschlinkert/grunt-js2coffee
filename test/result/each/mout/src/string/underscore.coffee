define ["../lang/toString", "./slugify", "./unCamelCase"], (toString, slugify, unCamelCase) ->
  
  ###
  Replaces spaces with underscores, split camelCase text, remove non-word chars, remove accents and convert to lower case.
  ###
  underscore = (str) ->
    str = toString(str)
    str = unCamelCase(str)
    slugify str, "_"
  underscore
