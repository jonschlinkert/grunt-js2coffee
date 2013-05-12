define ["./filter", "../function/makeIterator_"], (filter, makeIterator) ->
  
  ###
  Inverse or collection/filter
  ###
  reject = (list, iterator, thisObj) ->
    iterator = makeIterator(iterator, thisObj)
    filter list, ((value, index, list) ->
      not iterator(value, index, list)
    ), thisObj
  reject
