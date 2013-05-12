define ["./some", "../function/makeIterator_"], (some, makeIterator) ->
  
  ###
  Returns first item that matches criteria
  ###
  find = (obj, callback, thisObj) ->
    callback = makeIterator(callback, thisObj)
    result = undefined
    some obj, (value, key, obj) ->
      if callback(value, key, obj)
        result = value
        true #break

    result
  find
