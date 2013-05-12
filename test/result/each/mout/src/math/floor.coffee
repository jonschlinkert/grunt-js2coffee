define ->
  
  ###
  Floor value to full steps.
  ###
  floor = (val, step) ->
    step = Math.abs(step or 1)
    Math.floor(val / step) * step
  floor
