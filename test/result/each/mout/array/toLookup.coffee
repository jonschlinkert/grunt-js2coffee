
###
Creates an object that holds a lookup for the objects in the array.
###
toLookup = (arr, key) ->
  result = {}
  return result  unless arr?
  i = -1
  len = arr.length
  value = undefined
  if isFunction(key)
    while ++i < len
      value = arr[i]
      result[key(value)] = value
  else
    while ++i < len
      value = arr[i]
      result[value[key]] = value
  result
isFunction = require("../lang/isFunction")
module.exports = toLookup