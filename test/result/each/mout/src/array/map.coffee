define ["./forEach", "../function/makeIterator_"], (forEach, makeIterator) ->
  
  ###
  Array map
  ###
  map = (arr, callback, thisObj) ->
    callback = makeIterator(callback, thisObj)
    results = []
    return results  unless arr?
    i = -1
    len = arr.length
    results[i] = callback(arr[i], i, arr)  while ++i < len
    results
  map
