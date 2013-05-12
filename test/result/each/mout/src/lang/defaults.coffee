define ["./toArray", "../array/find"], (toArray, find) ->
  
  ###
  Return first non void argument
  ###
  defaults = (var_args) ->
    find toArray(arguments_), nonVoid
  nonVoid = (val) ->
    val?
  defaults
