define ->
  
  ###
  Appends an array to the end of another.
  The first array will be modified.
  ###
  append = (arr1, arr2) ->
    return arr1  unless arr2?
    pad = arr1.length
    i = -1
    len = arr2.length
    arr1[pad + i] = arr2[i]  while ++i < len
    arr1
  append
