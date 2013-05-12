define ["./filter", "../function/makeIterator_"], (filter, makeIterator) ->
  
  ###
  Object reject
  ###
  reject = (obj, callback, thisObj) ->
    callback = makeIterator(callback, thisObj)
    filter obj, ((value, index, obj) ->
      not callback(value, index, obj)
    ), thisObj
  reject
