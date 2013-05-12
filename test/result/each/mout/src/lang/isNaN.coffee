define ["./isNumber"], (isNumber) ->
  
  ###
  Check if value is NaN for realz
  ###
  isNaN = (val) ->
    
    # based on the fact that NaN !== NaN
    # need to check if it's a number to avoid conflicts with host objects
    # also need to coerce ToNumber to avoid edge case `new Number(NaN)`
    not isNumber(val) or val isnt +val
  isNaN
