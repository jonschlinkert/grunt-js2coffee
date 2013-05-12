define ->
  
  ###
  Loops value inside range.
  ###
  loop = (val, min, max) ->
    (if val < min then max else ((if val > max then min else val)))
  loop_
