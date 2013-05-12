define ["../lang/isArray"], (isArray) ->
  
  #
  #     * Helper function to flatten to a destination array.
  #     * Used to remove the need to create intermediate arrays while flattening.
  #     
  flattenTo = (arr, result, level) ->
    unless arr?
      return result
    else if level is 0
      result.push.apply result, arr
      return result
    value = undefined
    i = -1
    len = arr.length
    while ++i < len
      value = arr[i]
      if isArray(value)
        flattenTo value, result, level - 1
      else
        result.push value
    result
  
  ###
  Recursively flattens an array.
  A new array containing all the elements is returned.
  If `shallow` is true, it will only flatten one level.
  ###
  flatten = (arr, shallow) ->
    flattenTo arr, [], (if shallow then 1 else -1)
  flatten
