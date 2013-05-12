define ["../random/randInt", "./forEach"], (randInt, forEach) ->
  
  ###
  Shuffle array items.
  ###
  shuffle = (arr) ->
    results = []
    rnd = undefined
    return results  unless arr?
    i = -1
    len = arr.length
    value = undefined
    while ++i < len
      unless i
        results[0] = arr[0]
      else
        rnd = randInt(0, i)
        results[i] = results[rnd]
        results[rnd] = arr[i]
    results
  shuffle
