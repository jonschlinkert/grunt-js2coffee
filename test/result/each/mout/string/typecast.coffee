
###
Parses string and convert it into a native value.
###
typecast = (val) ->
  r = undefined
  if val is null or val is "null"
    r = null
  else if val is "true"
    r = true
  else if val is "false"
    r = false
  else if val is UNDEF or val is "undefined"
    r = UNDEF
  else if val is "" or isNaN(val)
    
    #isNaN('') returns false
    r = val
  else
    
    #parseFloat(null || '') returns NaN
    r = parseFloat(val)
  r
UNDEF = undefined
module.exports = typecast