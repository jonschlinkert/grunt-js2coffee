define ["../number/MIN_INT", "../number/MAX_INT", "./rand"], (MIN_INT, MAX_INT, rand) ->
  
  ###
  Gets random integer inside range or snap to min/max values.
  ###
  randInt = (min, max) ->
    min = (if not min? then MIN_INT else ~~min)
    max = (if not max? then MAX_INT else ~~max)
    
    # can't be max + 0.5 otherwise it will round up if `rand`
    # returns `max` causing it to overflow range.
    # -0.5 and + 0.49 are required to avoid bias caused by rounding
    Math.round rand(min - 0.5, max + 0.499999999999)
  randInt
