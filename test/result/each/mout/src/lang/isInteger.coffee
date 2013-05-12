define ["./isNumber"], (isNumber) ->
  
  ###
  Check if value is an integer
  ###
  isInteger = (val) ->
    isNumber(val) and (val % 1 is 0)
  isInteger
