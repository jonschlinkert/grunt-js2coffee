define ["./get"], (get) ->
  
  ###
  Check if object has nested property.
  ###
  has = (obj, prop) ->
    get(obj, prop) isnt UNDEF
  UNDEF = undefined
  has
