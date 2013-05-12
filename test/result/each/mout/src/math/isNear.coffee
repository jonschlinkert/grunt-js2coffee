define ->
  
  ###
  Check if value is close to target.
  ###
  isNear = (val, target, threshold) ->
    Math.abs(val - target) <= threshold
  isNear
