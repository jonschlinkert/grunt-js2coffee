define ["./append", "../function/makeIterator_"], (append, makeIterator) ->
  
  ###
  Maps the items in the array and concatenates the result arrays.
  ###
  collect = (arr, callback, thisObj) ->
    callback = makeIterator(callback, thisObj)
    results = []
    return results  unless arr?
    i = -1
    len = arr.length
    while ++i < len
      value = callback(arr[i], i, arr)
      append results, value  if value?
    results
  collect
