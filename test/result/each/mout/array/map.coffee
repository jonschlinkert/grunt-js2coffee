
###
Array map
###
map = (arr, callback, thisObj) ->
  callback = makeIterator(callback, thisObj)
  results = []
  return results  unless arr?
  i = -1
  len = arr.length
  results[i] = callback(arr[i], i, arr)  while ++i < len
  results
forEach = require("./forEach")
makeIterator = require("../function/makeIterator_")
module.exports = map