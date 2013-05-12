define ->
  
  ###
  Checks if the value is created by the `Object` constructor.
  ###
  isPlainObject = (value) ->
    !!value and typeof value is "object" and value.constructor is Object
  isPlainObject
