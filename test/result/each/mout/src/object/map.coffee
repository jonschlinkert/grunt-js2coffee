define ["./forOwn", "../function/makeIterator_"], (forOwn, makeIterator) ->
  
  ###
  Creates a new object where all the values are the result of calling
  `callback`.
  ###
  mapValues = (obj, callback, thisObj) ->
    callback = makeIterator(callback, thisObj)
    output = {}
    forOwn obj, (val, key, obj) ->
      output[key] = callback(val, key, obj)

    output
  mapValues
