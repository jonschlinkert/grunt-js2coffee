define ["./unique", "./filter", "./every", "./contains"], (unique, filter, every, contains) ->
  
  ###
  Return a new Array with elements common to all Arrays.
  - based on underscore.js implementation
  ###
  intersection = (arr) ->
    arrs = Array::slice.call(arguments, 1)
    result = filter(unique(arr), (needle) ->
      every arrs, (haystack) ->
        contains haystack, needle

    )
    result
  intersection
