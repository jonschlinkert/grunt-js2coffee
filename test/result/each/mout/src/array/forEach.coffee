define ->
  
  ###
  Array forEach
  ###
  forEach = (arr, callback, thisObj) ->
    return  unless arr?
    i = -1
    len = arr.length
    
    # we iterate over sparse items since there is no way to make it
    # work properly on IE 7-8. see #64
    break  if callback.call(thisObj, arr[i], i, arr) is false  while ++i < len
  forEach
