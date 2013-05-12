define ["./forEach"], (forEach) ->
  
  ###
  Call `methodName` on each item of the array passing custom arguments if
  needed.
  ###
  invoke = (arr, methodName, var_args) ->
    return arr  unless arr?
    args = Array::slice.call(arguments, 2)
    i = -1
    len = arr.length
    value = undefined
    while ++i < len
      value = arr[i]
      value[methodName].apply value, args
    arr
  invoke
