define ->
  
  ###
  Safer Object.hasOwnProperty
  ###
  hasOwn = (obj, prop) ->
    Object::hasOwnProperty.call obj, prop
  hasOwn
