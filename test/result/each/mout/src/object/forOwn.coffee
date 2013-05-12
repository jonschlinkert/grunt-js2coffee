define ["./hasOwn", "./forIn"], (hasOwn, forIn) ->
  
  ###
  Similar to Array/forEach but works over object properties and fixes Don't
  Enum bug on IE.
  based on: http://whattheheadsaid.com/2010/10/a-safer-object-keys-compatibility-implementation
  ###
  forOwn = (obj, fn, thisObj) ->
    forIn obj, (val, key) ->
      fn.call thisObj, obj[key], key, obj  if hasOwn(obj, key)

  forOwn
