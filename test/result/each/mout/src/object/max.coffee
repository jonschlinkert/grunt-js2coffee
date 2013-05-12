define ["../array/max", "./values"], (arrMax, values) ->
  
  ###
  Returns maximum value inside object.
  ###
  max = (obj, compareFn) ->
    arrMax values(obj), compareFn
  max
