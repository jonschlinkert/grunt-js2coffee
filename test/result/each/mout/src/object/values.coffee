define ["./forOwn"], (forOwn) ->
  
  ###
  Get object values
  ###
  values = (obj) ->
    vals = []
    forOwn obj, (val, key) ->
      vals.push val

    vals
  values
