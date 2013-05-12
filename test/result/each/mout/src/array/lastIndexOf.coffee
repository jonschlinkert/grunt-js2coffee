define ->
  
  ###
  Array lastIndexOf
  ###
  lastIndexOf = (arr, item, fromIndex) ->
    return -1  unless arr?
    len = arr.length
    fromIndex = (if (not fromIndex? or fromIndex >= len) then len - 1 else fromIndex)
    fromIndex = (if (fromIndex < 0) then len + fromIndex else fromIndex)
    while fromIndex >= 0
      
      # we iterate over sparse items since there is no way to make it
      # work properly on IE 7-8. see #64
      return fromIndex  if arr[fromIndex] is item
      fromIndex--
    -1
  lastIndexOf
