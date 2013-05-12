define ["./random", "../number/MIN_INT", "../number/MAX_INT"], (random, MIN_INT, MAX_INT) ->
  
  ###
  Returns random number inside range
  ###
  rand = (min, max) ->
    min = (if not min? then MIN_INT else min)
    max = (if not max? then MAX_INT else max)
    min + (max - min) * random()
  rand
