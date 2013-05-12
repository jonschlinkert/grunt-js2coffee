containsMatch = (array, pattern) ->
  i = -1
  length = array.length
  return true  if deepMatches(array[i], pattern)  while ++i < length
  false
matchArray = (target, pattern) ->
  i = -1
  patternLength = pattern.length
  return false  unless containsMatch(target, pattern[i])  while ++i < patternLength
  true
matchObject = (target, pattern) ->
  result = true
  forOwn pattern, (val, key) ->
    
    # Return false to break out of forOwn early
    result = false  unless deepMatches(target[key], val)

  result

###
Recursively check if the objects match.
###
deepMatches = (target, pattern) ->
  if target and typeof target is "object"
    if isArray(target) and isArray(pattern)
      matchArray target, pattern
    else
      matchObject target, pattern
  else
    target is pattern
forOwn = require("./forOwn")
isArray = require("../lang/isArray")
module.exports = deepMatches