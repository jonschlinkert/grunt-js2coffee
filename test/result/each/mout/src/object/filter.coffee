define ["./forOwn", "../function/makeIterator_"], (forOwn, makeIterator) ->
  
  ###
  Creates a new object with all the properties where the callback returns
  true.
  ###
  filterValues = (obj, callback, thisObj) ->
    callback = makeIterator(callback, thisObj)
    output = {}
    forOwn obj, (value, key, obj) ->
      output[key] = value  if callback(value, key, obj)

    output
  filterValues
