define ->
  
  ###
  Linear interpolation.
  IMPORTANT:will return `Infinity` if numbers overflow Number.MAX_VALUE
  ###
  lerp = (ratio, start, end) ->
    start + (end - start) * ratio
  lerp
