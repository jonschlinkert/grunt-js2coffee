defaultCompare = (a, b) ->
  a is b

###
Recursively checks for same properties and values.
###
deepEquals = (a, b, callback) ->
  compare = (a, b) ->
    deepEquals a, b, callback
  callback = callback or defaultCompare
  return callback(a, b)  if not isObject(a) or not isObject(b)
  equals a, b, compare
isObject = require("../lang/isObject")
equals = require("./equals")
module.exports = deepEquals