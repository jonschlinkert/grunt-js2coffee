define ->
  
  ###
  Get sign of the value.
  ###
  sign = (val) ->
    num = Number(val)
    return num  if num is 0 # +0 and +0 === 0
    return num  if isNaN(num) # NaN
    (if num < 0 then -1 else 1)
  sign
