define ["./some"], (some) ->
  
  ###
  Check if object contains value
  ###
  contains = (obj, needle) ->
    some obj, (val) ->
      val is needle

  contains
