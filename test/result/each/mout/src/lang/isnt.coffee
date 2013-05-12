define ["./is"], (is_) ->
  
  ###
  Check if both values are not identical/egal
  ###
  isnt = (x, y) ->
    not is_(x, y)
  isnt_
