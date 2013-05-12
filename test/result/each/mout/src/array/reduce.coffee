define ["./forEach"], (forEach) ->
  
  ###
  Array reduce
  ###
  reduce = (arr, fn, initVal) ->
    
    # check for args.length since initVal might be "undefined" see #gh-57
    hasInit = arguments.length > 2
    result = initVal
    if not arr? or not arr.length
      unless hasInit
        throw new Error("reduce of empty array with no initial value")
      else
        return initVal
    i = -1
    len = arr.length
    while ++i < len
      unless hasInit
        result = arr[i]
        hasInit = true
      else
        result = fn(result, arr[i], i, arr)
    result
  reduce
