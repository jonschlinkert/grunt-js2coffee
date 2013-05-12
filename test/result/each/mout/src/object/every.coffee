define ["./forOwn", "../function/makeIterator_"], (forOwn, makeIterator) ->
  
  ###
  Object every
  ###
  every = (obj, callback, thisObj) ->
    callback = makeIterator(callback, thisObj)
    result = true
    forOwn obj, (val, key) ->
      
      # we consider any falsy values as "false" on purpose so shorthand
      # syntax can be used to check property existence
      unless callback(val, key, obj)
        result = false
        false # break

    result
  every
