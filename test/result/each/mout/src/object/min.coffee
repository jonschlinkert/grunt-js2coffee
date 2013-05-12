define ["../array/min", "./values"], (arrMin, values) ->
  
  ###
  Returns minimum value inside object.
  ###
  min = (obj, iterator) ->
    arrMin values(obj), iterator
  min
