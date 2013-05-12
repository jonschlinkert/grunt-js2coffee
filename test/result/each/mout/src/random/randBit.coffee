define ["./random"], (random) ->
  
  ###
  Returns random bit (0 or 1)
  ###
  randomBit = ->
    (if random() > 0.5 then 1 else 0)
  randomBit
