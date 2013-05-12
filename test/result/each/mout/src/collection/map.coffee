define ["../lang/isObject", "../object/values", "../array/map", "../function/makeIterator_"], (isObject, values, arrMap, makeIterator) ->
  
  ###
  Map collection values, returns Array.
  ###
  map = (list, callback, thisObj) ->
    callback = makeIterator(callback, thisObj)
    
    # list.length to check array-like object, if not array-like
    # we simply map all the object values
    list = values(list)  if isObject(list) and not list.length?
    arrMap list, (val, key, list) ->
      callback val, key, list

  map
