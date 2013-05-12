define ["./hasOwn", "../lang/deepClone", "../lang/isObject"], (hasOwn, deepClone, isObject) ->
  
  ###
  Deep merge objects.
  ###
  merge = ->
    i = 1
    key = undefined
    val = undefined
    obj = undefined
    target = undefined
    
    # make sure we don't modify source element and it's properties
    # objects are passed by reference
    target = deepClone(arguments[0])
    while obj = arguments[i++]
      for key of obj
        continue  unless hasOwn(obj, key)
        val = obj[key]
        if isObject(val) and isObject(target[key])
          
          # inception, deep merge objects
          target[key] = merge(target[key], val)
        else
          
          # make sure arrays, regexp, date, objects are cloned
          target[key] = deepClone(val)
    target
  merge
