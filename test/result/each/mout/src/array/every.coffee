define ["../function/makeIterator_"], (makeIterator) ->
  
  ###
  Array every
  ###
  every = (arr, callback, thisObj) ->
    callback = makeIterator(callback, thisObj)
    result = true
    return result  unless arr?
    i = -1
    len = arr.length
    while ++i < len
      
      # we iterate over sparse items since there is no way to make it
      # work properly on IE 7-8. see #64
      unless callback(arr[i], i, arr)
        result = false
        break
    result
  every
