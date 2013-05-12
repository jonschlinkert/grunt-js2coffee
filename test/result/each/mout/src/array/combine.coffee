define ["./indexOf"], (indexOf) ->
  
  ###
  Combines an array with all the items of another.
  Does not allow duplicates and is case and type sensitive.
  ###
  combine = (arr1, arr2) ->
    return arr1  unless arr2?
    i = -1
    len = arr2.length
    arr1.push arr2[i]  if indexOf(arr1, arr2[i]) is -1  while ++i < len
    arr1
  combine
