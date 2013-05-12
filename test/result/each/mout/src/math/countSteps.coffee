define ->
  
  ###
  Count number of full steps.
  ###
  countSteps = (val, step, overflow) ->
    val = Math.floor(val / step)
    return val % overflow  if overflow
    val
  countSteps
