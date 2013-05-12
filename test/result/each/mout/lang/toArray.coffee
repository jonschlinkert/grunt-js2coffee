
###
Convert array-like object into array
###
toArray = (val) ->
  ret = []
  kind = kindOf(val)
  n = undefined
  if val?
    if not val.length? or kind is "String" or kind is "Function" or kind is "RegExp" or val is _win
      
      #string, regexp, function have .length but user probably just want
      #to wrap value into an array..
      ret[ret.length] = val
    else
      
      #window returns true on isObject in IE7 and may have length
      #property. `typeof NodeList` returns `function` on Safari so
      #we can't use it (#58)
      n = val.length
      ret[n] = val[n]  while n--
  ret
kindOf = require("./kindOf")
_win = this
module.exports = toArray