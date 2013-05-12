define ->
  
  ###
  Array reduceRight
  ###
  reduceRight = (arr, fn, initVal) ->
    
    # check for args.length since initVal might be "undefined" see #gh-57
    hasInit = arguments.length > 2
    if not arr? or not arr.length
      if hasInit
        return initVal
      else
        throw new Error("reduce of empty array with no initial value")
    i = arr.length
    result = initVal
    value = undefined
    while --i >= 0
      
      # we iterate over sparse items since there is no way to make it
      # work properly on IE 7-8. see #64
      value = arr[i]
      unless hasInit
        result = value
        hasInit = true
      else
        result = fn(result, value, i, arr)
    result
  reduceRight
