define ["./forOwn", "../lang/isPlainObject"], (forOwn, isPlainObject) ->
  
  ###
  Mixes objects into the target object, recursively mixing existing child
  objects.
  ###
  deepMixIn = (target, objects) ->
    i = 0
    n = arguments.length
    obj = undefined
    while ++i < n
      obj = arguments[i]
      forOwn obj, copyProp, target  if obj
    target
  copyProp = (val, key) ->
    existing = this[key]
    if isPlainObject(val) and isPlainObject(existing)
      deepMixIn existing, val
    else
      this[key] = val
  deepMixIn
