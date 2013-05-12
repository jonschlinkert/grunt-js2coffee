define ["./unique", "./filter", "./some", "./contains"], (unique, filter, some, contains) ->
  
  ###
  Return a new Array with elements that aren't present in the other Arrays.
  ###
  difference = (arr) ->
    arrs = Array::slice.call(arguments, 1)
    result = filter(unique(arr), (needle) ->
      not some(arrs, (haystack) ->
        contains haystack, needle
      )
    )
    result
  difference
