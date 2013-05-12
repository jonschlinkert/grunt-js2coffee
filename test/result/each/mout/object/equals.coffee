defaultCompare = (a, b) ->
  a is b

# Makes a function to compare the object values from the specified compare
# operation callback.
makeCompare = (callback) ->
  (value, key) ->
    hasOwn(this, key) and callback(value, this[key])
checkProperties = (value, key) ->
  hasOwn this, key

###
Checks if two objects have the same keys and values.
###
equals = (a, b, callback) ->
  callback = callback or defaultCompare
  return callback(a, b)  if not isObject(a) or not isObject(b)
  every(a, makeCompare(callback), b) and every(b, checkProperties, a)
hasOwn = require("./hasOwn")
every = require("./every")
isObject = require("../lang/isObject")
module.exports = equals