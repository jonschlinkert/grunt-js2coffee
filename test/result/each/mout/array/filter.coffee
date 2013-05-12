
###
Array filter
###
filter = (arr, callback, thisObj) ->
  callback = makeIterator(callback, thisObj)
  results = []
  return results  unless arr?
  i = -1
  len = arr.length
  value = undefined
  while ++i < len
    value = arr[i]
    results.push value  if callback(value, i, arr)
  results
forEach = require("./forEach")
makeIterator = require("../function/makeIterator_")
module.exports = filter