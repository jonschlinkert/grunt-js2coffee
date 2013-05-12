define ["./forEach", "../function/makeIterator_"], (forEach, makeIterator) ->
  
  ###
  filter collection values, returns array.
  ###
  filter = (list, iterator, thisObj) ->
    iterator = makeIterator(iterator, thisObj)
    results = []
    return results  unless list
    forEach list, (value, index, list) ->
      results[results.length] = value  if iterator(value, index, list)

    results
  filter
