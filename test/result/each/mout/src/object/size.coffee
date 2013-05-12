define ["./forOwn"], (forOwn) ->
  
  ###
  Get object size
  ###
  size = (obj) ->
    count = 0
    forOwn obj, ->
      count++

    count
  size
