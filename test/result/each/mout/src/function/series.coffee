define ->
  
  ###
  Returns a function that will execute a list of functions in sequence
  passing the same arguments to each one. (useful for batch processing
  items during a forEach loop)
  ###
  series = ->
    fns = arguments_
    ->
      i = 0
      n = fns.length
      while i < n
        fns[i].apply this, arguments_
        i += 1
  series
