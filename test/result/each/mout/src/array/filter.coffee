define ["./forEach", "../function/makeIterator_"], (forEach, makeIterator) ->
  
  ###
  Array filter
  ###
  filter = (arr, callback, thisObj) ->
    callback = makeIterator(callback, thisObj)
    results = []
    return results  unless arr?
    i = -1
    len = arr.length
    value = undefined
    while ++i < len
      value = arr[i]
      results.push value  if callback(value, i, arr)
    results
  filter
